import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="note-chart"
export default class extends Controller {
  static targets = [ "data" ]
  connect() {
    if(this.element.id === "main-element") {
      new Chartkick.LineChart("chart", JSON.parse(this.dataTarget.value))

      return
    }

    this.chart = Chartkick.charts["chart"]
    this.chart.updateData(JSON.parse(this.dataTarget.value))
  }
}
