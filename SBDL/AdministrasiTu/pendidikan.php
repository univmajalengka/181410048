<!DOCTYPE html>
<html>
<head>
	<body bgcolor="">
    <title>ADMINISTRASI TATA USAHA</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<h1 align="center">DATA PENDIDIKAN</h1>
	<p><a href="index.php">Kembali Beranda</a>
    <table align="center" border="3" cellpadding="10" cellspacing="1">
		<tr>
		<tr bgcolor='grey'>
			<th>NO</th>
			<th>KODE</th>
			<th>KETERANGAN</th>
			<th>GAJI MATA KULIAH</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from pendidikan");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['kode_pendidikan']; ?></td>
				<td><?php echo $d['ket_pendidikan']; ?></td>
				<td><?php echo $d['gaji_matkul']; ?></td>
			
			</tr>
			<?php 
		}
		?>
	</table>
</body>
</html>