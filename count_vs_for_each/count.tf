variable "my_list_1" {
    default = ["zero","first", "second", "third", "forth"]
}

# null_resource: treated like normal resources, but don't do anything
resource "null_resource" "default_1" {
    count = length(var.my_list_1)

    # triggers: map of values which should cause this set of provisioners to re-run
    triggers = {
        list_index = count.index
        list_value = var.my_list_1[count.index]
    }
}

# with count, any changes in list order TF will force replacement of all resources