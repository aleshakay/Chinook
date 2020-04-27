-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
select InvoiceId, COUNT(InvoiceLineId) as InvoiceLineCount
from InvoiceLine
GROUP BY InvoiceId 