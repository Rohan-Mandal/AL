tableextension 50111 SalesHeader extends "Sales Header"
{
    fields
    {
        field(50002; "Source Type"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source Type';
        }
    }

}