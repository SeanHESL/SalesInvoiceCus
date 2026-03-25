pageextension 50320 SalesInvoiceSubformExt extends 47
{
    layout
    {
        addafter(Description)
        {
            field(VendorNo; VendorNo)
            {
                ApplicationArea = All;
                Caption = 'Vendor No.';
                Editable = false;
            }
            field(VendorItemNo; VendorItemNo)
            {
                ApplicationArea = All;
                Caption = 'Vendor Item No.';
                Editable = false;
            }
        }
    }

    var
        VendorNo: Code[20];
        VendorItemNo: Text[50];

    trigger OnAfterGetCurrRecord()
    begin
        GetVendorDetails();
    end;

    local procedure GetVendorDetails()
    var
        ItemRec: Record Item;
    begin
        if Rec."No." <> '' then
            if ItemRec.Get(Rec."No.") then begin
                VendorNo := ItemRec."Vendor No.";
                VendorItemNo := ItemRec."Vendor Item No.";
            end else begin
                VendorNo := '';
                VendorItemNo := '';
            end;
    end;
}