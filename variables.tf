variable "user" {
  type = object({
    civilite   = string,
    firstname  = string,
    name       = string,
    experience = list(string),
    id         = string
  })
  default = {
    civilite   = "M."
    experience = ["1 an dev Web", "3 mois Helpdesk"]
    firstname  = "Nicolas"
    name       = "Denorme"
    id         = "1"
  }
}
