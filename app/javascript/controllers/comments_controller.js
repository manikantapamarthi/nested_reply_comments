import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  static targets = ["reply"]
  connect() {
  }

  reply(e) {
    e.preventDefault()
    this.replyTarget.nextElementSibling.style.display = 'block';
  }
}
