<?php
include 'koneksi.php';

    $id = $_POST['ID'];
    $username = $_POST['Username'];
    $password = $_POST['Password'];
    $nama = $_POST['Nama'];
    $kode_pegawai = $_POST['Kode_Pegawai'];
    $level = $_POST['Level'];

  mysqli_query($koneksi, "INSERT INTO admin VALUES('$ID', '$Username', '$Password', '$Nama', '$Kode_Pegawai', '$Level')");
  header("location:admin.php");
?>