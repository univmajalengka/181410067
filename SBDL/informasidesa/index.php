<!DOCTYPE html>
<html>
<head>
	<body bgcolor="grey">
	<title>ARSIP DESA</title>
</head>
<body>
	<h1 align ="center">SELAMAT DATANG DI WEBSITE ARSIP DESA KAMI</h1>
	<h2 align ="center">klik kebutuhan anda</h2> 
	<table align="center" border="4">
		<tr>
		<tr bgcolor="grey">
			<th> NO </th>
			<th> LIST</th>
		<tr>
			<th><?php $no = 1; echo $no++;?></th>
			<th><a href="data_berita.php">DATA BERITA</a></th>
		</tr>
		<tr>
			<th><?php echo $no++;?></th>
			<th><a href="data_komentar.php">DATA KOMENTAR</a></th>
		</tr>
		<tr>
			<th><?php echo $no++;?></th>
			<th><a href="data_pengumuman.php">DATA PENGUMUMAN</a></th>
		</tr>
		<tr>
			<th><?php echo $no++;?></th>
			<th><a href="data_potensi.php">DATA POTENSI</a></th>
		</tr>
		<tr>
			<th><?php echo $no++;?></th>
			<th><a href="data_profil.php">DATA PROFIL</a></th>
		</tr>
		<tr>
			<th><?php echo $no++;?></th>
			<th><a href="data_user.php">DATA USER</a></th>
		</tr>
</table>
</body>
</html>