import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mailtoggler"
export default class extends Controller {
  static targets = [ "mail", "email", "bell", "bellname"]

  isMailVisible = true;

  toggle(event) {
    this.isMailVisible = !this.isMailVisible;
    if (this.isMailVisible) {
      this.mailTarget.classList.remove("d-none");
      this.emailTarget.classList.add("d-none");
    } else {
      this.mailTarget.classList.add("d-none");
      this.emailTarget.classList.remove("d-none");
    }
  }
}
