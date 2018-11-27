<?php
//LOGIN
$user='kukat';
$password='eiJahpoo4mu';

//COnnection
$datab=$user;
$dsn="mysql:host=localhost;charset=UTF8;dbname=$datab";

//Connectionopen
$pdo=new PDO($dsn, $user, $password);

$pdoStat=$pdo->prepare('SELECT * FROM superkukat;');
$pdoStat->execute();
$hits=$pdoStat->fetchAll();

foreach($hits as $row) {
 echo "<p>".$row['id']." ".$row['name']." ".$row['color']. "</p>\n";
}

?>
