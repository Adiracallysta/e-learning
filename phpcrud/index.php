<?php
session_start();

if (!isset($_SESSION['login'])) {
    header("location: view/login.php");
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>DATA MAHASISWA KELAS 1 D3 IT A</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- <style>
    h2 {
      text-align: center;
  }

</style> -->
</head>
<nav class="navbar bg-dark fixed-top">
  <div class="container-fluid">
    <button class="navbar-toggler navbar-dark navbar-toggler-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand text-white" href="index.php">
      <img src="img/logo-php.svg" alt="Logo" width="70" height="50" class="d-inline-block align-text-center">
      <img src="img/logo-mysql.svg" alt="Logo" width="70" height="50" class="d-inline-block align-text-center">
    </a>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header bg-primary text-white">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Fake Dashboard</h5>
        <hr>
        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Data Mahasiswa</a>
            <hr>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="view/logout.php">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>
<body>
<div style="width: 90%; margin-left: auto; margin-right: auto; margin-top : 7%">
    <div class="container">
        <h2 class="text-center">DATA MAHASISWA KELAS 1 D3 IT A</h2>
        <br/>
        <a class="btn btn-primary" href="tambah.php">+ INPUT DATA MAHASISWA</a>
        <br>
        <br/>
        <br/>
        <table class="table table-striped">
            <tr>
              <th>Id</th>
              <th>NRP</th>
              <th>Nama</th>
              <th>J_Kelamin</th>
              <th>Jurusan</th>
              <th>Email</th>
              <th>Alamat</th>
              <th>No Hp</th>
              <th>Asal SMA</th>
              <th>Matkul Favorit</th>
              <th>Foto</th>
              <th>Opsi</th>
          </tr>
          <?php 
        // include 'koneksi php';
          include 'koneksi.php';
          $no = 1;
          $data = mysqli_query($koneksi, "SELECT * FROM db_mahasiswa");
          while($d = mysqli_fetch_array($data)){
              ?>
              <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $d['NRP']; ?></td>
                <td><?php echo $d['Nama']; ?></td>
                <td><?php echo $d['Jenis_Kelamin']; ?></td>
                <td><?php echo $d['Jurusan']; ?></td>
                <td><?php echo $d['Email']; ?></td>
                <td><?php echo $d['Alamat']; ?></td>
                <td><?php echo $d['No_Hp']; ?></td>
                <td><?php echo $d['Asal_SMA']; ?></td>
                <td><?php echo $d['Matkul_Favorit']; ?></td>
                <td>
                    <a class="btn btn-primary" href="img/<?php echo $d['Foto'];?>">Url_Foto</a>
                    <form action="download.php" method="post">
                      <button type="submit">download</button>
                        <input type="hidden" value="<?php echo $d['Foto'] ?>" name='file_path' >
                    </form>
                </td>
                <td>
                    <a class="btn btn-warning mb-2" href="edit.php?id=<?php echo $d['id']; ?>">EDIT</a>
                    <a class="btn btn-danger" href="hapus.php?id=<?php echo $d['id']; ?>">HAPUS</a>

                </td>
            </tr>
            <?php 
        }
        ?>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</div>
</body>
</html>