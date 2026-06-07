# Domain Rules

## Catalog

### Viewing Product Information
- Given a product is available in the catalog with a name, description, price, and optional picture
  When a customer looks at the product
  Then the customer sees the name, description, price, and picture if available

### Organizing Products by Type and Brand
- Given products are organized into types and brands
  When a customer browses or searches the product list
  Then products can be filtered and grouped by their type or brand

### Keeping Product Information Up to Date
- Given product details and stock levels are managed in one central place
  When any change is made to a product's information
  Then the updated details are immediately visible to all customers

## Shopping Basket

### Adding Items to the Basket
- Given a customer selects a product from the catalog
  When the customer adds the product to their basket and chooses a quantity
  Then the selected product and quantity are added to the customer's basket

### Changing Quantities in the Basket
- Given a product is already in the customer's basket
  When the customer increases or decreases the quantity of that product
  Then the basket shows the new quantity for that product

### Removing Items from the Basket
- Given a product is in the customer's basket
  When the customer removes the product
  Then the product is no longer in the basket

### Calculating the Basket Total
- Given the basket contains one or more products with their quantities
  When the basket total is calculated
  Then the total is the sum of each product's price multiplied by its quantity

### Keeping the Basket for Later
- Given a customer has items in their basket
  When the customer returns to the store later
  Then the basket still contains the same items and quantities

## Ordering and Checkout

### Placing an Order
- Given a customer has items in their basket
  When the customer completes the checkout process
  Then an order is created with the exact items, quantities, and prices from the basket at that time

### Saving Order Details for History
- Given an order is being created
  When the order is finalized
  Then a permanent record is saved of each item's name, price, and quantity so future catalog changes do not affect past orders

### Recording Buyer and Delivery Details
- Given a customer places an order
  When the order is created
  Then the order records the buyer's identity and the chosen delivery address

### Tracking Order Progress
- Given an order has been placed
  When the order moves through fulfillment stages
  Then the order status is updated to show its current stage such as pending, shipped, or completed

## Customer and Address Management

### Saving Multiple Delivery Addresses
- Given a buyer has a profile
  When the buyer adds a new delivery address
  Then the profile stores the new address along with any existing addresses

### Suggesting the Last Used Address
- Given a buyer has placed previous orders with different delivery addresses
  When the buyer starts a new order
  Then the most recently used delivery address is suggested for the new order

### Showing a Buyer's Order History
- Given a buyer has placed one or more orders
  When the buyer's purchase history is viewed
  Then all past orders are shown linked to that buyer

## Pricing

### Using Current Listed Prices
- Given a product has a listed price
  When any total is calculated for a basket or order
  Then the calculation uses only the current listed price multiplied by quantity

### No Automatic Fees or Discounts
- Given a basket or order is being totaled
  When the total is computed
  Then no discounts, taxes, or shipping fees are added automatically

### Keeping Historical Order Prices
- Given an order has already been placed
  When the price of a product changes in the catalog afterward
  Then the price recorded on the existing order remains unchanged
