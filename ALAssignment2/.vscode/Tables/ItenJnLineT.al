tableextension 50103 ItemJnLineT extends "Item Journal Line"
{
    fields
    {
        field(50002; "Source MyOtherType"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Source MyType';
        }
    }

}