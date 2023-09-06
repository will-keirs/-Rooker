import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mailtoggler2"
export default class extends Controller {
  static targets = [ "bell", "bellname"]
  connect() {
    console.log("coucou");
  }

  togglebell(event) {
    console.log("kuku");

      this.bellTarget.classList.add("d-none");
      this.bellnameTarget.classList.remove("d-none");
  }
}
