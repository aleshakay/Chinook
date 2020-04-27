-- How many Invoices were there in 2009 and 2011?
Select COUNT(invoiceId) as InvoiceCount
from Invoice 
where InvoiceDate between '2009-01-01' AND '2009-12-31'

Select COUNT(invoiceId) as InvoiceCount
from Invoice 
where InvoiceDate between '2011-01-01' AND '2011-12-31'