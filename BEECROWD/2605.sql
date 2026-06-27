SELECT products.name, providers.name
FROM products INNER JOIN providers
ON id_providers = providers.id
WHERE id_categories = 6;