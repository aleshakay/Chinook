--Provide a query that shows total sales made by each sales agent.
select TOP 1 (SUM(Invoice.Total)), Employee.FirstName, Employee.LastName
From Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
where Invoice.InvoiceDate between '2009-01-01' AND '2009-12-31'
GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName