SELECT products.name, providers.name, products.price
FROM products INNER JOIN providers 
ON id_providers = providers.id
INNER JOIN categories
ON id_categories = categories.id
WHERE price > 1000
AND categories.name = 'Super Luxury';