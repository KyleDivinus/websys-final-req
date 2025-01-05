<?php
session_start();
include "connection.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="icon/tayug_icon-removebg-preview.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Document</title>
    <style>
        * {
            padding: 5px;
        }

        h1 {
            font-style: italic;
            font-family: Arial, Helvetica, sans-serif;
           
        }

        body {
            background-color: #FBF9F1;

        }

        .image-container {
            background-color: white;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px;
        }

        .image-box {
            width: 600px;
            margin-bottom: 20px;
            border: 1px solid #0F1035;
            box-sizing: border-box;
            transition: box-shadow 0.3s;
        }

        img {
            width: 400px;
            height: 350px;
            object-fit: cover;
            transition: width 0.3s;
        }

        img:hover {
            width: 500px;
        }

        .image-box:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 1, 0.7);
        }

        p {
            font-style: italic;
            font-size: 18px;
        }
    </style>
</head>

<body>
    <center>
        <h1> List of Spots </h1>
    </center>
    <div class="search-container">
        <input type="text" id="searchInput" placeholder="Search...">
        <script>
            $(document).ready(function() {
                $("#searchInput").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $(".image-box").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                    });
                });
            });
        </script>
    </div>
    <div class="image-container">
        <?php
        $sql = ("SELECT * FROM spots ORDER BY place_name ASC");
        $result = $conn->query($sql);

        while ($row = mysqli_fetch_assoc($result)) {
            $placeID = $row['place_id'];
            $placeName = $row["place_name"];
            $place_image = $row['place_image'];

            echo "
                <div class='image-box'>
                    <p>$placeName</p>
                    <a href='spotListView.php?id=" . $placeID . "'><img src='$place_image' alt='$placeName'/></a>
                </div>
                ";
        }
        ?>
    </div>
</body>

</html>