pageextension 50302 PostedSalesInvoiceSubformExt extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter(Description)
        {
            field(VendorNo; Rec."Vendor No.")
            {
                ApplicationArea = All;
                Caption = 'Vendor No.';
                Editable = false;
            }
            field(VendorItemNo; Rec."Vendor Item No.")
            {
                ApplicationArea = All;
                Caption = 'Vendor Item No.';
                Editable = false;
            }
        }
    }
}