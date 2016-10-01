CREATE TABLE addresses
(
    add_id INTEGER PRIMARY KEY NOT NULL,
    add_name VARCHAR(255),
    add_phone_number INTEGER,
    add_first_line VARCHAR(255),
    add_second_line VARCHAR(255),
    add_city VARCHAR(255),
    add_state VARCHAR(255),
    add_zip INTEGER,
    add_com_id INTEGER,
    add_ord_id INTEGER,
    add_emp_id INTEGER,
    add_cus_id INTEGER,
    CONSTRAINT address_companies_com_id_fk FOREIGN KEY (add_com_id) REFERENCES companies (com_id),
    CONSTRAINT addresses_orders_ord_id_fk FOREIGN KEY (add_ord_id) REFERENCES orders (ord_id),
    CONSTRAINT addresses_employees_emp_id_fk FOREIGN KEY (add_emp_id) REFERENCES employees (emp_id),
    CONSTRAINT addresses_customers_cus_id_fk FOREIGN KEY (add_cus_id) REFERENCES customers (cus_id)
);
CREATE TABLE companies
(
    com_id INTEGER PRIMARY KEY NOT NULL,
    com_duns_number VARCHAR(255),
    com_name VARCHAR(248)
);
CREATE TABLE customers
(
    cus_id INTEGER PRIMARY KEY NOT NULL,
    cus_first_name VARCHAR(248) NOT NULL,
    cus_last_name VARCHAR(248) NOT NULL,
    cus_email VARCHAR(248)
);
CREATE TABLE employees
(
    emp_first_name VARCHAR(248),
    emp_last_name VARCHAR(248),
    emp_ssn INTEGER,
    emp_id INTEGER PRIMARY KEY NOT NULL,
    emp_com_id INTEGER,
    CONSTRAINT employees_companies_com_id_fk FOREIGN KEY (emp_com_id) REFERENCES companies (com_id)
);
CREATE TABLE join_customers_orders
(
    jco_id INTEGER PRIMARY KEY NOT NULL,
    jco_ord_id INTEGER,
    jco_cus_id INTEGER,
    CONSTRAINT join_customers_orders_orders_id_fk FOREIGN KEY (jco_ord_id) REFERENCES orders (ord_id),
    CONSTRAINT join_customers_orders_customers_id_fk FOREIGN KEY (jco_cus_id) REFERENCES customers (cus_id)
);
CREATE TABLE join_products_orders
(
    jpo_id INTEGER PRIMARY KEY NOT NULL,
    jpo_ord_id INTEGER,
    jpo_pro_id INTEGER,
    CONSTRAINT join_products_orders_orders_ord_id_fk FOREIGN KEY (jpo_ord_id) REFERENCES orders (ord_id),
    CONSTRAINT join_products_orders_products_pro_id_fk FOREIGN KEY (jpo_pro_id) REFERENCES products (pro_id)
);
CREATE TABLE orders
(
    ord_order_number INTEGER,
    ord_delivery_date VARCHAR(248),
    ord_order_date VARCHAR(248),
    ord_cost INTEGER,
    ord_id INTEGER PRIMARY KEY NOT NULL,
    ord_com_id INTEGER,
    CONSTRAINT orders_companies_com_id_fk FOREIGN KEY (ord_com_id) REFERENCES companies (com_id)
);
CREATE TABLE products
(
    pro_name VARCHAR(248),
    pro_number INTEGER,
    pro_discription VARCHAR(248),
    pro_price INTEGER,
    pro_category VARCHAR(248),
    pro_id INTEGER PRIMARY KEY NOT NULL,
    pro_com_id INTEGER,
    CONSTRAINT products_companies_com_id_fk FOREIGN KEY (pro_com_id) REFERENCES companies (com_id)
);