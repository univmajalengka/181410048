<!DOCTYPE html>
<html>
<head>
	<title>ADMINISTRASI TATA USAHA</title>
</head>
<body>

	<h2>ADMINISTRASI TATA USAHA</h2>
	<br/>
	<a href="index.php">KEMBALI</a>
	<br/>
	<br/>
	<h3>EDIT DATA</h3>

	<?php
	include 'koneksi.php';
	$id = $_GET['id'];
	$ambildata = mysqli_query($koneksi,"select * FROM admin where ID =");
		?>
		<form method="post" action="update.php">
			<table>
				<tr>
				<td>ID</td>
				<td>:</td>
				<td><input type="text" name="ID" required></td>
			</tr>
			<tr>
				<td>Username</td>
				<td>:</td>
				<td><input type="text" name="Username" required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td>:</td>
				<td><input type="text" name="Password" required></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td>:</td>
				<td><input type="text" name="nama" size="30" required></td>
			</tr>
			<tr>
				<td>Kode_Pegawai</td>
				<td>:</td>
				<td><input type="text" name="Kode_Pegawai" required>
				</td>
			</tr>
			<tr>
				<td>Level</td>
				<td>:</td>
				<td>
					<select name="level" required>
						<option value="">Pilih level</option>
						<option value="Top Level">Top Level</option>
						<option value="Middle Level">Middle Level</option>
						<option value="Low Level">Low Level</option>
					</select>
				</td>
					<td><input type="submit" value="SIMPAN"></td>
					<td>
			</tr>		
			</table>
		</form>
		<?php 
	?>

</body>
</html>