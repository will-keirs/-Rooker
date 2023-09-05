import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["clickable", "checkbox"];

  toggleActiveClass() {
    console.log(this.checkboxTarget)
    this.clickableTarget.classList.toggle("active");
    this.checkboxTarget.checked = !this.checkboxTarget.checked
  }
}
