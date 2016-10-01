SELECT * FROM customers
LEFT OUTER JOIN join_customers_orders
 ON customers.cus_id=join_customers_orders.jco_cus_id
LEFT OUTER JOIN orders
 ON orders.ord_id=join_customers_orders.jco_ord_id



 SELECT * FROM orders
LEFT OUTER JOIN join_products_orders
 ON orders.ord_id=join_products_orders.jpo_ord_id
LEFT OUTER JOIN products
 ON products.pro_id=join_products_orders.jpo_pro_id



 SELECT * FROM companies
LEFT OUTER JOIN employees
 ON companies.com_id=employees.emp_id



 SELECT * FROM companies
LEFT OUTER JOIN address
 ON companies.com_id=address.add_id