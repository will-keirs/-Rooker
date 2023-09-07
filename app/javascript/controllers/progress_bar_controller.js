import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progress-bar"
export default class extends Controller {

  static targets = ["firstCircle", "progressFill", "secondProgressFill" ]
  connect() {
    console.log('coucou')
  }

  progressFillTargetConnected(element) {
    console.log("first")
    window.setTimeout(() => {
      this.progressFillTarget.classList.add("active-progress")
    }, 500)
    window.setTimeout(() => {
      this.firstCircleTarget.classList.add("activated")
    }, 2100)

  }

  secondProgressFillTargetConnected(element) {
    console.log("second")
    window.setTimeout(() => {
      this.secondProgressFillTarget.classList.add("active-progress")
    }, 500)
    window.setTimeout(() => {
      this.firstCircleTarget.classList.add("activated")
    }, 2100)
  }
}
