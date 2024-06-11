<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "travel_agency";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Помилка підключення: " . $conn->connect_error);
}

$sql = "SELECT TourName, Price, Location, NumberOfDays, Photo FROM Tours";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style/style.css" />
    <title>Подорожі Україною</title>
</head>

<body>
    <section class="nav-bar">
        <div class="logo">Подорожі Україною</div>
        <ul class="menu">
            <li><a href="index.php">Головна</a></li>
            <li><a href="about.html">Про нас</a></li>
            <li><a href="contacts.html">Контакти</a></li>
        </ul>
        </div>
    </section>

    <section class="banner">
        <div class="banner-text-item">
            <div class="banner-heading">
                <h1>Знайди свій тур!</h1>
                <button onclick="scrollToTours()" class="button">
                    <p>Дивитися тури</p>
                </button>
            </div>
        </div>
    </section>

    <section id="places" class="places">
        <div class="places-text">
            <small>ОСОБЛИВІ ПАКЕТИ ТУРІВ</small>
            <h2>Улюблені місця</h2>
        </div>

        <div class="cards">
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<div class="card">
                            <div class="zoom-img">
                                <div class="img-card">
                                    <img src="images/' . $row["Photo"] . '">
                                </div>
                            </div>
                            <div class="text">
                                <h2>' . $row["TourName"] . '</h2>
                                <p class="cost">₴' . $row["Price"] . ' / За людину</p>
                                <div class="card-box">
                                    <p class="time">' . $row["NumberOfDays"] . ' Дні(в)</p>
                                    <p class="location">⚲ ' . $row["Location"] . '</p>
                                </div>
                            </div>
                        </div>';
                }
            } else {
                echo "0 results";
            }
            $conn->close();
            ?>
        </div>
    </section>

    <div class="footer">
        <p>&copy; 2024 Туристична агенція "Подорожі Україною". Всі права захищені.</p>
    </div>

    <script src="script.js"></script>

</body>

</html>