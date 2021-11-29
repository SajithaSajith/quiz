<?php
    include_once 'database.php';
    session_start();
    if(!(isset($_SESSION['email'])))
    {
        header("location:login.php");
    }
    else
    {
        $name = $_SESSION['name'];
        $email = $_SESSION['email'];
        include_once 'database.php';
    }
	$datavar = '';
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard | Online Quiz System</title>
	<link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
    <link rel="stylesheet" href="css/welcome.css">
    <link  rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
	<style>
		.invalid-feedback {
			color: white;
		}	
	</style>
</head>

<body>
    <nav class="navbar navbar-default title1">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Javascript:void(0)"><b>Quiz Application</b></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                    <li <?php if(@$_GET['q']==0) echo'class="active"'; ?>><a href="dashboard.php?q=0">Home<span class="sr-only">(current)</span></a></li>
                    <!--<li <?php if(@$_GET['q']==1) echo'class="active"'; ?>><a href="dashboard.php?q=1">User</a></li>
                    <li <?php if(@$_GET['q']==2) echo'class="active"'; ?>><a href="dashboard.php?q=2">Ranking</a></li>-->
                    <li class="dropdown <?php if(@$_GET['q']==4 || @$_GET['q']==5) echo'active"'; ?>">
                    <li><a href="dashboard.php?q=4">Add Topic</a></li>
                    <li><a href="dashboard.php?q=5">Remove Topic</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li <?php echo''; ?> > <a href="logout1.php?q=dashboard.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Log out</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php if(@$_GET['q']==0)
                {
                   echo "<h1> WELCOME TO Admin Page!!
					</h1>
					<h3>Click on 'Add Topic' to add new topics and questions(after adding topic).</h3>
					<h3>Click on 'Remove Topic' to remove topic and associated questions(automatically).</h3>
					";
					
                }

                /*if(@$_GET['q']== 2) 
                {
                    $q=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');
                    echo  '<div class="panel title"><div class="table-responsive">
                    <table class="table table-striped title1" >
                    <tr style="color:red"><td><center><b>Rank</b></center></td><td><center><b>Name</b></center></td><td><center><b>Score</b></center></td></tr>';
                    $c=0;
                    while($row=mysqli_fetch_array($q) )
                    {
                        $e=$row['email'];
                        $s=$row['score'];
                        $q12=mysqli_query($con,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
                        while($row=mysqli_fetch_array($q12) )
                        {
                            $name=$row['name'];
                            $college=$row['college'];
                        }
                        $c++;
                        echo '<tr><td style="color:#99cc32"><center><b>'.$c.'</b></center></td><td><center>'.$e.'</center></td><td><center>'.$s.'</center></td>';
                    }
                    echo '</table></div></div>';
                }*/
                ?>
                <?php 
                   /* if(@$_GET['q']==1) 
                    {
                        $result = mysqli_query($con,"SELECT * FROM user") or die('Error');
                        echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
                        <tr><td><center><b>S.N.</b></center></td><td><center><b>Name</b></center></td><td><center><b>College</b></center></td><td><center><b>Email</b></center></td><td><center><b>Action</b></center></td></tr>';
                        $c=1;
                        while($row = mysqli_fetch_array($result)) 
                        {
                            $name = $row['name'];
                            $email = $row['email'];
                            $college = $row['college'];
                            echo '<tr><td><center>'.$c++.'</center></td><td><center>'.$name.'</center></td><td><center>'.$college.'</center></td><td><center>'.$email.'</center></td><td><center><a title="Delete User" href="update.php?demail='.$email.'"><b><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></center></td></tr>';
                        }
                        $c=0;
                        echo '</table></div></div>';
                    }*/
                ?>

                <?php
                    if(@$_GET['q']==4 && !(@$_GET['step']) ) 
                    {
                        echo '<div class="row"><span class="title1" style="margin-left:36%;font-size:30px;color:#fff;"><b>Enter Quiz Topic Details</b></span><br /><br />
						<p style="margin-left:20%;font-size:20px;color:#fff;">Enter Topic Details. After submitting the topic details you can enter the questions, options and answer.</p>
                        <div class="col-md-3"></div><div class="col-md-6">  
						<div id="topics-form">
						<validation-observer v-slot="{ invalid, handleSubmit }">	
                        <form @submit.prevent="handleSubmit(onSubmit)" class="form-horizontal title1" name="form" id="topicsForm" action="update.php?q=addquiz"  method="POST">
                            <fieldset>
                                <div class="form-group">
									<validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                    <label class="col-md-12 control-label" for="name"></label>  
                                    <div class="col-md-12">
                                        <input id="name" name="name" placeholder="Enter Quiz Topic title" class="form-control input-md" type="text" v-model="topicName" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
                                    </div>
									<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
									</validation-provider>
                                </div>

                                <div class="form-group">
									<label class="col-md-12 control-label" for="total"></label>  
                                    <div class="col-md-12">
                                        <input id="total" name="total"   value="10" placeholder="Enter total number of questions" class="form-control input-md" type="number" readonly>
                                    </div>
									
                                </div>

                                <div class="form-group">
									<label class="col-md-12 control-label" for="right"></label>  
                                    <div class="col-md-12">
                                        <input id="right" name="right"   value="1" placeholder="Enter marks on right answer" class="form-control input-md" min="0" type="number" readonly>
                                    </div>
									
                                </div>

                                <!--<div class="form-group">
                                    <label class="col-md-12 control-label" for="wrong"></label>  
                                    <div class="col-md-12">
                                        <input id="wrong" name="wrong" placeholder="Enter minus marks on wrong answer without sign" class="form-control input-md" min="0" type="number">
                                    </div>
                                </div>-->
                                
                                <div class="form-group">
                                    <label class="col-md-12 control-label" for=""></label>
                                    <div class="col-md-12"> 
                                        <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary" />
                                    </div>
                                </div>

                            </fieldset>
                        </form></validation-observer></div></div>';
                    }
                ?>

                <?php
                    if(@$_GET['q']==4 && (@$_GET['step'])==2 ) 
                    {
                        echo '<div class="row">
                        <span class="title1" style="margin-left:40%;font-size:30px;"><b>Enter Question Details</b></span><br /><br />
						<p style="margin-left:20%;font-size:20px;color:#fff;">Enter Question Details. You can enter the questions, options and answer. First 4 questions are Beginner Level questions, next 3 are Intermediate Level questions, and next 3 are Professional Level questions.</p>
                        <div class="col-md-3"></div><div class="col-md-6">
						<div id="questions-form">
						<validation-observer v-slot="{ invalid, handleSubmit }">
						<form @submit.prevent="handleSubmit(onSubmit)" class="form-horizontal title1" name="form" id="qnsForm" action="update.php?q=addqns&n='.@$_GET['n'].'&eid='.@$_GET['eid'].'&ch=4 "  method="POST">
                        <fieldset>
                        ';
						
                        for($i=1;$i<=@$_GET['n'];$i++)
                        {
							$datavar = $datavar."question".$i.": '',optiona".$i.": '',optionb".$i.": '',optionc".$i.": '',optiond".$i.": '',answer".$i.": '',";	
							if($i == 1)
								echo '<h3 class="invalid-feedback">Beginner Level Questions - 4 </h3>';
							else if($i == 5)
								echo '<h3 class="invalid-feedback">Intermediate Level Questions - 3 </h3>';
							else if($i == 8)
								echo '<h3 class="invalid-feedback">Professional Level Questions - 3 </h3>';
							
						    echo '<b>Question number&nbsp;'.$i.'&nbsp;:</><br /><!-- Text input-->
                                    <div class="form-group">
										<validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                        <label class="col-md-12 control-label" for="question'.$i.' "></label>  
                                        <div class="col-md-12">
                                            <textarea rows="3" cols="5" id="question'.$i.'" name="question'.$i.'" class="form-control" placeholder="Write question number '.$i.' here..."  v-model="question'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }"></textarea>  
                                        </div>
										<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
										</validation-provider>
                                    </div>
									
                                    <div class="form-group">
										<validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                        <label class="col-md-12 control-label" for="'.$i.'1"></label>  
                                        <div class="col-md-12">
                                            <input id="optiona'.$i.'1" name="optiona'.$i.'1" placeholder="Enter option a" class="form-control input-md" type="text" v-model="optiona'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
                                        </div>
										<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
										</validation-provider>
                                    </div>
                                    <div class="form-group">
										<validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                        <label class="col-md-12 control-label" for="'.$i.'2"></label>  
                                        <div class="col-md-12">
                                            <input id="optionb'.$i.'2" name="optionb'.$i.'2" placeholder="Enter option b" class="form-control input-md" type="text" v-model="optionb'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
                                        </div>
										<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
										</validation-provider>
                                    </div>
                                    <div class="form-group">
                                        <validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                        <label class="col-md-12 control-label" for="'.$i.'3"></label>  
                                        <div class="col-md-12">
                                            <input id="optionc'.$i.'3" name="optionc'.$i.'3" placeholder="Enter option c" class="form-control input-md" type="text" v-model="optionc'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
                                        </div>
										<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
										</validation-provider>
                                    </div>
                                    <div class="form-group">
                                        <validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                        <label class="col-md-12 control-label" for="'.$i.'4"></label>  
                                        <div class="col-md-12">
                                            <input id="optiond'.$i.'4" name="optiond'.$i.'4" placeholder="Enter option d" class="form-control input-md" type="text" v-model="optiond'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
                                        </div>
										<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
										</validation-provider>
                                    </div>
                                    <div class="form-group">
									<validation-provider rules="required" v-slot="{ dirty, valid, invalid, errors }">
                                    <b>Correct answer</b>:<br />
									<select id="answer'.$i.'" name="answer'.$i.'" placeholder="Choose correct answer " class="form-control input-md" v-model="answer'.$i.'" v-bind:class="{ \'is-valid\': dirty && valid, \'is-invalid\': dirty && invalid }">
										<option value="">Select answer for question '.$i.'</option>
										<option value="a"> option a</option>
										<option value="b"> option b</option>
										<option value="c"> option c</option>
										<option value="d"> option d</option> 
									</select>
									<div class="invalid-feedback d-inline-block" v-show="errors">{{ errors[0] }}</div>
									</validation-provider>
									</div>
									<br /><br />'; 
                        }
                        echo '<div class="form-group">
                                <label class="col-md-12 control-label" for=""></label>
                                <div class="col-md-12"> 
                                    <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"  v-bind:disabled="invalid"/>
                                </div>
                              </div>

                        </fieldset>
                        </form></validation-observer></div></div>';
                    }
                ?>

                <?php 
                    if(@$_GET['q']==5) 
                    {
                        $result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
                        echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
                        <tr><td><center><b>S.N.</b></center></td><td><center><b>Topic</b></center></td><td><center><b>Total question</b></center></td><td><center><b>Total Marks</b></center></td><td><center><b>Action</b></center></td></tr>';
                        $c=1;
                        while($row = mysqli_fetch_array($result)) {
                            $title = $row['title'];
                            $total = $row['total'];
                            $sahi = $row['sahi'];
                            $eid = $row['eid'];
                            echo '<tr><td><center>'.$c++.'</center></td><td><center>'.$title.'</center></td><td><center>'.$total.'</center></td><td><center>'.$sahi*$total.'</center></td>
                            <td><center><b><a href="update.php?q=rmquiz&eid='.$eid.'" class="pull-right btn sub1" style="margin:0px;background:red;color:black"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Remove</b></span></a></b></center></td></tr>';
                        }
                        $c=0;
                        echo '</table></div></div>';
                    }
                ?>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/vee-validate@3.3.8/dist/rules.umd.js"></script>
  <!-- include the Vue.js framework -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.11/vue.min.js"></script>

  <!-- include the VeeValidate library -->
  <script src="https://cdn.jsdelivr.net/npm/vee-validate@3.3.8/dist/vee-validate.min.js"></script>

<script>
	var beginner = 0;
	var intermediate = 0;
	var professional = 0;	
	var frmNums = '';
	
    Vue.component('validation-observer', VeeValidate.ValidationObserver);

    Vue.component('validation-provider', VeeValidate.ValidationProvider);
	
    const questionsForm = new Vue({
		el: '#questions-form',
		data: {
			
		  <?php echo $datavar;?>
		 
		},
		methods: {
		 onSubmit: function() {
			 document.getElementById('qnsForm').submit();
		  }
		}
	  });
	  
	Object.keys(VeeValidateRules).forEach(rule => {
      VeeValidate.extend(rule, VeeValidateRules[rule]);
    });
	
	// Declare an array of usernames that are invalid.
    const restricted_usernames = [
      'admin',
      'password',
      'administrator'
    ];

    // Extend the custom rule.
    VeeValidate.extend('checkuser', {
      name: 'Restricted Usernames',
      validate: value => {
        return restricted_usernames.includes(value.toLowerCase()) ? false : !! value
      },
      message: 'That {_field_} is unavailable.',
    });
	
	const topicsForm = new Vue({
		el: '#topics-form',
		data: {
			
		  topicName: ''
		 
		},
		methods: {
		 onSubmit: function() {
			 document.getElementById('topicsForm').submit();
		  }
		}
	  });
	  
  </script>
 
</html>
