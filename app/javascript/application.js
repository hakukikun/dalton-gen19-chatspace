// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "@hotwired/turbo-rails"
import "contollers"
import "trix"
import "@rails/actiontext"

import LocalTime from "local-time"
import * as bootstrap from "bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
LocalTime.start()

