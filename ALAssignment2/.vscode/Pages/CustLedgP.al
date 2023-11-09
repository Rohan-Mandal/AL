pageextension 50102 CustLedgPageExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer No.")
        {
            field("Source Type"; Rec."Source Type")
            {
                ApplicationArea = All;
                Caption = 'Source Type';
            }
        }
    }
}