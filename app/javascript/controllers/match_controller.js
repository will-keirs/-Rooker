import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="match"
export default class extends Controller {

   static targets = ["selection", "form", "container"]
   static values = {
    missionId: Number,
    dev: Number
 }

  connect() {
    console.log("bonjour");
    console.log(this.devValue);
  }


  selected(event) {
    event.preventDefault()
    const url = `${this.formTarget.action}`

    fetch(url, {
      method: "POST",
      "content-type": "text/plain",
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then(data => {
      this.element.innerHTML = data
    })
  }

  next(event) {
    event.preventDefault()
    const url = `${this.formTarget.action}`

    fetch(url, {
      method: "POST",
      "content-type": "text/plain",
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then(data => {
      this.element.innerHTML = data
    })
  }
}
