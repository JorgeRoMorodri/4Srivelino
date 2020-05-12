<?php
include("bd_a.php");


if(isset($_POST['register'])){
    if(strlen($_POST['name'])>= 1 &&  strlen($_POST['email'])>= 1 ){
        $name=trim($_POST['name']);
        $email=trim($_POST['email']);
        $fechar=date("d / m / y");
        $consulta="INSERT INTO consola(nombre, email, fechar) VALUES ('$name','$email','$fechar')";
        $resultado = mysqli_query($con,$consulta);
        if($resultado){
            ?>
            <h3 class="fine">Ingreso Concluido</h3>

            <?php
        }else {
            ?>
            <h3 class="w">Ingreso No Concluido</h3>

            <?php
        }else {
            ?>
            <h3 class="w">Porfavor complete los campos</h3>

            <?php
        }
 
 }
}

?>