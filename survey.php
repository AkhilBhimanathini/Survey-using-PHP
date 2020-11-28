<?php


include ('config.php');


?>



<!DOCTYPE html>
<html lang="en">
<head>
	<title>Take Survey</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<style>

.question {

    padding-left :30px;
    text-align: left;
    font-style:bold;

}

.button { /* Green */
  background-color: #f44336;
  border-radius:7px;
  color: black;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 1px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}


</style>


</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
            
			<div class="wrap-login100">

            <span class="login100-form-title">
						SURVEY FORM
					</span>


            <?php

  
			$id=$_GET['qid'];
			
            $sql="SELECT *FROM question WHERE id='$id'";

            $result=mysqli_query($con,$sql);
 
            while($row=mysqli_fetch_assoc($result))
            {

                 ?>

            <form action="" method="POST">


					<span >
						<h5><?php echo $id.". " . $row['question'];  ?></h6>
                    </span>
                <br>
                  <input type="radio" id="A" name="gender" value="A">
                 <label for="A"><?php echo $row['optionA']; ?></label><br>
                 <input type="radio" id="B" name="gender" value="B">
                 <label for="B"><?php echo $row['optionB']; ?></label><br>
                 <input type="radio" id="C" name="gender" value="C">
                 <label for="C"><?php echo $row['optionC']; ?></label>

                <br>  <br>

               <?php

				
				?>
				<div >
				<input type="submit" class="button button3" value="Submit" name="submit">
			  </div>  <br> <br>
			  
			  <?php

            }
              
                ?>
					
					
				

					<div class="text-center p-t-12">
						<span class="txt1">
					
						</span>
						<a class="txt2" href="#">
					
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							
							
						</a>
					</div>
				</form>

				<?php
              
			  	if (isset($_POST['submit'])) { 
			    
				{
                    $val=$_POST['gender'];
                    
					$sql="UPDATE question SET vote".$val." = vote".$val." +1 WHERE id='$id' ";

					$result = mysqli_query($con,$sql);


					if ($result)
					{

					echo "<script>alert('You have submitted your answer')</script>";
					header('Location: quiz.php');

					}
				}

			}

                ?>

			  
				

			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>