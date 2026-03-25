tableextension 50302 SalesInvoiceLineExt extends "Sales Invoice Line"
{
    fields
    {
        field(50300; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            DataClassification = CustomerContent;
        }
        field(50301; "Vendor Item No."; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = CustomerContent;
        }
    }
}