Dog.destroy_all
Product.destroy_all
Purchase.destroy_all

dog1 = Dog.create breed: 'Pitbull', age: 10, name: 'Duke', weight: 85, size: 'Large', life_expectancy: 15, sex: 'Male', price: 400
dog2 = Dog.create breed: 'Wolf', age: 4, name: 'Kachina', weight: 75, size: 'Large', life_expectancy: 20, sex: 'Female', price: 100
dog3 = Dog.create breed: 'Jackrussel', age: 10, name: 'doby', weight: 10, size: 'Small', life_expectancy: 15, sex: 'Female', price: 100
dog4 = Dog.create breed: 'Doberman', age: 10, name: 'sky', weight: 65, size: 'Large', life_expectancy: 12, sex: 'Male', price: 300
dog5 = Dog.create breed: 'Cane Corso', age: 5, name: 'liam', weight: 80, size: 'Medium', life_expectancy: 12, sex: 'Male', price: 400
dog6 = Dog.create breed: 'Great Dane', age: 5, name: 'Luke', weight: 18, size: 'Large', life_expectancy: 13,sex: 'Male', price: 200
dog7 = Dog.create breed: 'Wolfhound', age: 4, name: 'D_boy', weight: 60, size: 'Large', life_expectancy: 10, sex: 'Male', price: 400
dog8 = Dog.create breed: 'Neapolitan mastiff', age: 10, name: 'Mike', weight: 80, size: 'Medium', life_expectancy: 10, sex: 'Male', price: 300
dog9 = Dog.create breed: 'St. Bernard', age: 10, name: 'Jake', weight: 55, size: 'Large', life_expectancy: 10, sex: 'Female', price: 300
dog10 = Dog.create breed: 'Akita', age: 10, name: 'Olly', weight: 60, size: 'Large', life_expectancy: 15, sex: 'Female', price: 100
dog11 = Dog.create breed: 'Deerhound', age: 10, name: 'Nina', weight: 65, size: 'Large', life_expectancy: 11, sex: 'Female', price: 200
dog12 = Dog.create breed: 'Bullmastivel', age: 10, name: 'Roxy', weight: 65, size: 'Medium', life_expectancy: 10, sex: 'Male', price: 100
dog13 = Dog.create breed: 'Alaskan Malamute', age: 10, name: 'Eve', weight: 70, size: 'Large', life_expectancy: 12, sex: 'Male', price: 250
dog14 = Dog.create breed: 'Chihuahua', age: 10, name: 'Thor', weight: 7, size: 'Small', life_expectancy: 20, sex: 'Male', price: 200
dog15 = Dog.create breed: 'Tibetan Mastive', age: 7, name: 'Lucifer', weight: 145, size: 'Large', life_expectancy: 15, sex: 'Male', price: 500

product1 = Product.create name: 'Leash', description: 'Flexi Leash', price: 25
product2 = Product.create name: 'Collar', description: 'Studded', price: 20
product2 = Product.create name: 'Bowl', description: 'Water Fountain', price: 20
product2 = Product.create name: 'Treats', description: 'Milk Bone', price: 20
product2 = Product.create name: 'Food', description: 'Healthy Organic Wet-food', price: 20
product2 = Product.create name: 'Bed', description: 'Cozy', price: 20
product2 = Product.create name: 'Toy', description: 'Bone', price: 20

# purchase1 = Purchase.create dog: dog1, product: product2


