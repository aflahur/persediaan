<section id="main-content">
 <section class="wrapper">


<div class="row ">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-bars"></i> Data Bagian</h4>
                <hr>
                <div class="text-center">
                  <a href="?hal=tambahDepartement" class="btn btn-primary"> Tambah Bagian </a>
                </div>
                <br>
                <thead>
                   <?php
                      include "../koneksi.php";
                      $query = mysqli_query($sambungin,"SELECT * FROM tbdepartement ");

                    ?>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i> Kode Bagian</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Nama Bagian</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Ext Telepon</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Nama Kabag/Kasubag</th>
                  
                   
                    <th>Aksi</th>
                  </tr>
                </thead>

                <tbody>
                  <?php
                    while($data = mysqli_fetch_array($query)){
                  ?>
                 
                   
                    <td class="hidden-phone"><?php echo $data['kode_departement'] ?></td>
                     <td class="hidden-phone"><?php echo $data['nama_departement'] ?></td> 
                     <td class="hidden-phone"><?php echo $data['ext'] ?></td> 
                     <td class="hidden-phone"><?php echo $data['nama_manager'] ?></td> 
                      
                    <td>
                      <a href="beranda.php?hal=ubahDepartement&kode_departement=<?php echo $data['kode_departement'] ?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
                      <a href="dataDepartement/hapusDepartement.php?kode_departement=<?php echo $data['kode_departement'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Yakin Akan dihapus?')" ><i class="fa fa-trash-o "></i></a>
                    </td>
                  </tr>
                    <?php
                }
              ?>
                </tbody>
              </table>
            
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-md-12 -->
        </div>


</section>
</section>