SELECT products.name
FROM providers INNER JOIN products
ON id_providers = providers.id
WHERE amount BETWEEN 10 AND 20
AND providers.name LIKE 'P%';