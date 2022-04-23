insert into tbl_invoices (id, number_invoice, description, customer_id, create_at, state) values(1, '0001', 'invoice
office items', 1, NOW(),'CREATED');

insert into tbl_invoce_items ( invoice_id, product_id, quantity, price ) values(1, 1 , 1, 178.89);
insert into tbl_invoce_items ( invoice_id, product_id, quantity, price)  values(1, 2 , 2, 12.5);
insert into tbl_invoce_items ( invoice_id, product_id, quantity, price)  values(1, 3 , 1, 40.06);