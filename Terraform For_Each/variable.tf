# variable "rg_panasonic" {
#   type = set(string)
# }

variable "rg_fruit" {
  type = map(object({
    name     = string
    location = string
  }))

}