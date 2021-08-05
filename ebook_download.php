<?php 
session_start();
include('includes/config.php');

if (isset($_GET['nid'])) {
       $id = $_GET['nid'];
       $sql = "SELECT FileName FROM ebookpost WHERE id=$id";
    $result = mysqli_query($con, $sql);

     $file = mysqli_fetch_assoc($result);
       
$filepath = 'admin/postEbookFiles/' . $file['FileName'];

if(file_exists($filepath)){
    header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . basename($filepath));
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($filepath));
        readfile($filepath);
        exit;
}
    
    }