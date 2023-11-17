<?php
include "connect.php";
$query = "SELECT * FROM `equipes`;";
$resultat = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div><img src="logo.png" alt="icone" class="w-25 h-25" ></div>
    <div> <h1 class="text-center">Tableau <a href="index.php">Membres & Equipes</a> / <a href="Members.php">Membres</a> / <a href="#">Equipes</a>  </h1></div>
   <div class=" d-flex justify-content-center ">
      <div class="col-md-10 px-2 ">
      <table class="table table-striped mt-4 rounded-top-4 overflow-hidden ">
        <thead>
           <tr>
             <th class=" align-middle">ID_Equipe</th>
             <th class=" align-middle">Date_creation</th>
             <th class=" align-middle">Nom_equipe</th>
           </tr>
        </thead>
        <tbody>
            <tr>
            <?php
        while($row = mysqli_fetch_assoc($resultat)){
            ?>    
             <td class=" align-middle"><?php echo $row['ID_Equipe']; ?></th>
             <td class=" align-middle"><?php echo $row['Date_creation']; ?></th>
             <td class=" align-middle"><?php echo $row['Nom_equipe']; ?></th> 
            </tr>
        <?php    
        }
        ?>
            
        </tbody>
       </table>
        </div>
    
</body>
</html>