def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.length do 
    if collection[index][:item] == name
      return collection[index]
    end 
      index += 1 
  end 
end

def consolidate_cart(cart)
  array = []
  index = 0 
  while index < cart.length do 
    items_in_cart = find_item_by_name_in_collection(cart[index][:item], array)
    if items_in_cart
      items_in_cart[:count] += 1 
    else
      items_in_cart = {
      :item => cart[index][:item],
      :price => cart[index][:price],
      :clearance => cart[index][:clearance],
      :count => 1,
      }
      array << items_in_cart
    end 
  index += 1 
  end
  array 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  index = 0
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  index = 0 
  while index < cart.length do
    if cart[index][:clearance]
      cart[index][:price] = cart[index][:price] * 0.8
    end 
    index += 1 
  end
  cart  
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
