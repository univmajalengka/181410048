<?php 
// koneksi database
include 'koneksi.php';

// menangkap data id yang di kirim dari url
$id = $_GET['ID'];


// menghapus data dari database
$hapus = mysqli_query ("DELETE FROM admin WHERE ID = $ID");

// mengalihkan halaman kembali ke index.php
header("location:index.php");

?>