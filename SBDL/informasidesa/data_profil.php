<!DOCTYPE html>
<html>
<head>
	<body bgcolor="grey">
	<title>ARSIP DESA</title>
</head>
<body>

	<h2 align ="center">DATA PROFIL</h2>
	<br/>
	<br/>
	<table align ="center" border="2">
		<tr>
			<th>no</th>
			<th>id_profil</th>
			<th>nama_profil</th>
			<th>isi_profil</th>
			<th>username</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from data_profil");
		while($d = mysqli_fetch_array($data)){
			?>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['id_profil']; ?></td>
				<td><?php echo $d['nama_profil']; ?></td>
				<td><?php echo $d['isi_profil']; ?></td>
				<td><?php echo $d['username']; ?></td>
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