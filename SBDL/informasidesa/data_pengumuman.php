<!DOCTYPE html>
<html>
<head>
	<body bgcolor="grey">
	<title>ARSIP DESA</title>
</head>
<body>

	<h2 align="center">DATA PENGUMUMAN</h2>
	<br/>
	<br/>
	<table align="center" border="2">
		<tr>
			<th>no</th>
			<th>id</th>
			<th>judul</th>
			<th>isi</th>
			<th>pengirim</th>
			<th>tgl</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from data_pengumuman");
		while($d = mysqli_fetch_array($data)){
			?>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['id']; ?></td>
				<td><?php echo $d['judul']; ?></td>
				<td><?php echo $d['isi']; ?></td>
				<td><?php echo $d['pengirim']; ?></td>
				<td><?php echo $d['tgl']; ?></td>
			</tr>
			<?php 
		}
		?>
	</table>
	<td>
		<h5 align="center"><a href="index.php?id=<?php echo $d['id']; ?>">KEMBALI</a></h5>
	</td>
</body>
</html>