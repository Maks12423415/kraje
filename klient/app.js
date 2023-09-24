let continentsData = [];

async function fetchContinents() {
  try {
    const response = await fetch("http://localhost:3000/kontynenty");
    const json = await response.json();

    continentsData = json;

<<<<<<< HEAD
    const checkboxContainer = document.getElementById("checkbox");
=======
    const checkboxContainer = document.getElementById("checkbox-container");
>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f

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
<<<<<<< HEAD
    console.error(
      "Wystąpił błąd podczas pobierania danych o kontynentach:",
      error
    );
=======
    console.error("Wystąpił błąd podczas pobierania danych o kontynentach:", error);
>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f
  }
}

fetchContinents();
<<<<<<< HEAD
=======

>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f
