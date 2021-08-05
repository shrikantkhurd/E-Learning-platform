<?php 
session_start();
include('includes/config.php');

// if (isset($_GET['file_name'])) {
//        $id = $_GET['file_name'];
//        $sql = "SELECT FileName FROM programpost WHERE id=$id";
//     $result = mysqli_query($con, $sql);

//      $file = mysqli_fetch_assoc($result);
       
// $filepath = 'admin/postProgramFiles/' . $file['FileName'];

// if(file_exists($filepath)){
//     header('Content-Description: File Transfer');
//         header('Content-Type: application/octet-stream');
//         header('Content-Disposition: attachment; filename=' . basename($filepath));
//         header('Expires: 0');
//         header('Cache-Control: must-revalidate');
//         header('Pragma: public');
//         header('Content-Length: ' . filesize($filepath));
//         readfile($filepath);
//         exit;
// }
    
//     }


if (isset($_GET['file_name'])) {
    $pid = $_GET['file_name'];

    // // fetch file to download from database
    $sql = "SELECT FileName FROM programpost WHERE id=$pid";
    $result = mysqli_query($con, $sql);

    $file = mysqli_fetch_assoc($result);
   $filepath = 'admin/postProgramFiles/' . $file['FileName'];
    

    if (file_exists($filepath)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . basename($filepath));
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize('admin/postProgramFiles/' . $file['FileName']));
        readfile('admin/postProgramFiles/' . $file['FileName']);

        exit;
    }
}