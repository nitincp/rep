# Domain Rules Document

## Catalog Domain

**Rule: Browsing products by category**  
Given a customer wants to explore available products  
When the customer selects a category  
Then the customer sees product listings organized by that category  

**Rule: Searching for products**  
Given a customer is looking for a specific item  
When the customer performs a search  
Then matching products are displayed  

**Rule: Viewing detailed product information**  
Given a customer is considering a purchase  
When the customer selects a product  
Then detailed information including images, description, and price is shown  

**Rule: Administrator updating product details**  
Given an administrator manages the catalog  
When product details such as name, description, price, brand, or type are changed  
Then the updates are reflected for customers  

References: `src/ApplicationCore/Entities/CatalogItem.cs`, `src/ApplicationCore/Entities/CatalogBrand.cs`, `src/ApplicationCore/Entities/CatalogType.cs`, `src/ApplicationCore/Services/`

## Shopping Basket Domain

**Rule: Adding items to basket**  
Given a customer has selected products  
When the customer adds a product to the basket  
Then the item is included in the basket with quantity  

**Rule: Adjusting basket contents**  
Given a customer reviews the basket  
When the customer changes quantities or removes items  
Then the basket reflects the updates and recalculates totals  

**Rule: Persisting basket across sessions**  
Given a logged-in customer has items in the basket  
When the customer returns later  
Then the basket contents are restored  

**Rule: Transferring anonymous basket**  
Given a customer logs in with an existing anonymous basket  
When login completes  
Then the anonymous basket items transfer to the logged-in account  

References: `src/ApplicationCore/Entities/BasketAggregate/Basket.cs`, `src/ApplicationCore/Entities/BasketAggregate/BasketItem.cs`, `src/ApplicationCore/Services/BasketService.cs`, `src/ApplicationCore/Interfaces/IBasketService.cs`

## Ordering Domain

**Rule: Placing an order**  
Given a customer has items in the basket  
When the customer completes checkout  
Then an order is created with all details captured  

**Rule: Viewing order history**  
Given a customer wants to review past purchases  
When the customer accesses order history  
Then past orders and their status are displayed  

**Rule: Calculating order totals**  
Given an order contains multiple items  
When the order is finalized  
Then the total is calculated based on the items  

References: `src/ApplicationCore/Entities/OrderAggregate/Order.cs`, `src/ApplicationCore/Entities/OrderAggregate/OrderItem.cs`, `src/ApplicationCore/Entities/OrderAggregate/CatalogItemOrdered.cs`, `src/ApplicationCore/Services/OrderService.cs`, `src/ApplicationCore/Interfaces/IOrderService.cs`

## Account Domain

**Rule: Registering or logging in**  
Given a user accesses the system  
When the user registers or logs in  
Then access to personalized features is granted  

**Rule: Managing profile and payment methods**  
Given a customer maintains an account  
When profile or payment information is updated  
Then the changes are saved for future use  

References: `src/ApplicationCore/Entities/BuyerAggregate/Buyer.cs`, `src/ApplicationCore/Entities/BuyerAggregate/PaymentMethod.cs`, `src/ApplicationCore/Interfaces/ITokenClaimsService.cs`, `src/ApplicationCore/Interfaces/`
