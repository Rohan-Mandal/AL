page 50109 MyStudentCardPage
{
    Caption = 'StudentInfo CardPage';
    PageType = Card;
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentInfo;

    layout
    {
        area(Content)
        {
            group("Student Data")
            {
                field("Student ID"; Rec."Student ID")
                {
                    ShowMandatory = true;
                    ApplicationArea = All;

                }
                field("First Name"; Rec."First Name")
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

                field("Last Name"; Rec."Last Name")
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

                field(GPA; Rec.GPA)
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

                field(Age; Rec.Age)
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

            }

            group("Student Contact Detail")
            {
                field(Email; Rec.Email)
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

                field(Phone; Rec.Phone)
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }

                field(Address; Rec.Address)
                {
                    ShowMandatory = true;
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {
            part("Student Image"; MyStudentImagePage)
            {
                SubPageLink = "Student ID" = FIELD("Student ID");
                Editable = true;
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action("Student List Page")
            {
                ApplicationArea = All;
                RunObject = Page "StudentInfo List";
                Image = Relationship;

                trigger OnAction()
                begin
                    getStudent.SetCurrentKey("Student ID");
                    getStudent.SetRange("Student ID", getStudent."Student ID");
                    openPage.SetTableView(getStudent);
                    openPage.Run();

                end;
            }

            action("Import/Export Image")
            {
                Image = Add;
                RunObject = Page MyStudentImagePage;
            }
            action("Show Report")
            {
                RunObject = report MyStudentReport;
            }

        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        if Rec.Photo.HasValue = false then begin
            myNotify.Message('This Student has no photo Uploaded');
            myNotify.Send();
        end;
    end;

    var
        myInt: Integer;

        myNotify: Notification;

        getStudent: Record StudentInfo;
        openPage: Page "StudentInfo List";
}