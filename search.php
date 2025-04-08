<?php
// Database credentials
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'beachfinderdb1';

// Connect to the database
$conn = new mysqli($host, $username, $password, $database);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the beach name from the search input
$beach_name = isset($_GET['beach_name']) ? trim($_GET['beach_name']) : '';

if ($beach_name !== '') {
    // Query the database for the beach
    $stmt = $conn->prepare("SELECT * FROM Beaches WHERE name LIKE ?");
    $search_term = "%$beach_name%";
    $stmt->bind_param("s", $search_term);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch the beach data
        $beach = $result->fetch_assoc();

        // Get live weather data using OpenWeatherMap API
        $api_key = '600ca99b78398a767ed407b9f6b71b9f'; // Replace with your actual API key
        $lat = $beach['latitude'];
        $lon = $beach['longitude'];
        $weather_api_url = "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$api_key&units=metric";

        $weather_response = file_get_contents($weather_api_url);
        if ($weather_response !== false) {
            $weather_data = json_decode($weather_response, true);

            // Display the beach and weather information
            echo "<h1>{$beach['name']}</h1>";
            echo "<p>{$beach['description']}</p>";
            echo "<p>Activities: {$beach['activities']}</p>";
            echo "<p>Location: Latitude {$beach['latitude']}, Longitude {$beach['longitude']}</p>";
            
            if (isset($weather_data['main']['temp']) && isset($weather_data['weather'][0]['description'])) {
                echo "<p>Current Weather: " . $weather_data['main']['temp'] . "°C, " . $weather_data['weather'][0]['description'] . "</p>";
            } else {
                echo "<p>Unable to fetch current weather data.</p>";
            }
            
            echo "<img src='{$beach['image_url']}' alt='{$beach['name']}' style='width:100%; max-width:600px;'>";
        } else {
            echo "<p>Could not retrieve weather data. Please try again later.</p>";
        }
    } else {
        echo "<p>No beach found with the name '$beach_name'.</p>";
    }
} else {
    echo "<p>Please enter a beach name to search.</p>";
}
// Test if the form is sending data
if (isset($_GET['beach_name'])) {
    echo "Search term received: " . htmlspecialchars($_GET['beach_name']);
} else {
    echo "No search term received!";
}

// Close the database connection
$conn->close();
?>
