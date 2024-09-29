# Activity 5

* Create a new model called product
  * Columns:
  * name
  * description
  * quantity
  * price
  * available
  * released_at
  * expiry_date
  * discount
```ruby = 
class CreateProductsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products_tables do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.boolean :available
      t.time :released_at
      t.time :expiry_date
      t.integer :discount
      t.timestamps
    end
  end
end
```
*   Create atleast 10 records using the create method
```ruby =
Product.create(name: "Product 1", description: "Whole milk", quantity: 3, price: 20.50, available: true, released_at: Time.now - 5.days, expiry_date: Time.now + 25.days, discount: 10)
Product.create(name: "Product 2", description: "Almond milk", quantity: 5, price: 25.00, available: true, released_at: Time.now - 10.days, expiry_date: Time.now + 30.days, discount: 15)
Product.create(name: "Product 3", description: "Soy milk", quantity: 10, price: 22.00, available: true, released_at: Time.now - 7.days, expiry_date: Time.now + 20.days, discount: 5)
Product.create(name: "Product 4", description: "Oat milk", quantity: 0, price: 30.00, available: false, released_at: Time.now - 2.days, expiry_date: Time.now + 15.days, discount: 0)
Product.create(name: "Product 5", description: "Coconut milk", quantity: 8, price: 18.50, available: true, released_at: Time.now - 3.days, expiry_date: Time.now + 40.days, discount: 20)
Product.create(name: "Product 6", description: "Cashew milk", quantity: 12, price: 27.50, available: true, released_at: Time.now - 1.days, expiry_date: Time.now + 35.days, discount: 10)
Product.create(name: "Product 7", description: "Rice milk", quantity: 4, price: 19.99, available: true, released_at: Time.now - 6.days, expiry_date: Time.now + 50.days, discount: 25)
Product.create(name: "Product 8", description: "Pea milk", quantity: 2, price: 23.00, available: true, released_at: Time.now - 4.days, expiry_date: Time.now + 10.days, discount: 5)
Product.create(name: "Product 9", description: "Chocolate milk", quantity: 6, price: 21.00, available: true, released_at: Time.now - 8.days, expiry_date: Time.now + 60.days, discount: 30)
Product.create(name: "Product 10", description: "Strawberry milk", quantity: 1, price: 24.00, available: false, released_at: Time.now - 9.days, expiry_date: Time.now + 45.days, discount: 0)
```
*   Create atleast 10 records using the save method
```ruby =
product1 = Product.new(name: "Product 1", description: "Whole milk", quantity: 3, price: 20.50, available: true, released_at: Time.now - 5.days, expiry_date: Time.now + 25.days, discount: 10)
product1.save
product2 = Product.new(name: "Product 2", description: "Almond milk", quantity: 5, price: 25.00, available: true, released_at: Time.now - 10.days, expiry_date: Time.now + 30.days, discount: 15)
product2.save
product3 = Product.new(name: "Product 3", description: "Soy milk", quantity: 10, price: 22.00, available: true, released_at: Time.now - 7.days, expiry_date: Time.now + 20.days, discount: 5)
product3.save
product4 = Product.new(name: "Product 4", description: "Oat milk", quantity: 0, price: 30.00, available: false, released_at: Time.now - 2.days, expiry_date: Time.now + 15.days, discount: 0)
product4.save
product5 = Product.new(name: "Product 5", description: "Coconut milk", quantity: 8, price: 18.50, available: true, released_at: Time.now - 3.days, expiry_date: Time.now + 40.days, discount: 20)
product5.save
product6 = Product.new(name: "Product 6", description: "Cashew milk", quantity: 12, price: 27.50, available: true, released_at: Time.now - 1.days, expiry_date: Time.now + 35.days, discount: 10)
product6.save
product7 = Product.new(name: "Product 7", description: "Rice milk", quantity: 4, price: 19.99, available: true, released_at: Time.now - 6.days, expiry_date: Time.now + 50.days, discount: 25)
product7.save
product8 = Product.new(name: "Product 8", description: "Pea milk", quantity: 2, price: 23.00, available: true, released_at: Time.now - 4.days, expiry_date: Time.now + 10.days, discount: 5)
product8.save
product9 = Product.new(name: "Product 9", description: "Chocolate milk", quantity: 6, price: 21.00, available: true, released_at: Time.now - 8.days, expiry_date: Time.now + 60.days, discount: 30)
product9.save
product10 = Product.new(name: "Product 10", description: "Strawberry milk", quantity: 1, price: 24.00, available: false, released_at: Time.now - 9.days, expiry_date: Time.now + 45.days, discount: 0)
product10.save
```
*   Fetch all products where name is "Laptop".
``` ruby =
Product.find_by(name: 'Laptop') 
``` 
*   Find products where price is greater than 100.
```ruby = 
Product.where("price > ?", 100)
```
*   Retrieve products where available is true.
```ruby =
Product.where(available:true)
```
*   Fetch products where quantity is less than 50.
```ruby =
Product.where("quantity < ?", 50)
```
*   Find products where discount is exactly 10%.
```ruby =
Product.where(discount:10)
```
*   Retrieve products where name contains the word "Pro".
```ruby = 
Product.where("name LIKE ?", "%Pro%")
```
*   Fetch products where description includes the word "portable".
```ruby = 
Product.where("description LIKE ?", "%portable%")
```  
* Find products where price is between 50 and 150.
```ruby =
Product.where(price: 50..150)
```
*   Retrieve products where available is false and quantity is greater than 0.
```ruby = 
Product.where(available: false).where("quantity > ?", 0)
```
*   Fetch products where released_at is after January 1, 2023.
```ruby = 
Product.where("released_at > ?", DateTime.new(2023, 1, 1))
```  
*   Find products where expiry_date is nil.
```ruby =
Product.where("expiry_date":nil) 
```
*   Retrieve products where released_at is before January 1, 2022.
```ruby = 
Product.where("released_at < ?", DateTime.new(2022, 1, 1))
```  
* Fetch products where quantity is between 10 and 100.
```ruby = 
Product.where(quantity: 10..100)
```
*   Find products where discount is greater than or equal to 5%.
```ruby = 
Product.where("discount >= ?", 5)
```
*   Retrieve products where price is less than or equal to 200 and available is true.
```ruby =
Product.where("price <= ? AND available = ?", 200, true)
```
*   Fetch products where expiry_date is before today’s date.
```ruby =
Product.where(expiry_date < ?', Date.today)
```
*   Find products where name starts with the letter "A".
```ruby =
Product.where('name LIKE ?', 'A%')
```
*   Retrieve products where price is not equal to 100.
```ruby =
Product.where.not(price: 100)
```
*   Fetch products where quantity is nil.
```ruby =
Product.where(quantity:nil)
```
*   Find products where discount is not nil.
```ruby =
Product.where.not(discount:nil)
```
*   Update the price of a product where name is "Laptop" to 120.
```ruby =
Product.where(name: 'Laptop').update_all(price: 120)
```
*   Set the available status to false for products where quantity is 0.
```ruby =
Product.where(quantity: 0).update_all(available: false)
```
*   Increase the discount by 5% for products where price is greater than 100.
```ruby =
Product.where("price > ?", 100).update_all("discount = discount + 5")
```
*   Update the description to "Out of stock" for products where available is false.
```ruby = 
Product.where(available: false).update_all(description: "Out of stock")
```
*   Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.
```ruby = 
Product.where("discount >?", 10).update_all(expiry_date: DateTime.new(2023, 12, 31))
```
*   Update the quantity to 50 for products where name starts with "Pro".
```ruby = 
Product.where("name LIKE ?", "Pro%").update_all(quantity: 50)
```
*   Set the price to 200 for all products where discount is nil.
```ruby =
Product.where(discount: nil).update_all(price: 200)
```
*   Mark products as available if their released_at is before January 1, 2023.
```ruby =
Product.where("released_at < ?", Date.new(2023, 1, 1)).update_all(available: true)
```
*   Update the price to 80 where the quantity is between 10 and 20.
```ruby =
Product.where(quantity: 10..20).update_all(price: 80)
```
*   Remove any discount (set to nil) for products where expiry_date is before today.
```ruby =
Product.where("expiry_date < ?", Date.today).update_all(discount: nil)
```
*   Update the name to "Premium Laptop" for products where price is more than 500.
```ruby =
Product.where("price > ?", 500).update_all(name: "Premium Laptop")
```
*   Set the quantity to nil for products where available is false.
```ruby = 
Product.where(available: false).update_all(quantity: nil)
```
*   Update released_at to the current date for products with a price less than 50.
```ruby =
Product.where("price < ?", 50).update_all(released_at: Time.current)
```
*   Reduce the price by 20% for products where quantity is less than 5.
```ruby =
Product.where("quantity < ?", 5).update_all("price = price * 0.8")
```
*   Set the discount to 0% for products with a price greater than or equal to 300.
```ruby =
Product.where("price >= ?", 300).update_all(discount: 0)
```
*   Change the description to "Limited time offer" where the discount is 15%.
```ruby = 
Product.where(discount: 15).update_all(description: "Limited time offer")
```
*   Set available to true for products where the price is between 100 and 200.
```ruby = 
Product.where(price: 100..200).update_all(available: true)
```
*   Increase the quantity by 10 for products where released_at is after January 1, 2023.
```ruby =
Product.where("released_at > ?", Date.new(2023, 1, 1)).update_all("quantity = quantity + 10")
```
*   Set the expiry_date to nil for products where discount is less than 5%.
```ruby = 
Product.where("discount < ?", 5).update_all(expiry_date: nil)
```
*   Update the price to 150 where the description contains "sale".
```ruby = 
Product.where("description LIKE ?", "%sale%").update_all(price: 150)
```
*   Delete a product where name is "Laptop".
```ruby =
Product.where(name: "Laptop").destroy_all
```
*   Remove all products where available is false.
```ruby =
Product.where(available:false).destroy_all
```
*   Delete products where price is greater than 500.
```ruby = 
Product.where("price > ?", 500).destroy_all
```
*   Remove all products where quantity is 0.
*   Delete products where discount is greater than 20%.
*   Remove products where expiry_date is before today’s date.
*   Delete all products where name starts with "Pro".
*   Remove products where price is less than 50.
*   Delete products where released_at is before January 1, 2022.
*   Remove products where description contains "discontinued".
*   Delete products where quantity is between 1 and 10.
*   Remove all products where available is true and price is greater than 300.
*   Delete products where discount is nil.
*   Remove products where price is exactly 100.
*   Delete products where released_at is more than 5 years ago.
*   Remove products where description includes "obsolete".
*   Delete products where quantity is nil.
*   Remove products where expiry_date is within the next month.
*   Delete products where discount is less than 5%.
*   Remove all products where available is true but quantity is less than 5.
*   Print the name of all the products
*   Write a new migration to rename the description to content
*   Write a new migration to add a new column image
*   Write a new migration to remove the column expiry_date