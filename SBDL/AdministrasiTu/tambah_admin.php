<!DOCTYPE html>
<html>
<head>
	<title>ARSIP DESA</title>
	<body bgcolor="87D1D8">
    <title>Sistem Arsip Desa</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<p><a href="index.php">Kembali Beranda</a>
	<h4>Tambah Data Siswa</h4>
	
	<form action="tambah_aksi.php" method="post">
		<table cellpadding="3" cellspacing="0">
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
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="tambah" value="Tambah"></td>
			</tr>
		</table>
	</form>
</body>
</html>