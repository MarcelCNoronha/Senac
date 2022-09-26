<?php
    
    echo "Marcel";
    echo "<br>";
    echo 1+2;
    echo "<br>";
    echo "<strong> Nome: </strong>" . $_GET['nome'] . " - " . "<strong>E-mail: </strong>" . $_GET['email'];
    echo "<br>";
    echo $_GET['senha'];
    echo "<br> <pre>";
    print_r($_GET);
    echo "</pre>";




?>

<h1><?php echo $_GET['nome']; ?></h1>
<?php  for ($i=0; $i < 10 ; $i++): ?>
    <h1><?php echo $_GET['nome'] . " Loop: " . $i; ?></h1>
<?php endfor; ?>