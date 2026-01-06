# Ecommerce-Analysis-Project

📈 E-commerce Pricing & Strategy Analysis
Proyecto 3: Análisis de descuentos y segmentación de productos

ETL con SQL, Google Sheets y Power BI

📝 Descripción del Proyecto

Este proyecto analiza un conjunto de datos de más de 8,000 productos de E-commerce.
El objetivo principal fue limpiar datos complejos (como árboles de categorías en formato sucio) y calcular métricas de rentabilidad para entender la estrategia de descuentos de la tienda.

🛠️ Stack Tecnológico

Base de Datos: PostgreSQL
(Limpieza de datos y lógica de negocio)

Almacenamiento en Nube: Google Sheets
(Pipeline de actualización automática)

Visualización: Power BI
(Dashboard interactivo)

⚙️ Proceso ETL (Extracción, Transformación y Carga)
🔹 Extracción

Carga de datos crudos desde un archivo CSV a PostgreSQL.

🔹 Transformación (SQL)

Uso de funciones de texto como:

split_part()

trim()

Limpieza de la columna product_category_tree.

Creación de una Vista (VIEW) para calcular el margen de descuento en tiempo real:

Margen = (retail_price - discounted_price) / retail_price

🔹 Carga

Conexión de Power BI a Google Sheets para generar un reporte dinámico y actualizable.

💡 Hallazgos Principales (Insights)

Tras el análisis visual, se identificaron los siguientes puntos estratégicos:

Descuento Promedio Global:
40.93% — una estrategia de precios altamente agresiva.

Líderes de Descuento por Categoría:

Sunglasses → 60%

Watches → 57%

Clothing → 50%
Esto sugiere posibles excesos de inventario o liquidaciones de temporada.

Anomalías de Precio:
Mediante un gráfico de dispersión se detectaron productos con descuentos superiores al 80%, revelando:

Oportunidades de compra

Posibles errores de etiquetado en la categoría de accesorios

📂 Archivos en este Repositorio

ecommerce_website1.csv
Dataset original con datos sucios.

script_limpieza.sql
Código SQL para la creación de tablas y la vista de limpieza.

ecommerce_analysis.pbix
Archivo de Power BI con el dashboard final.
