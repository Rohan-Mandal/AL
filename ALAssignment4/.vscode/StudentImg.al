page 50111 MyStudentImagePage
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentInfo;
    Editable = true;

    layout
    {
        area(Content)
        {
            group("Student Image")
            {
                field(Photo; Rec.Photo)
                {
                    Editable = true;
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    // getStudent.SetCurrentKey("Student ID");
                    // getStudent.SetRange("Student ID", getStudent."Student ID");
                    // openPage.SetTableView(getStudent);
                    // openPage.Run();
                end;
            }

            action("Import/Export Image")
            {
                Image = Add;
                RunObject = Page MyStudentImagePage;
            }
        }
    }

    var
        myInt: Integer;

    // getStudent: Record StudentInfo;
    // openPage: page MyStudentCardPage;
}