<!DOCTYPE html>
<html>
<head>
	<body bgcolor="87D1D8">
    <title>ADMINISTRASI TATA USAHA</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1 align="center">DATA DOSEN</h1>
	<p><a href="index.php">Kembali Beranda</a>
    <table align="center" border="3" cellpadding="10" cellspacing="1">
        <tr>
        <tr bgcolor='navy'>
        	<th>NO.</th>
			<th>NIP</th>
			<th>ID</th>
			<th>KODE PENDIDIKAN</th>
			<th>KODE JABATAN</th>
			<th>NAMA</th>
			<th>ALAMAT</th>
			<th>KETERANGAN</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from dosen");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['nip']; ?></td>
				<td><?php echo $d['id_dosen']; ?></td>
				<td><?php echo $d['kode_pendidikan']; ?></td>
				<td><?php echo $d['kode_jabatan']; ?></td>
				<td><?php echo $d['nama_dosen']; ?></td>
				<td><?php echo $d['alamat']; ?></td>
				<td><?php echo $d['ket_dosen']; ?></td>
				<td>
					<a href="edit.php?id=<?php echo $d['ID']; ?>">EDIT</a>
					<a href=>|</a>
					<a href="hapus.php?id=<?php echo $d['ID']; ?>">HAPUS</a>
				</td>
			</tr>
			<?php 
		}
		?>
	</table>
</body>
</html>