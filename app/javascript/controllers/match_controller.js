import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="match"
export default class extends Controller {

   static targets = ["selection", "formSelect","formNext", "container"]
   static values = {
    index: Number,
    missionId: Number,
    dev: Number
 }

  selected(event) {
    event.preventDefault()
    const url = `${this.formSelectTarget.action}`

    fetch(url, {
      method: "POST",
      "content-type": "text/plain",
      body: new FormData(this.formSelectTarget)
    })
    .then(response => response.text())
    .then(data => {
      this.element.innerHTML = data
    })
  }

  next(event) {
    event.preventDefault()
    const url = `${this.formNextTarget.action}`

    fetch(url, {
      method: "POST",
      "content-type": "text/plain",
      body: new FormData(this.formNextTarget)
    })
    .then(response => response.text())
    .then(data => {
      this.element.innerHTML = data
    })
  }
}
