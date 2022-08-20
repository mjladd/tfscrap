variable "ports-internal" {
    type = number
    description = "Internal Docker Port" 
    default = 80
}

variable "ports-external" {
    type = number
    description = "External Docker Port"
    default = 8000
}

variable "image-name" {
    type = string
    description = "Name of docker image to use"
    default = "nginx:latest"
}