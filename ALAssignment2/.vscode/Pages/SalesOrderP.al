pageextension 50103 SalesOrderpageExt extends "Sales Order"
{
    layout
    {
        addafter("No.")
        {
            field("Source Type"; Rec."Source Type")
            {
                ApplicationArea = All;
                Caption = 'Source Type';
            }
        }
    }
}