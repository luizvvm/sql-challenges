SELECT products.name, providers.name
FROM providers inner join products
ON providers.id = id_providers
WHERE providers.name = 'Ajax SA';