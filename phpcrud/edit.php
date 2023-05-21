<!DOCTYPE html>
<html>
<head>
	<title>DATA MAHASISWA</title>
</head>
<body>

	<h2>DATA MAHASISWA </h2>
	<br/>
	<a href="index.php">KEMBALI</a>
	<br/>
	<br/>
	<h3>EDIT DATA MAHASISWA</h3>

	<?php
	include 'koneksi.php';
	$id = $_GET['id'];
	$data = mysqli_query($koneksi,"SELECT * FROM db_mahasiswa where id='$id'");
	while($d = mysqli_fetch_array($data)){
		?>
		<form method="post" action="update.php" enctype="multipart/form-data">
			<!-- delete -->
			<table>
				<tr>			
					<td>Nama</td>
					<td>
						<input type="hidden" name="id" value="<?php echo $d['id']; ?>">
						<input type="text" name="Nama" value="<?php echo $d['Nama']; ?>">
					</td>
				</tr>
				<tr>
					<td>NRP</td>
					<td><input type="number" name="NRP" value="<?php echo $d['NRP']; ?>"></td>
				</tr>
				<tr>
					<td>jenis_kelamin</td>
					<td><input type="text" name="Jenis_Kelamin" value="<?php echo $d['Jenis_Kelamin']; ?>"></td>
				</tr>
				<tr>
					<td>jurusan</td>
					<td><input type="text" name="Jurusan" value="<?php echo $d['Jurusan']; ?>"></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="email" name= "Email"  value="<?php echo $d['Email']; ?>"></td>
				</tr>
				<tr>
					<td>alamat</td>
					<td><input type="text" name="Alamat" value="<?php echo $d['Alamat']; ?>"></td>
				</tr>
				<tr>
					<td>no_hp</td>
					<td><input type="text" name="No_Hp" value="<?php echo $d['No_Hp']; ?>"></td>
				</tr>
				<tr>
					<td>asal_SMA</td>
					<td><input type="text" name="Asal_SMA" value="<?php echo $d['Asal_SMA']; ?>"></td>
				</tr>
				<tr>
					<td>matkul_favorit</td>
					<td><input type="text" name="Matkul_Favorit" value="<?php echo $d['Matkul_Favorit']; ?>"></td>
				</tr>
				<tr>
					<td>Foto</td>
					<td><input type="file" name="foto" value="Upload"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="SIMPAN"></td>
				</tr>		
			</table>
		</form>
		<?php 
	}
	?>

</body>
</html>