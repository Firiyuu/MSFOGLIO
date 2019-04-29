<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>PMAid</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">


</head>

<body>
    <input type="hidden" name="" id="to-edit" value="">
    <input type="hidden" name="" id="to-delete" value="">
    <input type="hidden" name="" id="to-add" value="">
    <input type="hidden" name="" id="category" value="">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                <a class="navbar-brand" href="#">PMAid</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="get_projects.html">Projects</a></li>
                    <li><a href="get_resources.html">Resources</a></li>
                </ul>
            </div>
        </div>
    </nav>
<style>
  .complete {
    text-decoration: line-through !important;
    color:red !important;
  }
  
    canvas {
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
        }
        
#chartOne .highcharts-data-label-color-0 text{
            font-size:16px !important;
            position:relative;
        }
#chartOne .highcharts-data-label-color-0{
            position:relative;
        }
#chartOne .highcharts-data-label-color-0:after{
            content:'';
            height:50px;
            width:50px;
            position:absolute;
            left:0;
            top:0;
            background:#000;
        }

</style>
    <?php
    $conn = mysqli_connect('localhost', 'root', '', 'thesis');
    $sql = "SELECT 
                      gantt_chart_resource.*,
                      equipment.`name` AS equipment_name
                    FROM
                      gantt_chart_resource
                      INNER JOIN equipment 
                        ON equipment.`id` = gantt_chart_resource.`resource_id` 
                    ";
    $qry = mysqli_query($conn, $sql);
    $container = array();
    while ($row = $qry->fetch_assoc()) {
        array_push($container, $row);
        
    
    }
    // print_r($container);
    // print_r(mysql_fetch_assoc($qry));
    ?>
    <div class="container-fluid">
        <div class="row">
            <div id="chartOne"></div>
        </div>
    </div>
    <script type="text/javascript" src="http://vtdesignz.co/dev/ci/iigp/lms/public/js/highcharts.js"></script>
<script type="text/javascript" src="http://vtdesignz.co/dev/ci/iigp/lms/public/js/bullet.js"></script>  

<script type="text/javascript">

Highcharts.chart('chartOne', {
    chart: {
        type: 'line'
    },
    title: {
        text: 'Equipment Gnatt Chart'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        categories: [
        <?php foreach($container as $val){?>
        '<?php echo $val['equipment_name']?>',
        <?php } ?>]
    },
    yAxis: {
        title: {
            text: ''
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: true
        }
    },
    series: [{
        name: 'Results',
        data: [<?php foreach($container as $val){?>
        <?php echo $val['rate']?>,
        <?php } ?>]
    }]
});
</script>

    </body>

</html>