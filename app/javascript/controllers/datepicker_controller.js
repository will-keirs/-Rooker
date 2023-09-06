import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// import "flatpickr/dist/flatpickr.min.css";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      dateFormat: "d-m-Y",
      enableTime: false,
    } );
  }
}
