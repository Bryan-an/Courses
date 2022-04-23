DROP TABLE IF EXISTS tlb_invoices;

CREATE TABLE tbl_invoices (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    number_invoice VARCHAR(250),
    description VARCHAR(250),
    customer_id BIGINT,
    create_at DATE,
    state VARCHAR(250)
);

CREATE TABLE tbl_invoce_items (
    invoice_id BIGINT,
    product_id BIGINT,
    quantity DOUBLE,
    price DOUBLE,
    FOREIGN KEY (invoice_id) REFERENCES tbl_invoices(id)
);