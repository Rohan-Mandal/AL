tableextension 50106 SalesInvHeaderT extends "Sales Invoice Header"
{
    fields
    {
        field(50002; "Source TypeTwo"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source Type';
        }
    }

}