variable "my_list" {
    default = ["zero","first", "second", "third", "forth"]
}

# null_resource: treated like normal resources, but don't do anything
resource "null_resource" "default" {
    for_each = toset(var.my_list)

    # triggers: map of values which should cause this set of provisioners to re-run
    triggers = {
        list_index = each.key
        list_value = each.value
    }
}


# for_each takes a map/set as input and uses the key of the map as an index of instances
# toset: function that converts its argument to a set value

# Note; if the order of the list changes, there is no change ot the output. If a new item is added to the list, a new resource is created.