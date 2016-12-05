# Method to create a list
# "carrots apples cereal pizza"
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: [what data type goes here, array or hash?]

# steps:
def grocery_list(items)
  list = {}
  items.split(" ").each {|x| list[x] = 1}
  list
end

our_list = grocery_list("carrots apples cereal pizza")  # {"carrots" => 1 ...}

# [fill in any steps here]
# set default quantity
# print the list to the console [can you use one of your other methods here?]

# Method to add an item to a list

# input: item name and optional quantity
def add_item(list, new_item)
  list[new_item] = 1
end

add_item(our_list, "waffles")
p our_list

# steps:
# output:

# Method to remove an item from the list
def del_item(list, item_to_del)
  list.delete(item_to_del)
end

del_item(our_list, "pizza")
p our_list


# Method to update the quantity of an item
def update_quant(list, item, new_quantity)
  list[item] = new_quantity
end

update_quant(our_list, "waffles", 3)
p our_list


# Method to print a list and make it look pretty

def print_list(list)
  list.each do |x,y|
  puts "Your list consists of #{y} #{x}."
  end
end

print_list(our_list)