tableextension 50108 GenJnLineT extends "Gen. Journal Line"
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