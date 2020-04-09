<!DOCTYPE html>
<html>
<head>
	<body bgcolor="grey">
	<title>ARSIP DESA</title>
</head>
<body>

	<h2 align="center">DATA KOMENTAR</h2>
	<br/>
	<br/>
	<table align="center" border="2">
		<tr>
			<th>no</th>
			<th>id</th>
			<th>nama</th>
			<th>email</th>
			<th>url</th>
			<th>komentar</th>
			<th>tgl</th>
			<th>jml_komentar</th>
			<th>id_news</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from data_komentar");
		while($d = mysqli_fetch_array($data)){
			?>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['id']; ?></td>
				<td><?php echo $d['nama']; ?></td>
				<td><?php echo $d['email']; ?></td>
				<td><?php echo $d['url']; ?></td>
				<td><?php echo $d['komentar']; ?></td>
				<td><?php echo $d['tgl']; ?></td>
				<td><?php echo $d['jml_komentar']; ?></td>
				<td><?php echo $d['id_news']; ?></td>
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