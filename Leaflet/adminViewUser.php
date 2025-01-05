<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/x-icon" href="icon/tayug_icon-removebg-preview.png">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        #myTable_wrapper {
            margin: 20px;
        }

        #myTable {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        #myTable th,
        #myTable td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        #myTable th {
            background-color: #f2f2f2;
        }

        .editBtn,
        .deleteBtn {
            padding: 8px;
            cursor: pointer;
            border: none;
            color: #fff;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            border-radius: 4px;
        }

        .editBtn {
            background-color: #4CAF50;
        }

        .deleteBtn {
            background-color: #f44336;
        }
    </style>
</head>

<body>
    <h1>List of Users</h1>
    <?php
    echo "
        <div id=\"col-sm-8 mx-auto\">
            <table id=\"myTable\" id=\"display\">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>AGE</th>
                        <th>PHONE NUMBER</th>
                        <th>EMAIL ADDRESS</th>
                        <th>LOGIN USER</th>
                        <th>EDIT</th>
                        <th>DELETE</th>
                        <td> </td>
                        <td> </td>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div> 
    ";
    ?>
<script>
        $(document).ready(function() {
            loaddata();

            function loaddata() {
                $('#myTable').on('click', '.editBtn', function() {
                    var userId = $(this).data('id');
                    window.location.href = 'editUserPage.php?userId=' + userId;
                });

                $('#myTable').on('click', '.deleteBtn', function() {
                    var userId = $(this).data('id');
                    var confirmDelete = confirm('Are you sure you want to delete user ID ' + userId + '?');
                    if (confirmDelete) {
                        $.ajax({
                            url: 'deleteUser.php',
                            method: 'POST',
                            dataType: 'json',
                            data: {
                                userId: userId
                            },
                            success: function(result) {
                                console.log(result);
                                alert('Deleting user ID ' + userId);
                                location.reload();

                            }
                        });
                    }
                });
                $.ajax({
                    url: "adminUsersData.php",
                    dataType: 'json',
                    success: function(result) {
                        var result = eval(result);
                        $("#myTable").DataTable({
                            processing: true,
                            serverside: true,
                            destroy: true,
                            data: result,
                            columns: [{
                                    data: 0
                                },
                                {
                                    data: 1
                                },
                                {
                                    data: 3
                                },
                                {
                                    data: 4
                                },
                                {
                                    data: 5
                                },
                                {
                                    data: 6
                                },
                                {
                                    data: 7
                                },
                                {
                                    data: null,
                                    render: function(data, type, row) {
                                        return '<button class="editBtn" data-id="' + data[0] + '">Edit</button>';
                                    }
                                },
                                {
                                    data: null,
                                    render: function(data, type, row) {
                                        return '<button class="deleteBtn" data-id="' + data[0] + '">Delete</button>';
                                    }
                                }

                            ],

                        });

                    }
                });
                $('#myTable').on('click', '.editBtn', function() {
                    var userId = $(this).data('id');
                    window.location.href = 'editUserPage.php?userId=' + userId;
                });
                $.ajax({
                    url: 'editUser.php',
                    method: 'POST',
                    dataType: 'json',
                    data: {
                        userId: userId
                    },
                    success: function(result) {
                        console.log(result);
                        alert('Edit button clicked for user ID ' + userId);
                    }
                });

                $('#myTable').on('click', '.deleteBtn', function() {
                    var userId = $(this).data('id');
                    var confirmDelete = confirm('Are you sure you want to delete user ID ' + userId + '?');
                    if (confirmDelete) {
                        $.ajax({
                            url: 'deleteUser.php',
                            method: 'POST',
                            dataType: 'json',
                            data: {
                                userId: userId
                            },
                            success: function(result) {
                                console.log(result);
                                alert('Deleting user ID ' + userId);
                            }
                        });
                    }
                });
            }
        });
    </script>

</body>

</html>