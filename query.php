<?php
include('dbcon.php');
if(isset($_POST['add'])){
    $catname = $_POST['cName'];
    $catdesc = $_POST['cDesc'];
    $catimg = $_FILES['cImage']['name'];
    $cattemimg = $_FILES['cImage']['tmp_name'];
    $extension = pathinfo($catimg,PATHINFO_EXTENSION);
    $destination = "img/".$catimg;
    if($extension == "jpg" || $extension == "png" || $extension == "jpeg"){
        if(move_uploaded_file($cattemimg,$destination)){
            $query = $pdo->prepare("insert into categories (Name, Description, image) values (:categoryName, :categoryDesc, :categoryImage)");
            $query->bindParam('categoryName',$catname);
            $query->bindParam('categoryDesc',$catdesc);
            $query->bindParam('categoryImage',$catimg);
            $query->execute();
            echo "<script>alert('Category Data Added')
            location.assign('index.php')
            </script>";
        }          
        }
        else{
            echo "<script>alert('invalid file formate') </script>";       
        }
    }

?>