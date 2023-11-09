tableextension 50102 ItemLedgerEntT extends "Item Ledger Entry"

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