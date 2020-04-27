--What are the respective total sales for each of those years? 
Select SUM(Total) as Total_2009
from Invoice 
where InvoiceDate between '2009-01-01' AND '2009-12-31'

Select SUM(Total) as Total_2011
from Invoice 
where InvoiceDate between '2011-01-01' AND '2011-12-31'
