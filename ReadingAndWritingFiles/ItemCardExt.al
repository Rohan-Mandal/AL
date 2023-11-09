pageextension 50113 ItemCardExtension extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }
    actions
    {
        addafter("F&unctions")
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                ApplicationArea = All;
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;
            }
            action(ExportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Export Item Picture';
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
    }
}
