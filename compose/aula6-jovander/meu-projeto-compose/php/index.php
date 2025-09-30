// php/index.php

<?php
// --- Conexão com o banco de dados MySQL ---
$host = 'db';            // CRUCIAL: O nome do host é o nome do serviço do banco de dados no docker-compose.yml
$db   = 'clientesdb';    // O nome do banco de dados (definido no docker-compose.yml)
$user = 'user';          // O usuário (definido no docker-compose.yml)
$pass = 'pass';          // A senha (definida no docker-compose.yml)

// A "String de Conexão" (DSN)
$dsn = "mysql:host=$host;dbname=$db;charset=utf8mb4";

try {
    $conn = new PDO($dsn, $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->query("SELECT Id_Cliente, Nome, Endereco, Cidade, Telefone FROM Clientes");

    // --- Exibição em HTML (código idêntico ao anterior) ---
    echo "<!DOCTYPE html><html><head><title>Lista de Clientes</title><style>body{font-family:Arial,sans-serif;background-color:#f5f5f5}table{border-collapse:collapse;width:80%;margin:20px auto;background-color:white;box-shadow:0 0 8px rgba(0,0,0,0.1)}th{background-color:#007BFF;color:white;padding:10px;text-align:left}td{padding:10px;border-bottom:1px solid #ddd}tr:nth-child(even){background-color:#f2f2f2}h2{text-align:center}</style></head><body>";
    echo "<h2>Lista de Clientes</h2><table><tr><th>ID</th><th>Nome</th><th>Endereço</th><th>Cidade</th><th>Telefone</th></tr>";
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr><td>{$row['Id_Cliente']}</td><td>{$row['Nome']}</td><td>{$row['Endereco']}</td><td>{$row['Cidade']}</td><td>{$row['Telefone']}</td></tr>";
    }
    echo "</table></body></html>";

} catch (PDOException $e) {
    die("Erro ao conectar com o banco de dados: " . $e->getMessage());
}
?>