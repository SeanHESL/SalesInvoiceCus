codeunit 50309 SalesPostExt
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvLineInsert', '', false, false)]
    local procedure OnBeforeSalesInvLineInsert(
        var SalesInvLine: Record "Sales Invoice Line";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesLine: Record "Sales Line";
        CommitIsSuppressed: Boolean;
        var IsHandled: Boolean)
    var
        ItemRec: Record Item;
    begin
        // Only item lines have an Item No. that exists in Item table
        if SalesLine.Type <> SalesLine.Type::Item then
            exit;

        if ItemRec.Get(SalesLine."No.") then begin
            SalesInvLine."Vendor No." := ItemRec."Vendor No.";
            SalesInvLine."Vendor Item No." := ItemRec."Vendor Item No.";
        end else begin
            SalesInvLine."Vendor No." := '';
            SalesInvLine."Vendor Item No." := '';
        end;
    end;
}
