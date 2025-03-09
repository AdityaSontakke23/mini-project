const cities = [
  {
    name: "Mumbai",
    type: "urban",
    practices: [
      { title: "Rainwater Harvesting Systems", description: "Maximize the usage of monsoon rainfall for domestic and industrial needs." },
      { title: "Green Building Design", description: "Adopt eco-friendly building materials and energy-efficient designs." },
      { title: "Solar Rooftop Initiatives", description: "Encourage rooftop solar installations for residential and commercial buildings." }
    ]
  },
  {
    name: "Delhi",
    type: "urban",
    practices: [
      { title: "Air Pollution Control", description: "Promote cleaner fuels and stricter emission norms to reduce smog." },
      { title: "Urban Farming", description: "Encourage rooftop and community gardens to boost green cover." },
      { title: "Public Transport Upgrades", description: "Expand and modernize public transit to reduce congestion and emissions." }
    ]
  },
  {
    name: "Bengaluru",
    type: "urban",
    practices: [
      { title: "Water Recycling", description: "Mandate greywater reuse in residential complexes." },
      { title: "Solar-Powered Streetlights", description: "Replace conventional streetlights with solar-powered LED fixtures." },
      { title: "Green Belt Preservation", description: "Protect lakes and green spaces to mitigate urban heat." }
    ]
  },
  {
    name: "Chennai",
    type: "urban",
    practices: [
      { title: "Desalination & Water Management", description: "Improve water supply resilience with desalination and efficient usage." },
      { title: "Waste Segregation", description: "Implement door-to-door segregation and composting of organic waste." },
      { title: "Cycling Infrastructure", description: "Develop dedicated lanes to reduce traffic congestion and pollution." }
    ]
  },
  {
    name: "Kolkata",
    type: "urban",
    practices: [
      { title: "Heritage Building Retrofitting", description: "Upgrade historical structures for energy efficiency." },
      { title: "Electric Tram Revival", description: "Modernize and expand the tram network with electric systems." },
      { title: "Urban Afforestation", description: "Increase tree coverage in parks and along roadsides." }
    ]
  },
  {
    name: "Hyderabad",
    type: "urban",
    practices: [
      { title: "Sustainable IT Parks", description: "Adopt renewable energy and green designs in tech campuses." },
      { title: "Lake Restoration", description: "Restore local lakes to improve groundwater recharge and biodiversity." },
      { title: "Eco-Friendly Public Transport", description: "Adopt electric buses and improve last-mile connectivity." }
    ]
  },
  {
    name: "Pune",
    type: "urban",
    practices: [
      { title: "BRT & E-Vehicles", description: "Expand the Bus Rapid Transit system and promote electric vehicles." },
      { title: "Rainwater Harvesting", description: "Mandate rainwater collection in new constructions." },
      { title: "Urban Biodiversity", description: "Protect green corridors and enhance local flora and fauna." }
    ]
  },
  {
    name: "Munnar",
    type: "rural",
    practices: [
      { title: "Sustainable Tea Plantations", description: "Adopt organic methods and rainwater harvesting in tea estates." },
      { title: "Community Composting", description: "Encourage composting of organic waste for local farms." },
      { title: "Eco-Tourism", description: "Promote responsible tourism with minimal environmental impact." }
    ]
  },
  {
    name: "Madikeri",
    type: "rural",
    practices: [
      { title: "Organic Coffee Cultivation", description: "Support organic farming practices in coffee plantations." },
      { title: "Biodiversity Conservation", description: "Protect native flora and fauna through sustainable agriculture." },
      { title: "Water Conservation Measures", description: "Implement efficient irrigation and rainwater harvesting techniques." }
    ]
  },
  {
    name: "Rishikesh",
    type: "rural",
    practices: [
      { title: "Riverfront Cleanliness Initiatives", description: "Organize community efforts to keep the Ganges clean." },
      { title: "Eco-Tourism Promotion", description: "Encourage sustainable tourism practices in and around the city." },
      { title: "Yoga & Wellness Sustainability", description: "Promote eco-friendly practices in wellness centers and retreats." }
    ]
  },
  {
    name: "Hampi",
    type: "rural",
    practices: [
      { title: "Heritage Conservation", description: "Preserve historical ruins through sustainable restoration methods." },
      { title: "Sustainable Tourism", description: "Encourage low-impact tourism to protect the ancient landscape." },
      { title: "Water Harvesting Systems", description: "Install rainwater harvesting to support local agriculture." }
    ]
  },
  {
    name: "Pushkar",
    type: "rural",
    practices: [
      { title: "Solar Energy Adoption", description: "Promote the use of solar panels for local establishments." },
      { title: "Waste Management Initiatives", description: "Implement recycling and composting programs during festivals." },
      { title: "Water Conservation & Sacred Ecology", description: "Preserve traditional water bodies and promote sustainable practices." }
    ]
  }
];

  
  document.getElementById("citySelect").addEventListener("change", function() {
    const selectedCityName = this.value;
    // Find the city object based on the selected city name
    const city = cities.find(city => city.name === selectedCityName);
    displayPractices(city ? city.practices : []);
  });
  
  function displayPractices(practices) {
    const resultsDiv = document.getElementById("results");
    resultsDiv.innerHTML = "";
    if (practices.length) {
      practices.forEach(practice => {
        const cardDiv = document.createElement("div");
        cardDiv.className = "col-md-4 mb-3";
        cardDiv.innerHTML = `
          <div class="card h-100">
            <div class="card-body">
              <h5 class="card-title">${practice.title}</h5>
              <p class="card-text">${practice.description}</p>
            </div>
          </div>
        `;
        resultsDiv.appendChild(cardDiv);
      });
    } else {
      resultsDiv.innerHTML = "<p class='text-center'>No sustainable practices available for this city.</p>";
    }
  }
  