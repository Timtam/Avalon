local alias = require("libraries.reflex").alias

alias {
  match  = [[^\s*atcp\s+debug\s*$]],
  regexp = true,
  script = "toggle_debug"
}

alias {
  match  = [[^\s*atcp\s+send\s+(.*)$]],
  regexp = true,
  script = "send_command"
}