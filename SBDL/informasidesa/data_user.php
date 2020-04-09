<!DOCTYPE html>
<html>
<head>
	<body bgcolor="grey">
	<title>ARSIP DESA</title>
</head>
<body>

	<h2 align="center"> DATA USER</h2>
	<br/>
	<br/>
	<table align="center" border="2">
		<tr>
			<th>no</th>
			<th>username</th>
			<th>password</th>
			<th>level</th>
			<th>nama_lengkap</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from data_user");
		while($d = mysqli_fetch_array($data)){
			?>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['username']; ?></td>
				<td><?php echo $d['password']; ?></td>
				<td><?php echo $d['level']; ?></td>
				<td><?php echo $d['nama_lengkap']; ?></td>
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