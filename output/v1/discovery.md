# Business Rules Discovery

## Catalog Management
- Products are grouped into categories (types) and associated with specific brands.
- Each product includes a name, description, unit price, and optional image.
- Customers can browse, search, and filter the product list by brand or category.
- Product details and availability are maintained centrally for the store.

## Shopping Basket
- Customers can add any catalog product to their personal basket, specifying a quantity.
- Quantities of items already in the basket can be increased or decreased.
- Items can be removed from the basket at any time.
- The basket automatically calculates and displays the running total based on current item prices and quantities.
- Basket contents are tied to the individual customer and persist across visits.

## Ordering and Checkout
- An order is created by converting the current basket contents into a permanent purchase record.
- At order time, the system captures a snapshot of each item's details (name, price, quantity) to preserve history even if catalog changes later.
- Every order records the buyer's identity along with a shipping address.
- Orders track a lifecycle status (e.g., pending, shipped, completed) as they progress through fulfillment.

## Buyer and Address Management
- Each buyer profile stores one or more shipping addresses.
- The most recently used address can be suggested for future orders.
- Buyer information is linked to orders to maintain purchase history.

## Pricing and Totals
- All monetary calculations use the product's listed unit price multiplied by quantity.
- No automatic discounts, taxes, or shipping fees are applied at the basket or order level.
- Price changes in the catalog do not affect previously placed orders.