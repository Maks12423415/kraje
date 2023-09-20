async function fetchContinents() {
    try {
      const response = await fetch("http://192.168.15.13:3000/kontynenty");
      const continents = await response.json();
  
      // Pobierz kontener, do którego będziesz dodawać checkboxy
      const container = document.getElementById("checkboxContainer");
  
      // Iteruj przez kontynenty i twórz checkboxy
      continents.forEach((continent) => {
        const checkBox = document.createElement("input");
        checkBox.type = "checkbox";
        checkBox.id = continent.kontynent; // Ustaw id checkboxa na nazwę kontynentu
        checkBox.value = continent.kontynent; // Ustaw wartość checkboxa na nazwę kontynentu
        checkBox.name = "continents"; // Ustaw nazwę grupy checkboxów, jeśli potrzebujesz grupować je razem
  
        // Dodaj etykietę do checkboxa
        const label = document.createElement("label");
        label.textContent = continent.kontynent;
        label.htmlFor = continent.kontynent; // Połącz etykietę z checkboxem za pomocą "for" i "id"
  
        // Dodaj checkbox i etykietę do kontenera
        container.appendChild(checkBox);
        container.appendChild(label);
      });
    } catch (error) {
      console.error("Błąd podczas pobierania danych o kontynentach", error);
    }
  }
  
  // Wywołaj funkcję, aby pobrać kontynenty i utworzyć checkboxy po załadowaniu strony
  fetchContinents();

  

  // Funkcja do filtrowania i wyświetlania państw na podstawie kontynentu
function filterCountriesByContinent(checkboxes) {
    // Pobierz wszystkie zaznaczone kontynenty
    const selectedContinents = Array.from(checkboxes)
      .filter((checkbox) => checkbox.checked)
      .map((checkbox) => checkbox.getAttribute("data-continents"));
  
    // Jeśli nie wybrano żadnych kontynentów, pokaż wszystkie państwa
    if (selectedContinents.length === 0) {
      // Tutaj możesz wyświetlić wszystkie państwa lub zresetować wcześniejszy wynik
    } else {
      // W przeciwnym razie filtrować państwa na podstawie wybranych kontynentów
      const filteredCountries = countries.filter((country) =>
        selectedContinents.includes(country.kontynent)
      );
  
      // Tutaj możesz wyświetlić państwa na stronie
      console.log(filteredCountries);
    }
  }
  
  // Pobierz wszystkie checkboxy kontynentów
  const continentCheckboxes = document.querySelectorAll('[data-continents]');
  
  // Dodaj obsługę zdarzenia zmiany stanu checkboxa
  continentCheckboxes.forEach((checkbox) => {
    checkbox.addEventListener("change", () => {
      // Po zmianie stanu checkboxa wywołaj funkcję do filtrowania państw
      filterCountriesByContinent(continentCheckboxes);
    });
  });
  