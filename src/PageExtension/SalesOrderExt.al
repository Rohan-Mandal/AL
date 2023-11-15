pageextension 50105 "SGN Ext. Sales Order" extends "Sales Order"
{
    layout
    {
        addafter(Control1900201301)
        {
            group("Signature")
            {
                usercontrol("SGNSignaturePad"; "SGNSignaturePad")
                {
                    ApplicationArea = All;
                    Visible = true;
                    trigger Ready()
                    begin
                        CurrPage."SGNSignaturePad".InitializeSignaturePad();
                    end;

                    trigger Sign(Signature: Text)
                    begin
                        Rec.SignDoc(Signature);
                        CurrPage.Update();
                    end;
                }

            }
            field("SGN Signature"; Rec."Signature")
            {
                Caption = 'Customer Signature';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

}