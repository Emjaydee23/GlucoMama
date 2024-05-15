import { Application } from "@hotwired/stimulus"
//= require date_wrapper
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
