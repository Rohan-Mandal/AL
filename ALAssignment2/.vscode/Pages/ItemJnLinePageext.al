pageextension 50104 ItemJnLinePage extends "Item Journal Lines"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field("Source Type"; Rec."Source MyOtherType") { }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}