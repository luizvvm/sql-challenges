SELECT products.name, providers.name, categories.name
FROM products INNER JOIN providers
ON providers.id = id_providers
INNER JOIN categories ON
id_categories = categories.id
WHERE providers.name = 'Sansul SA'
AND categories.name = 'Imported';