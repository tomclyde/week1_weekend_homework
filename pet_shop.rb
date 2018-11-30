@pet_shop = {
  pets: [
    {
      name: "Sir Percy",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "King Bagdemagus",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "Sir Lancelot",
      pet_type: :dog,
      breed: "Pomsky",
      price: 1000,
    },
    {
      name: "Arthur",
      pet_type: :dog,
      breed: "Husky",
      price: 900,
    },
    {
      name: "Tristan",
      pet_type: :dog,
      breed: "Basset Hound",
      price: 800,
    },
    {
      name: "Merlin",
      pet_type: :cat,
      breed: "Egyptian Mau",
      price: 1500,
    }
  ],
  admin: {
    total_cash: 1000,
    pets_sold: 0,
  },
  name: "Camelot of Pets"
}

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
