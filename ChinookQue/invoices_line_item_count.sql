-- Provide a query that shows all Invoices but includes the # of invoice line items.
select invoiceid, COUNT(InvoiceLine.InvoiceLineId) as InvoiceLineItems
From InvoiceLine
GROUP BY InvoiceId
