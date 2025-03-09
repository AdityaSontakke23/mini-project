function fetchAQI() {
    let city = document.getElementById("cityInput").value.trim();
    if (!city) {
        alert("Please enter a city name.");
        return;
    }

    let apiKey = "dc98805a7a56c06b10a11ccf5a0564225321ef02"; // API Key
    let url = `https://api.waqi.info/feed/${city}/?token=${apiKey}`;

    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log("API Response:", data);

            if (data.status === "ok") {
                let aqi = data.data.aqi;
                let temperature = data.data.iaqi.t ? `${data.data.iaqi.t.v}°C` : "N/A";
                let category = getAQICategory(aqi);

                document.getElementById("result").innerHTML = `
                    <div class="result-card">
                        <h4>City: ${city}</h4>
                        <p><strong>AQI:</strong> ${aqi}</p>
                        <p><strong>Category:</strong> ${category}</p>
                        <p><strong>Temperature:</strong> ${temperature}</p>
                    </div>
                `;
            } else {
                throw new Error("City Not Found. Enter Appropriate City Name.");
            }
        })
        .catch(error => {
            console.error("Error fetching AQI data:", error);
            document.getElementById("result").innerHTML = `
                <p class="text-danger">${error.message}</p>
            `;
        });
}

function getAQICategory(aqi) {
    if (aqi <= 50) {
        return "Good";
    } else if (aqi <= 100) {
        return "Moderate";
    } else if (aqi <= 150) {
        return "Unhealthy for Sensitive Groups";
    } else if (aqi <= 200) {
        return "Unhealthy";
    } else if (aqi <= 300) {
        return "Very Unhealthy";
    } else {
        return "Hazardous";
    }
}
