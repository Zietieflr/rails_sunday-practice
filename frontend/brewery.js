const search_params = new URLSearchParams(window.location.search)
const id = search_params.get("id")
const brewery = document.getElementById('brewery')

fetch(`http://localhost:3000/breweries/${id}`)
  .then(response => response.json())
  .then(result => showBrewery(result))

function showBrewery(result) {
  const ul = document.createElement("ul")

  ul.innerText = result.name
  brewery.appendChild(ul)
  showAllBeers(result.beers, ul)
}

function showAllBeers(beers, ul) {
  beers.forEach(beer => {
    showBeer(beer, ul)
  })
}

function showBeer(beer, ul) {
  const li = document.createElement("li")
  li.innerHTML = `<a href="beer.html?id=${beer.id}">${beer.name}</a>`
  ul.appendChild(li)
}