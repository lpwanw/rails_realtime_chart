import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="note-chart"
export default class extends Controller {
  static targets = [ "data" ]
  connect() {
    if(this.element.id === "main-element") {
      new Chartkick.LineChart("chart", "/notes/query")

      return
    }

    this.chart = Chartkick.charts["chart"]
    this.chart.updateData("/notes/query")
  }
}
