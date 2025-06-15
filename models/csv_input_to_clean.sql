SELECT DISTINCT
    "TransactionID",
    TRIM("Category") AS Category,
    TRIM("Product") AS Product,
    "TransactionDate",
    CAST("Quantity" AS INTEGER) AS Quantity,
    CAST("Price" AS DECIMAL(10,2)) AS Price,
    CAST("TotalValue" AS DECIMAL(12,2)) AS TotalValue,
    "CustomerID",
    "PaymentMethod",
    TRIM("ShippingAddress") AS ShippingAddress,
    LOWER(TRIM("Email")) AS Email,
    "OrderStatus",
    "DiscountCode",
    CAST("PaymentAmount" AS DECIMAL(12,2)) AS PaymentAmount

FROM "in"."manual-input"."csv_input"

WHERE
    "Category" IS NOT NULL AND
    "Product" IS NOT NULL AND
    "TransactionDate" IS NOT NULL AND
    "ShippingAddress" IS NOT NULL AND
    "Email" LIKE '%@%.%'
