<!DOCTYPE html>
<head>
    <body bgcolor="">
    <title>ADMINISTRASI TATA USAHA</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1 align="center">ADMINISTRASI TATA USAHA</h1>
    <h3 align="center">Selamat Datang!</h3>
    <h3 align="center">Silahkan Pilih List Menu Dibawah Ini Sesuai Kebutuhan Anda</h3>
    <table align="center" border="3" cellpadding="10" cellspacing="1" width="800px">
        <tr>
        <tr bgcolor='grey'>
            <th>NO</th>
            <th>LIST MENU</th>
        <tr>
            <th><?php $no = 1; echo $no++; ?></th>
            <th><a href="dosen.php">Data Dosen</a></th>
        </tr>
        <tr>
            <th><?php echo $no++; ?></th>
            <th><a href="absensi.php">Data Absensi</a></th>
        </tr>
         <tr>
            <th><?php echo $no++; ?></th>
            <th><a href="jabatan.php">Data Jabatan Dosen</a></th>
        </tr>
         <tr>
            <th><?php echo $no++; ?></th>
            <th><a href="kelas.php">Data Kelas</a></th>
        </tr>
         <tr>
            <th><?php echo $no++; ?></th>
            <th><a href="pendidikan.php">Data Pendidikan</a></th>
    </table>
</body>
</html>