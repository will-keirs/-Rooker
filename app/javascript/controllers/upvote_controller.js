import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="upvote"
export default class extends Controller {
  static targets = ["targette"]
  connect() {
    console.log("kuku");
  }

  click(event) {
    this.targetteTarget.value += 1
  }
}
