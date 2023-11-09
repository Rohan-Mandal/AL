tableextension 50101 SalesLineT extends "Sales Line"
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