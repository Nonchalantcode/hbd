import Fireworks from "fireworks-js"
import "./main.css"

let div = document.createElement('div')
div.classList.add('fireworks-container')
document.body.appendChild(div)
const fireworks = new Fireworks(div)
fireworks.start()
