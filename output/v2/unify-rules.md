# Business Requirements Document

## Catalog Domain

**Requirement: Product Browsing and Discovery**  
Given a customer wants to explore available products  
When the customer selects a category or performs a search  
Then the customer sees relevant product listings with images, descriptions, and prices  

**Requirement: Product Detail Access**  
Given a customer is considering a purchase  
When the customer selects a product  
Then detailed product information is shown  

**Requirement: Catalog Maintenance**  
Given an administrator manages the catalog  
When product details such as name, description, price, brand, or type are changed  
Then the updates are reflected for customers  

References: `src/ApplicationCore/Entities/CatalogItem.cs`, `src/ApplicationCore/Entities/CatalogBrand.cs`, `src/ApplicationCore/Entities/CatalogType.cs`, `src/ApplicationCore/Services/`

**Connections:** Catalog products feed into basket and orders.

## Shopping Basket Domain

**Requirement: Basket Management**  
Given a customer has selected products  
When the customer adds items, adjusts quantities, or removes items  
Then the basket reflects changes and maintains accurate totals  

**Requirement: Basket Persistence and Transfer**  
Given a logged-in or anonymous customer interacts with the basket  
When the customer returns or logs in  
Then basket contents persist or transfer to the logged-in account  

References: `src/ApplicationCore/Entities/BasketAggregate/Basket.cs`, `src/ApplicationCore/Entities/BasketAggregate/BasketItem.cs`, `src/ApplicationCore/Services/BasketService.cs`, `src/ApplicationCore/Interfaces/IBasketService.cs`

**Connections:** Basket items are used directly for order creation; account login enables basket transfer and personalization.

## Ordering Domain

**Requirement: Order Placement**  
Given a customer has items in the basket  
When the customer completes checkout  
Then an order is created capturing all details and calculating the total  

**Requirement: Order History and Tracking**  
Given a customer wants to review past activity  
When the customer accesses order history  
Then past orders and status are displayed  

References: `src/ApplicationCore/Entities/OrderAggregate/Order.cs`, `src/ApplicationCore/Entities/OrderAggregate/OrderItem.cs`, `src/ApplicationCore/Entities/OrderAggregate/CatalogItemOrdered.cs`, `src/ApplicationCore/Services/OrderService.cs`, `src/ApplicationCore/Interfaces/IOrderService.cs`

**Connections:** Ordering depends on basket contents and catalog items; requires authenticated account.

## Account Domain

**Requirement: Account Access**  
Given a user accesses the system  
When the user registers or logs in  
Then access to personalized features is granted  

**Requirement: Profile and Payment Management**  
Given a customer maintains an account  
When profile or payment information is updated  
Then the changes are saved for future use  

References: `src/ApplicationCore/Entities/BuyerAggregate/Buyer.cs`, `src/ApplicationCore/Entities/BuyerAggregate/PaymentMethod.cs`, `src/ApplicationCore/Interfaces/ITokenClaimsService.cs`, `src/ApplicationCore/Interfaces/`

**Connections:** Account enables basket transfer, personalized ordering, and order history access.
