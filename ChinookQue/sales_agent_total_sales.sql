--Provide a query that shows total sales made by each sales agent.
select Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
From Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName