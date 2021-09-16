variable "my_list" {
    default = ["zero","first", "second", "third", "forth"]
}

# null_resource: treated like normal resources, but don't do anything
resource "null_resource" "default" {
    count = length(var.my_list)

    # triggers: map of values which should cause this set of provisioners to re-run
    triggers = {
        list_index = count.index
        list_value = var.my_list[count.index]
    }
}

# with count, any changes in list order TF will force replacement of all resources