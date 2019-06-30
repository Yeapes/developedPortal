<?php

	require_once("session.php");
	
	require_once("./classes/class.aboutus.php");
	$aboutes = new ABOUTES();
	
	$stmt = $aboutes->runQuery("SELECT * FROM aboutes");
	$stmt->execute();
	$aboutess=$stmt->fetchAll(PDO::FETCH_ASSOC);
//        echo "<pre>";
//        print_r($groups);

?>
<?php 
include './includes/header.php';
?>

        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          </div>

<div class="card shadow">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">About us Table</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th>ID</th>
                      <th>Image</th>
                      <th>About us Name</th>
                      <th>About us Description</th>
                    
                      <th style="width:160px">Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID</th>
                      <th>Image</th>
                      <th>About us Name</th>
                      <th>About us Description</th>
                    
                      <th style="width:160px">Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                      
                    <?php 
                      foreach ($aboutess as $aboutes){
                    ?>  
                    <tr>
                      <td><?=$aboutes['aboutes_id']; ?></td>
                      <td>
                          <img src="uploads/<?=$aboutes['aboutes_image']; ?>" width="100" />
                          
                      </td>
                      <td><?=$aboutes['aboutes_title']; ?></td>
                      <td><?=$aboutes['aboutes_description']; ?></td>
                      <td>
                          <a href="aboutus_details.php?aid=<?=$aboutes['aboutes_id']; ?>" class="btn btn-primary btn-circle "><i class="fas fa-info-circle" ></i></a>
                          <a href="aboutus_update.php?aid=<?=$aboutes['aboutes_id']; ?>" class="btn btn-info btn-circle"><i class="fas fa-edit" ></i></a>
                          <a href="aboutus_delete.php?aid=<?=$aboutes['aboutes_id']; ?>" class="btn btn-danger btn-circle"><i class="fas fa-trash" ></i></a>
                      </td>
                    </tr>
                      <?php } ?>
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          </div>

        
        </div>


   
<?php 
include './includes/footer.php';
?>