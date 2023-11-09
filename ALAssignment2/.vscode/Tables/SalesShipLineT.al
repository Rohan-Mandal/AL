tableextension 50105 SalesShipLineT extends "Sales Shipment Line"
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