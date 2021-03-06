

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  total_pets = 0
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  returned_pets = []
  for pets in pet_shop[:pets]
    if pets[:breed] == breed
      returned_pets.push(pets)
    end
  end
  return returned_pets
end

def find_pet_by_name(pet_shop, pet_name)
  pet_returned = {}
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
       pet_returned = pets
    end
  end
  if pet_returned != {}
    return pet_returned
  else
    return nil
  end
end

def remove_pet_by_name(pet_shop, pet_name)
  pet_returned = {}
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
       pet_returned = pets
    end
  end
  pet_shop[:pets].delete(pet_returned)
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && pet_shop != nil && customer != nil
    if customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)
      increase_pets_sold(pet_shop, 1)
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(pet_shop, pet[:price])
      remove_pet_by_name(pet_shop, pet[:name])
    end
  end
end
