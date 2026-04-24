pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js" # Turbo を登録
pin "@hotwired/stimulus", to: "stimulus.min.js" # Stimulus を登録
pin_all_from "app/javascript/controllers", under: "controllers" # Stimulus のコントローラを登録