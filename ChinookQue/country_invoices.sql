-- Provide a query that shows the # of invoices per country. HINT: GROUP BY
select BillingCountry, COUNT(Total)
From Invoice
GROUP BY BillingCountry