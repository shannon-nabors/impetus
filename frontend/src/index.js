seededPics = []

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
    .then(pictureData => {
        console.log(pictureData)
        seededPics = pictureData
        setPicture()
        // document.body.style.backgroundImage = `url(${pictureData.pictures[0].url})`
    })
}

function setPicture() {
    let pic = randomFromArray(seededPics["pictures"])
    console.log(`url(${pic.url})`)
    document.body.style.backgroundImage = `url(${pic.url.split(' ')[2]})`
    document.body.style.backgroundSize = "cover"
}

function randomFromArray(items) {
    return items[Math.floor(Math.random()*items.length)]
}