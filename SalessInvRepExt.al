reportextension 50310 SalesInvoiceReportExt extends "Standard Sales - Invoice"
{
    dataset
    {
        add("Line")
        {
            column(VendorNo; "Vendor No.")
            {
            }
            column(VendorItemNo; "Vendor Item No.")
            {
            }
        }
    }
}