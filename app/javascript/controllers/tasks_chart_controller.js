import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasks-chart"
export default class extends Controller {
  connect() {
    if(this.element.id === "main-element") {
      new Chartkick.BarChart("chart", "/tasks/query", {stacked: true, colors: ["#fc564f", "#009fdc", "#65d934"]})

      return
    }

    this.chart = Chartkick.charts["chart"]
    this.chart.updateData("/tasks/query", {stacked: true, colors: ["#fc564f", "#009fdc", "#65d934"]})
  }
}
