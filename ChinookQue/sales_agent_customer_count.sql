 -- Provide a query that shows the count of customers assigned to each sales agent.
 select e.FirstName, COUNT(c.FirstName)
 from Customer c
 JOIN Employee e ON c.SupportRepId = e.EmployeeId
 GROUP BY e.FirstName

