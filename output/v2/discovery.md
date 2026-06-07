# Business Discovery Document

## Catalog Domain
From a business user's perspective, the Catalog domain allows customers to browse and discover products available for purchase. 

Key capabilities and behaviors:
- Customers can view product listings organized by categories.
- Users can search for specific products.
- Detailed product information is presented to help customers make informed decisions.
- Products are displayed with images, descriptions, and pricing.
- Administrators can update product details such as name, description, price, brand and type.

References:
- `src/ApplicationCore/Entities/CatalogItem.cs` (UpdateDetails, UpdateBrand, UpdateType, UpdatePictureUri)
- `src/ApplicationCore/Entities/CatalogBrand.cs`
- `src/ApplicationCore/Entities/CatalogType.cs`
- `src/ApplicationCore/Services/`

## Shopping Basket Domain
The Shopping Basket domain enables customers to collect items they intend to purchase before finalizing an order.

Key capabilities and behaviors:
- Customers can add products to their basket.
- Users can adjust quantities or remove items from the basket.
- The basket maintains selected items across sessions for logged-in users.
- Provides a summary of selected items and their total cost.
- Supports transferring anonymous baskets to logged-in users.

References:
- `src/ApplicationCore/Entities/BasketAggregate/Basket.cs` (AddItem, RemoveEmptyItems, SetNewBuyerId)
- `src/ApplicationCore/Entities/BasketAggregate/BasketItem.cs`
- `src/ApplicationCore/Services/BasketService.cs` (AddItemToBasket, DeleteBasketAsync, SetQuantities)
- `src/ApplicationCore/Interfaces/IBasketService.cs` (TransferBasketAsync, AddItemToBasket, SetQuantities, DeleteBasketAsync)

## Ordering Domain
The Ordering domain handles the process of completing a purchase and managing order history.

Key capabilities and behaviors:
- Customers can proceed through a checkout process to place orders.
- Supports viewing past orders and their status.
- Ensures orders capture necessary details for fulfillment.
- Allows customers to track their order history.
- Calculates order totals based on items.

References:
- `src/ApplicationCore/Entities/OrderAggregate/Order.cs` (Total)
- `src/ApplicationCore/Entities/OrderAggregate/OrderItem.cs`
- `src/ApplicationCore/Entities/OrderAggregate/CatalogItemOrdered.cs`
- `src/ApplicationCore/Services/OrderService.cs` (CreateOrderAsync)
- `src/ApplicationCore/Interfaces/IOrderService.cs` (CreateOrderAsync)

## Account Domain
The Account domain manages user identities and profiles within the system.

Key capabilities and behaviors:
- Users can register for new accounts or log in to existing ones.
- Customers can manage their profile information including payment methods.
- Provides personalized experiences based on user identity.

References:
- `src/ApplicationCore/Entities/BuyerAggregate/Buyer.cs`
- `src/ApplicationCore/Entities/BuyerAggregate/PaymentMethod.cs`
- `src/ApplicationCore/Interfaces/ITokenClaimsService.cs`
- `src/ApplicationCore/Interfaces/`

