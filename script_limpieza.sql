-- 1. Crear la tabla base
CREATE TABLE ecommerce_raw (
    crawl_timestamp TIMESTAMP,
    product_name TEXT,
    product_category_tree TEXT,
    retail_price FLOAT,
    discounted_price FLOAT,
    brand TEXT
);

-- 2. Limpieza y creación de la Vista para Power BI
CREATE OR REPLACE VIEW v_ecommerce_estratega AS
SELECT 
    crawl_timestamp,
    product_name,
    brand,
    retail_price,
    discounted_price,
    -- Limpiamos los corchetes y comillas, y extraemos solo la primera categoría
    split_part(trim(both '[]"' FROM product_category_tree), ' >> ', 1) AS categoria_principal,
    -- Calculamos el margen de descuento (evitando división por cero)
    ROUND(((retail_price - discounted_price) / NULLIF(retail_price, 0))::numeric, 4) AS margen_descuento
FROM ecommerce_raw;

-- 3. Consulta de prueba para ver el Top 5 categorías con más descuento
SELECT categoria_principal, AVG(margen_descuento) as descuento_promedio
FROM v_ecommerce_estratega
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;