import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["clickable"];

  toggleActiveClass() {
    console.log(this.clickableTarget)
    this.clickableTarget.classList.toggle("active");
  }

  // connect() {
  //   console.log('coucou')
  // }
}
