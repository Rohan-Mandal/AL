tableextension 50107 SalesInvLineT extends "Sales Invoice Line"
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