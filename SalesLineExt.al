tableextension 50301 SalesLineExt extends "Sales Line"
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