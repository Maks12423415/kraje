let continentsData = [];

async function fetchContinents() {
  try {
    const response = await fetch("http://localhost:3001/kontynenty");
    const json = await response.json();

    continentsData = json;

    const checkboxContainer = document.getElementById("checkbox");

    json.forEach((continent, index) => {
      const checkBox = document.createElement("input");
      checkBox.type = "checkbox";
      checkBox.id = `checkbox-${index}`;
      checkBox.value = continent.nazwa;

      const label = document.createElement("label");

      // Dodaj tekst z nazwą kontynentu do etykiety
      label.textContent = continent.nazwa;

      // Dodaj checkbox i etykietę do kontenera
      checkboxContainer.appendChild(checkBox);
      checkboxContainer.appendChild(label);
    });
  } catch (error) {
    console.error(
      "Wystąpił błąd podczas pobierania danych o kontynentach:",
      error
    );
  }
}

fetchContinents();
