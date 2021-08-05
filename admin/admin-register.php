<?php 
include('includes/config.php');

if(isset($_POST['signup'])){
    extract($_POST);
    if(strlen($name)<3){ // Minimum 
        $error[] = 'Please enter  Name using 3 charaters atleast.';
          }
  
  if(!preg_match("/^[A-Za-z _]*[A-Za-z ]+[A-Za-z _]*$/", $name)){
              $error[] = 'Invalid Entry  Name. Please Enter letters without any Digit or special symbols like ( 1,2,3#,$,%,&,*,!,~,`,^,-,)';
          }    
     
        if(strlen($username)<3){ // Change Minimum Lenghth   
              $error[] = 'Please enter Username using 3 charaters atleast.';
          }
    if(strlen($username)>50){ // Change Max Length 
              $error[] = 'Username : Max length 50 Characters Not allowed';
          }
    if(!preg_match("/^^[^0-9][a-z0-9]+([_-]?[a-z0-9])*$/", $username)){
              $error[] = 'Invalid Entry for Username. Enter lowercase letters without any space and No number at the start- Eg - myusername, okuniqueuser or myusername123';
          }  
  if(strlen($email)>50){  // Max 
              $error[] = 'Email: Max length 50 Characters Not allowed';
          }
     if($passwordConfirm ==''){
              $error[] = 'Please confirm the password.';
          }
          if($password != $passwordConfirm){
              $error[] = 'Passwords do not match.';
          }
            if(strlen($password)<3){ // min 
              $error[] = 'The password is 3 characters long.';
          }
          
           if(strlen($password)>20){ // Max 
              $error[] = 'Password: Max length 20 Characters Not allowed';
          }
            $sql="select UserName,Email from tbladmin where (UserName='$username' or Email='$email');";
        $res=mysqli_query($con,$sql);
     if (mysqli_num_rows($res) > 0) {
  $row = mysqli_fetch_assoc($res);
  
       if($username==$row['UserName'])
       {
             $error[] ='Username alredy Exists.';
            } 
         if($email==$row['Email'])
         {
             
              $error[] ='Email alredy Exists.';
            } 
        }
           if(!isset($error)){ 
    
             $result = mysqli_query($con,"insert into tbladmin(Name,UserName,Email,AdminPassword) values('$name','$username','$email','$password')");
  
             if($result)
      {
       $done=2; 
      }
      else{
        $error[] ='Failed : Something went wrong';
      }
   }
   }
   if(isset($error)){ 
    foreach($error as $error){ 
      echo '<p class="errmsg">&#x26A0;'.$error.' </p>'; 
    }
    } 

?>
<!DOCTYPE html>
<html>

<head>
    <title> SignUp - Tech-World</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/register.css">
</head>

<body>
    <div class="container">
        <div class="row" style="margin-top: 5%">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4 ">
                <img src="assets/images/brand-logo.png" alt="Tech World" class="logo img-fluid">
            </div>
            <div class="col-sm-4">
            </div>
        </div>
        <div class="row">


            <div class="col-sm-4">


            </div>
            <div class="col-sm-4">
                <?php if(isset($done)) 
      { ?>
                <div class="successmsg"><span style="font-size:100px;">&#9989;</span> <br> You have registered
                    successfully . <br> <a href="index.php" style="color:#fff;">Login here... </a> </div>
                <?php } else { ?>
                <div class="signup_form">
                    <form action="" method="POST">

                        <div class="  text-center m-t-10 p-md-1">
                            <h5>Create Account</h5>


                        </div>

                        <div class="form-group">

                            <label class="label_txt">Name</label>
                            <input type="text" class="form-control" name="name"
                                value="<?php if(isset($error)){ echo $_POST['name'];}?>" required="">
                        </div>


                        <div class="form-group">
                            <label class="label_txt">Username </label>
                            <input type="text" class="form-control" name="username"
                                value="<?php if(isset($error)){ echo $_POST['username'];}?>" required="">
                        </div>

                        <div class="form-group">
                            <label class="label_txt">Email </label>
                            <input type="email" class="form-control" name="email"
                                value="<?php if(isset($error)){ echo $_POST['email'];}?>" required="">
                        </div>
                        <div class="form-group">
                            <label class="label_txt">Password </label>
                            <input type="password" name="password" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <label class="label_txt">Confirm Password </label>
                            <input type="password" name="passwordConfirm" class="form-control" required="">
                        </div>
                        <button type="submit" name="signup"
                            class="btn btn-primary btn-group-lg form_btn">SignUp</button>
                        <div>
                            <p>Have an account? <a href="index.php">Log in</a> </p>
                        </div>
                    </form>
                    <?php } ?>
                </div>
            </div>
            <div class="col-sm-4">
            </div>

        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

</html>