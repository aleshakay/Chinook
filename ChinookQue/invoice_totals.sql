-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
select Customer.FirstName + ' ' + Customer.LastName as CustomerFullName, Customer.Country, Invoice.Total, Employee.FirstName + ' ' + Employee.LastName as EmployeeFullName
From Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId