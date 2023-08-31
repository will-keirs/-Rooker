import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="match"
export default class extends Controller {

   static targets = ["selection"]

  connect() {
    console.log("bonjour");
  }
  selected() {
    console.log("coucou")
    this.selectedTargetElement += 1
  }
  next() {
    console.log("pas coucou");
  }
}
