
document.addEventListener('DOMContentLoaded', init)

function init() {
    getQuotes()
    getPictures()
}

function getQuotes() {
    fetch('http://localhost:3000/quotes')
    .then(res => res.json())
    .then(quoteData => console.log(quoteData))
}

function getPictures() {
    fetch('http://localhost:3000/pictures')
    .then(res => res.json())
    .then(pictureData => console.log(pictureData))
}