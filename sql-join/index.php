<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Kuliah</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>

  <body>
    <!-- nav -->
    <nav class="navbar navbar-dark navbar-expand-lg bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand">STMIK YMI TEGAL</a>
        </div>
    </div>
    </nav>

      <div class="container">
          <?php 
          $db = mysqli_connect('localhost', 'root', '', 'db_kuliah');

          $data_kuliah = mysqli_query($db, 'select mata_kuliah.nama_mata_kuliah, 
          daftar_dosen.nama_dosen from mata_kuliah inner join daftar_dosen on mata_kuliah.nip_dosen = daftar_dosen.nip');

          ?>
        <div class="row">
            <div class="col">
            <table class="table table-bordered border-dark mt-5">
                <thead>
                    <tr>
                    <th scope="col">Mata Kuliah</th>
                    <th scope="col">Dosen Pengajar</th>
                    </tr>
                </thead>

                <tbody>
                <?php
                while($data = mysqli_fetch_assoc($data_kuliah)){
                ?>
                    <tr>
                    <td><?php echo $data['nama_mata_kuliah']; ?></td>
                    <td><?php echo $data['nama_dosen']; ?></td>
                    </tr>
                    <?php } ?>
                </tbody>
                </table>
            </div>
        </div>

      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>
