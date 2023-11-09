pageextension 50101 CustXMLExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("&Customer")
        {
            action(ExportToXML)
            {
                ApplicationArea = All;
                Caption = 'Export to XML';
                Promoted = true;
                // PromotedCategory = Report;
                //RunObject = xmlport 50100;
                // PromotedCategory = Process;
                trigger OnAction();
                begin
                    // xmlport run function has three fields 1. the ID part  2.Request Window  3. Import
                    // xmlport.Run(Number:Integer,[RequestWindows: Boolean], [Import: Boolean])
                    Xmlport.Run(50100, false, false);

                end;
            }
            action("Export to CSV")
            {
                ApplicationArea = All;
                trigger OnAction();
                begin
                    Xmlport.Run(50100, false, false);
                end;

            }
        }
    }

    var
        myInt: Integer;
}