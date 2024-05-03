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
//-- Update Category start --

if(isset($_POST['updatebtn'])){
    $catname = $_POST['cName'];
    $catdesc = $_POST['cDesc'];
    $id = $_GET['id'];
    echo $id;
    $query = $pdo->prepare("update categories set Name=:cName, Description=:cDesc where id = :cid");
    if(isset($_FILES['cImage'])){
        $catimg = $_FILES['cImage']['name'];
        $cattemimg = $_FILES['cImage']['tmp_name'];
        $extension = pathinfo($catimg,PATHINFO_EXTENSION);
        $destination = "img/".$catimg;
        if($destination=="jpg" || $extension =="png" || $extension == "jpeg" ){
            if(move_uploaded_file($cattemimg,$destination)){
                $query= $pdo->prepare("update categories set Name=:cName, Description=:cDesc, image = :cImage where id = :cid");
                $query->bindParam('cImage',$catimg);
            }
        }
    }
            $query->bindParam('cName',$catname);
            $query->bindParam('cDesc',$catdesc);
            $query->bindParam('cid', $id);
            $query->execute();
            echo "<script>alert('Category Data updated successfully')
            </script>";
      
}
//-- Update Category End --

//-- Add Product start --
if(isset($_POST['addProduct'])){
    $proName = $_POST['pName'];
    $proDesc = $_POST['pDesc'];
    $proPrice = $_POST['pPrice'];
    $proQty = $_POST['pQty'];
    $proImage = $_FILES['pImage']['name'];
    $proTmpImage = $_FILES['pImage']['tmp_name'];
    $proCat = $_POST['pCat'];
    $extension = pathinfo($proImage,PATHINFO_EXTENSION);
    $destination = "img/".$proImage;
    if($extension == "jpg" || $extension == "png" || $extension == "jpeg"){
        if(move_uploaded_file($proTmpImage,$destination)){
            $query = $pdo->prepare("insert into products (name, description, price, quantity, image, catid) values (:proName, :proDesc, :proPrice, :proQty, :proImg, :proCat)");
            $query->bindParam('proName',$proName);
            $query->bindParam('proDesc',$proDesc);
            $query->bindParam('proPrice',$proPrice);
            $query->bindParam('proQty',$proQty);
            $query->bindParam('proImg',$proImage);
            $query->bindParam('proCat',$proCat);
            $query->execute();
            echo "<script>alert('Product Added Successfully')
            location.assign('index.php')
            </script>";
        }          
    }
        else{
            echo "<script>alert('invalid file formate') </script>";       
        }
}




?>