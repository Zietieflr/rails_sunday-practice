const breweryCard = document.querySelector("#brewery-card")
const indexURL = "http://localhost:3000/breweries/"

fetch(indexURL)
  .then(response => response.json())
  .then(results => displayBreweries(results))

function displayBreweries(results) {
  results.forEach(result => {
    showBrewery(result)
    displayOptions(result)
  })
}

function showBrewery(brewery) {
  console.log(brewery)
  const h3 = document.createElement("h3")
  h3.innerHTML = `
    <a href="brewery.html?id=${brewery.id}">${brewery.name}</a>`
  breweryCard.appendChild(h3)
}

function displayOptions(brewery) {
  const dropdown = document.getElementById("dropdown")
  const options = document.createElement('option')
  options.innerText = brewery.name
  options.value = brewery.id 
  dropdown.appendChild(options)
}