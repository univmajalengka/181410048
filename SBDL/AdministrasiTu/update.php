<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form

	$id = $_POST['ID'];
    $username = $_POST['Username'];
    $password = $_POST['Password'];
    $nama = $_POST['Nama'];
    $kode_pegawai = $_POST['Kode_Pegawai'];
    $level = $_POST['Level'];	

// update data ke database
mysqli_query($koneksi,"INSERT INTO ('$ID', '$Username', '$Password', '$Nama', '$Kode_Pegawai', '$Level')");

// mengalihkan halaman kembali ke index.php
header("location:admin.php");

?>