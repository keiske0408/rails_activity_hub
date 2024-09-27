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
```
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
```
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
*   Fetch all products where name is "Laptop".
*   Find products where price is greater than 100.
*   Retrieve products where available is true.
*   Fetch products where quantity is less than 50.
*   Find products where discount is exactly 10%.
*   Retrieve products where name contains the word "Pro".
*   Fetch products where description includes the word "portable".
*   Find products where price is between 50 and 150.
*   Retrieve products where available is false and quantity is greater than 0.
*   Fetch products where released_at is after January 1, 2023.
*   Find products where expiry_date is nil.
*   Retrieve products where released_at is before January 1, 2022.
*   Fetch products where quantity is between 10 and 100.
*   Find products where discount is greater than or equal to 5%.
*   Retrieve products where price is less than or equal to 200 and available is true.
*   Fetch products where expiry_date is before today’s date.
*   Find products where name starts with the letter "A".
*   Retrieve products where price is not equal to 100.
*   Fetch products where quantity is nil.
*   Find products where discount is not nil.
*   Update the price of a product where name is "Laptop" to 120.
*   Set the available status to false for products where quantity is 0.
*   Increase the discount by 5% for products where price is greater than 100.
*   Update the description to "Out of stock" for products where available is false.
*   Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.
*   Update the quantity to 50 for products where name starts with "Pro".
*   Set the price to 200 for all products where discount is nil.
*   Mark products as available if their released_at is before January 1, 2023.
*   Update the price to 80 where the quantity is between 10 and 20.
*   Remove any discount (set to nil) for products where expiry_date is before today.
*   Update the name to "Premium Laptop" for products where price is more than 500.
*   Set the quantity to nil for products where available is false.
*   Update released_at to the current date for products with a price less than 50.
*   Reduce the price by 20% for products where quantity is less than 5.
*   Set the discount to 0% for products with a price greater than or equal to 300.
*   Change the description to "Limited time offer" where the discount is 15%.
*   Set available to true for products where the price is between 100 and 200.
*   Increase the quantity by 10 for products where released_at is after January 1, 2023.
*   Set the expiry_date to nil for products where discount is less than 5%.
*   Update the price to 150 where the description contains "sale".
*   Delete a product where name is "Laptop".
*   Remove all products where available is false.
*   Delete products where price is greater than 500.
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