<?php 
$koneksi = mysqli_connect("localhost","root","","informasi_desa");

// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>