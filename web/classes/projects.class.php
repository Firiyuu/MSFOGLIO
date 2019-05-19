<?php 

	class Projects extends Database {

		function __construct()
		{
			// parent::__construct($host, $user, $password, $db);
			// parent::__construct('localhost','root','mysql','thesis'); // This is my database local password.
			$password = 'password';
		    parent::__construct('127.0.0.1','root', '','thesis');
		}	

		function getProjects()
		{
			$sql = "SELECT * FROM projects";

			// We are now able to access this method because we extended the "Database" class.
			$result = $this->getSQLResult($sql);

			return $result;			
		}

		function getSpecificProject($id)
		{
			$sql1 = "SELECT COUNT(id) FROM projects WHERE id='$id';";
			$result1 = $this->getSingleSQLStatement($sql1);
			
			$errors = [];
			
			if (in_array(0, $result1)) {
				array_push($errors, 'id does not exist on projects table');
			} 

			if ($id == '') {
				array_push($errors, 'The `id` field must not be empty.');
			}
			
			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "SELECT * FROM projects WHERE id = '$id'";

				// We are now able to access this method because we extended the "Database" class.
				$result = $this->getSingleSQLStatement($sql);

				return $result;	
			}		
		}		

		function addProject($project_name, $project_location, $date_added, $date_start, $duration, $date_end)
		{	
			date_default_timezone_set("Asia/Manila");
			$date1 = new DateTime($date_start);
			$date2 = new DateTime($date_end);

			$interval = $date1->diff($date2);

			$duration = $interval->format("%r%a");
			
			$errors = [];

			if ($project_name == '') {
				array_push($errors, 'The `name` field must not be empty.');
			}

			if ($project_location == '') {
				array_push($errors, 'The `location` field must not be empty.');
			}

			if ($duration < 0) {
				array_push($errors, 'The `Date end` must be ahead of `Date start`');
			}

			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "
					INSERT INTO projects (project_name, project_location, date_added, date_start, duration, date_end) 
					VALUES
					  ('$project_name', '$project_location', now(), '$date_start', '$duration', '$date_end')
				";
			
				$this->executeSQL($sql);

				return 'Project successfully added.';
			}
		}
		

		function deleteProject($id)
		{
			$sql1 = "SELECT COUNT(id) FROM projects WHERE id='$id';";
			$result1 = $this->getSingleSQLStatement($sql1);

			$sql2 = "SELECT COUNT(id) FROM gantt_chart WHERE project_id='$id';";
			$result2 = $this->getSingleSQLStatement($sql2);

			$sql3 = "SELECT COUNT(id) FROM cashflow WHERE project_id='$id';";
			$result3 = $this->getSingleSQLStatement($sql3);

			$errors = [];

			if (in_array(0, $result1)) {
				array_push($errors, 'id does not exist on projects table');
			} 

			if (in_array(!0, $result2)) {
				array_push($errors, 'Cannot Delete: Project has an activity');
			}

			if (in_array(!0, $result3)) {
				array_push($errors, 'Cannot Delete: Project has Cashflow');
			} 
			
			if ($id == '') {
				array_push($errors, 'The `id` field must not be empty.');
			}
			
			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "DELETE FROM `projects` WHERE `id` = '$id'";

				// We are now able to access this method because we extended the "Database" class.
				$this->executeSQL($sql);

				return 'Project successfully deleted.';
			}	
		}
		

		function updateProject($id, $project_name,  $project_location, $date_added, $date_start, $duration, $date_end)
		{	

			date_default_timezone_set("Asia/Manila");
			$date1 = new DateTime($date_start);
			$date2 = new DateTime($date_end);

			$interval = $date1->diff($date2);
		
			$duration = $interval->format("%r%a");

			$errors = [];

			if ($id == '') {
				array_push($errors, 'The `id` field must not be empty.');
			}
	
			if ($project_name == '') {
				array_push($errors, 'The `name` field must not be empty.');
			}

			if ($project_location == '') {
				array_push($errors, 'The `location` field must not be empty.');
			}

			if ($duration == '') {
				array_push($errors, 'The `duration` field must not be empty.');
			}

			if ($duration < 0) {
				array_push($errors, 'The `Date end` be must ahead of `Date start`');
			}


			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "UPDATE projects SET project_name='$project_name', project_location='$project_location', date_added=now(), date_start='$date_start', duration='$duration', date_end='$date_end' WHERE id='$id'";

				// We are now able to access this method because we extended the "Database" class.
				$this->executeSQL($sql);

				return 'Project successfully edited.';	
			}
		}
		function do_login($username, $password)
		{	
			$errors = [];

			if ($username == '') {
				array_push($errors, 'The `username` field must not be empty.');
			}
	
			if ($password == '') {
				array_push($errors, 'The `password` field must not be empty.');
			}
			$mdPass = md5($password);
			$sql = "SELECT COUNT(id) as total FROM user WHERE username='$username' AND password='$mdPass'";
			$result = $this->getSQLResult($sql);
			// echo '<pre>';
			// print_r($result);exit;
			if($result[0]['total']<=0){
				array_push($errors, 'Invalid Login Credentials.');
			}
			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				return 'Login successful.';	
			}
		}

        function do_register($username, $name, $password, $confirm_password, $email, $mobile, $age)
        {
            $errors = [];

            if ($username == '') {
                array_push($errors, 'The `username` field must not be empty.');
            }

            if ($password == '') {
                array_push($errors, 'The `password` field must not be empty.');
            }

            if (strcmp($password, $confirm_password) <> 0) {
                array_push($errors, 'The `confirm_password` field must be equal `password`.');
            }
            $mdPass = md5($password);
            $sql = "SELECT COUNT(id) as total FROM user WHERE username='$username'";/* AND password='$mdPass'*/
            $result = $this->getSQLResult($sql);
            // echo '<pre>';
            // print_r($result);exit;
            if($result[0]['total'] > 0){
                array_push($errors, 'You already joined.');
            }
            if (!empty($errors)) {
                return ['errors' => $errors];
            } else {
                $sql3 = "INSERT INTO user (username, name, password, email, age, mobileNum) VALUES ('$username', '$name', '$mdPass', '$email', '$age', '$mobile');";
                $this->executeSQL($sql3);
                return 'Register successful.';
            }
        }
	}
?>