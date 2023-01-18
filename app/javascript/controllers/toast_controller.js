import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
  }
  notify() {
    var toastTrigger = document.getElementById('liveToastBtn')
    var toast = new bootstrap.Toast(toastLiveExample)
    toast.show()
  }
}
