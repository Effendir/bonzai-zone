import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickrRangePlugin";


export default class extends Controller {
  static targets = [ "startDateInput", "endDateInput" ]

  connect() {
    flatpickr(this.startDateInputTarget, {
      enableTime: false,
      minDate: "today",
      mode: "range",
      plugins: [new rangePlugin({ input: "#end_time"})]})

    flatpickr(this.endDateInputTarget, {})
  }
}
