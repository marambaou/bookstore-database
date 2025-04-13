-- Create roles for different types of users
CREATE ROLE 'bookstore_admin';
CREATE ROLE 'bookstore_manager';
CREATE ROLE 'bookstore_staff';
CREATE ROLE 'bookstore_customer';

-- Grant permissions to admin role (full access)
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin';

-- Grant permissions to manager role (read/write access to all tables)
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstore.* TO 'bookstore_manager';

-- Grant permissions to staff role (limited access)
GRANT SELECT ON bookstore.* TO 'bookstore_staff';
GRANT INSERT, UPDATE ON bookstore.books TO 'bookstore_staff';
GRANT INSERT, UPDATE ON bookstore.customer_order TO 'bookstore_staff';
GRANT INSERT, UPDATE ON bookstore.order_line TO 'bookstore_staff';

-- Grant permissions to customer role (read-only access to most tables)
GRANT SELECT ON bookstore.books TO 'bookstore_customer';
GRANT SELECT ON bookstore.author TO 'bookstore_customer';
GRANT SELECT ON bookstore.publisher TO 'bookstore_customer';
GRANT SELECT, INSERT, UPDATE ON bookstore.customers TO 'bookstore_customer';
GRANT SELECT, INSERT, UPDATE ON bookstore.customer_order TO 'bookstore_customer' WITH GRANT OPTION;

-- Create users and assign them to roles
CREATE USER 'admin_john' IDENTIFIED BY 'securepass123';
CREATE USER 'manager_sarah' IDENTIFIED BY 'managerpass456';
CREATE USER 'staff_mike' IDENTIFIED BY 'staffpass789';
CREATE USER 'customer_emily' IDENTIFIED BY 'customerpass012';

-- Assign users to roles
GRANT 'bookstore_admin' TO 'admin_john';
GRANT 'bookstore_manager' TO 'manager_sarah';
GRANT 'bookstore_staff' TO 'staff_mike';
GRANT 'bookstore_customer' TO 'customer_emily';

-- Set default roles for users
SET DEFAULT ROLE 'bookstore_admin' TO 'admin_john';
SET DEFAULT ROLE 'bookstore_manager' TO 'manager_sarah';
SET DEFAULT ROLE 'bookstore_staff' TO 'staff_mike';
SET DEFAULT ROLE 'bookstore_customer' TO 'customer_emily';

-- Apply the changes
FLUSH PRIVILEGES;