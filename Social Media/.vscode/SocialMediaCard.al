pageextension 50110 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Facebook; Rec.Facebook)
            {

            }

            field(Twitter; Rec.Twitter)
            {

            }

            field(Instagram; Rec.Instagram)
            {

            }

            field(LinkedIn; Rec.LinkedIn)
            {

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}