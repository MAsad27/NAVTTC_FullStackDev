<?php
include('adminPanel/dbcon.php');

$uName = $uEmail = $uPwd = $ucPwd = "";
$unameerr = $uemailerr = $upwderr = $ucpwderr = "";
if(isset($_POST['signUp'])){
    $uName = $_POST['uname'];
    $uEmail = $_POST['uemail'];
    $uPwd = $_POST['upwd'];
    $ucPwd = $_POST['ucpwd'];
    if(empty($_POST['uname'])){
        $unameerr = "Please ente your Name";
    }
    if(empty($_POST['uemail'])){
        $uemailerr = "Please enter your Password";
    }
    else{
        $query = $pdo->prepare("select * from users where email=:uemail");
        $query->bindParam(':uemail',$uEmail);
        $query->execute();
        $user = $query->fetch(PDO::FETCH_ASSOC);
        IF($user){
            $uemailerr = "Email already exist";
        }
    }
    if(empty($_POST['upwd'])){
        $upwderr = "Please enter your password";
    }
    if(empty($_POST['ucpwd'])){
        $ucpwderr = "Please enter your confirm password";
    }else{
        if($uPwd !== $ucPwd){
            $ucpwderr = "Password does not match";
        }
    }
    if(empty($unameerr)&& empty($uemailerr) && empty($upwderr) && empty($ucpwderr) ){
        $hashpwd = sha1($uPwd,TRUE);
        $query = $pdo->prepare("insert into users (name, email, password) values (:uname, :uemail, :upwd) ");
        $query->bindParam(':uname' , $uName);
        $query->bindParam(':uemail' , $uEmail);
        $query->bindParam(':upwd' , $hashpwd);
        $query->execute();
        echo "<script>alert('User has been Registered, Please sign-in')</script>";
        $uName = $uEmail = $uPwd = $ucPwd = "";
    }


}

?>