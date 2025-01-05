<?php

require_once('connection.php');
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $markers = [];

    $stmt = $conn->prepare('SELECT * FROM spots');
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
        $marker = [
            'id' => $row['place_id'], // Include the ID
            'name' => $row['place_name'],
            'lat' => $row['place_lat'],
            'lng' => $row['place_lng'],
            'image' => $row['place_image'] ,
            'desc' => $row['place_desc'], 
        ];

        $markers[] = $marker;
    }

    echo json_encode($markers);
} else {
    echo json_encode(['error' => 'Invalid request method']);
}

$conn->close();

?>
