import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="upvote"
export default class extends Controller {
  static targets = ["targette","targetteur"]
   isIncremented = false;

   click(event) {
     console.log("kuku2");
     if (!this.isIncremented) {
       const currentValue = parseInt(this.targetteTarget.innerHTML);
       const newValue = currentValue + 1;
       this.targetteTarget.classList.add("white");
       this.targetteurTarget.classList.add("white");
       this.targetteTarget.innerHTML = newValue;
       this.isIncremented = true;
     }
   }
}
