<?php 

	class Equipment extends Database {

		function __construct()
		{
			// parent::__construct($host, $user, $password, $db);
			// parent::__construct('127.0.0.1','root','mysql','thesis'); // This is my database local password.
			parent::__construct('127.0.0.1','root','','thesis');
		}	

		function getResources($category)
		{
			if ($category == "") {
				$sql = "SELECT * FROM equipment";
			} else {
				$sql = "SELECT * FROM equipment WHERE category = '$category'";
			}
				// We are now able to access this method because we extended the "Database" class.
				$result = $this->getSQLResult($sql);

				return $result;			
		}


				function getResources1($category)
		{
			if ($category == "") {
				$sql = "SELECT * FROM equipment";
			} else {
				$sql = "SELECT * FROM equipment WHERE category = '$category'";
			}
				// We are now able to access this method because we extended the "Database" class.
				$result = $this->getSQLResult($sql);

				return $result;			
		}
		function get_equpement()
		{
			
				$sql = "SELECT * FROM equipment";
			
				// We are now able to access this method because we extended the "Database" class.
				$result = $this->getSQLResult($sql);

				return $result;			
		}	

		function getSpecificResource($id)
		{
			$sql1 = "SELECT COUNT(id) FROM equipment WHERE id='$id';";
			$result1 = $this->getSingleSQLStatement($sql1);
			
			$errors = [];
			
			if (in_array(0, $result1)) {
				array_push($errors, 'id does not exist on equipment table');
			} 

			if ($id == '') {
				array_push($errors, 'The `id` field must not be empty.');
			}
			
			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "SELECT * FROM equipment WHERE id = '$id'";

				// We are now able to access this method because we extended the "Database" class.
				$result = $this->getSingleSQLStatement($sql);

				return $result;	
			}		
		}		

		function addResource($name, $category)
		{

			if (!in_array($category, ['M', 'E', 'others'])) {
				array_push($errors, 'The Category must either be `E` or `M`.');
			}

			if ($name == '') {
				array_push($errors, 'The `name` field must not be empty.');
			}

			if (!empty($errors)) {
				return ['errors' => $errors];
			} 

			if (in_array($category, ['M', 'E'])) {
				$sql = "
					INSERT INTO `equipment` (`name`, `category`) 
					VALUES
					  ('$name', '$category') ;
				";

				$this->executeSQL($sql);

				return 'Resource successfully added.';
			} 
		}
		

		function deleteResource($id)
		{
			$sql1 = "SELECT COUNT(id) FROM equipment WHERE id='$id';";
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
				$sql = "DELETE FROM equipment WHERE id = '$id'";

				// We are now able to access this method because we extended the "Database" class.
				$this->executeSQL($sql);

				return 'Resource successfully deleted.';
			}	
		}
		

		function updateResource($id, $name, $category)
		{
			$errors = [];

			if (!in_array($category, ['M', 'E'])) {
				array_push($errors, 'The Category must either be `E` or `M`.');
			}

			if ($id == '') {
				array_push($errors, 'The `id` field must not be empty.');
			}
	
			if ($name == '') {
				array_push($errors, 'The `name` field must not be empty.');
			}

			if (!empty($errors)) {
				return ['errors' => $errors];
			} else {
				$sql = "UPDATE equipment SET name='$name', category='$category' WHERE id='$id'";

				// We are now able to access this method because we extended the "Database" class.
				$this->executeSQL($sql);

				return 'Resource successfully edited.';	
			}
		}		
	}
?>