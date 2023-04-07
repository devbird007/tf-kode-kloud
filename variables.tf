variable "filename" {

}
variable "content" {

}
variable "prefix" {

}
variable "separator" {

}
variable "length" {

}

variable "file-content" {
    type = map(string)
    default = {
        "statement1" = "Ruby ain't my muthafuckin' true name"
        "statement2" = "If I said it out, you would combust into a blue flame"
    }
}

variable "pet_count" {
    default = {
        "dogs" = "3"
        "cats" = "2"
        "goldfish" = "1"
    }
    type = map(number) 
}
# Object input variable
variable "bella" {
    type = object({
        name            = string
        color           = string
        age             = number
        food            = list(string)
        favorite_pet    = bool
    })
    default = {
        name            = "bella"
        color           = "brown"
        age             = 7
        food            = ["fish", "chicken", "turkey"]
        favorite_pet    = true
    }
}
# Tuple input variable
variable kitty {
    type    = tuple([string, number, bool])
    default = ["cat", 7, true]
}
