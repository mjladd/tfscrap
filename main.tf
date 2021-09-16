variable "my_list" {
    default = ["first", "second", "third"]
}

resource "null_resource" "default" {
    count = length(var.my_list)
    triggers = {
        list_index = count.index
        list_value = var.my_list[count.index]
    }
}