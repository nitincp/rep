# Business Rules in Given-When-Then Format

## Catalog Management

### Viewing Product Details
- Given a product is listed in the catalog with a name, description, unit price, and optional image
  When a customer views the product
  Then the customer sees the name, description, unit price, and image if one exists

### Grouping Products by Category and Brand
- Given products are assigned to categories and brands
  When a customer browses or searches the product list
  Then products can be filtered and grouped by their assigned category or brand

### Maintaining Central Product Information
- Given product details and availability are managed centrally
  When any change is made to a product's information
  Then the updated details are immediately visible to all customers browsing the catalog

## Shopping Basket

### Adding Products to the Basket
- Given a customer selects a product from the catalog
  When the customer adds the product to their basket and specifies a quantity
  Then the selected product and quantity are added to the customer's personal basket

### Adjusting Quantities in the Basket
- Given a product is already in the customer's basket
  When the customer increases or decreases the quantity of that product
  Then the basket reflects the new quantity for that product

### Removing Items from the Basket
- Given a product is in the customer's basket
  When the customer removes the product
  Then the product is no longer part of the basket

### Calculating the Basket Total
- Given the basket contains one or more products with their quantities
  When the basket total is calculated
  Then the total is the sum of each product's unit price multiplied by its quantity

### Persisting Basket Contents
- Given a customer has items in their basket
  When the customer returns to the store after leaving
  Then the basket still contains the same items and quantities as before

## Ordering and Checkout

### Creating an Order from the Basket
- Given a customer has items in their basket
  When the customer completes the checkout process
  Then an order is created containing the exact items, quantities, and prices from the basket at that moment

### Capturing Order History Snapshots
- Given an order is being created
  When the order is finalized
  Then a permanent record is made of each item's name, price, and quantity so that future catalog changes do not alter the order history

### Recording Buyer and Shipping Information
- Given a customer places an order
  When the order is created
  Then the order records the buyer's identity and the chosen shipping address

### Tracking Order Status
- Given an order has been placed
  When the order moves through fulfillment stages
  Then the order status is updated to reflect its current stage such as pending, shipped, or completed

## Buyer and Address Management

### Storing Multiple Shipping Addresses
- Given a buyer has a profile
  When the buyer adds a new shipping address
  Then the profile stores the new address alongside any existing addresses

### Suggesting the Most Recent Address
- Given a buyer has placed previous orders with different shipping addresses
  When the buyer starts a new order
  Then the most recently used shipping address is suggested for the new order

### Linking Buyers to Order History
- Given a buyer has placed one or more orders
  When the buyer's purchase history is viewed
  Then all past orders are shown linked to that buyer

## Pricing and Totals

### Using Listed Unit Prices for Calculations
- Given a product has a listed unit price
  When any total is calculated for a basket or order
  Then the calculation uses only the current listed unit price multiplied by quantity

### Applying No Automatic Adjustments
- Given a basket or order is being totaled
  When the total is computed
  Then no discounts, taxes, or shipping fees are added automatically

### Protecting Historical Order Prices
- Given an order has already been placed
  When the unit price of a product changes in the catalog afterward
  Then the price recorded on the existing order remains unchanged