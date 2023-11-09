page 50110 "StudentInfo List"
{
    Caption = 'StudentInfo List';
    CardPageId = MyStudentCardPage;
    PageType = List;
    SourceTable = StudentInfo;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {

        area(content)
        {
            repeater("student Info")
            {

                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    Caption = 'Student ID';
                    Tooltip = 'Specifies the Student ID.';
                }

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                    Tooltip = 'Specifies the First Name.';
                }

                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                    Tooltip = 'Specifies the Last Name.';
                }

                field("Class"; Rec."Class")
                {
                    ApplicationArea = All;
                    Caption = 'Class';
                    Tooltip = 'Specifies the Class.';
                }

                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                    Tooltip = 'Specifies the Email.';
                }

                field("Phone"; Rec."Phone")
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                    Tooltip = 'Specifies the Phone.';
                }

                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                    Tooltip = 'Specifies the Address.';
                }

                field("GPA"; Rec."GPA")
                {
                    ApplicationArea = All;
                    Caption = 'GPA';
                    Tooltip = 'Specifies the GPA.';
                }

                field("Age"; Rec."Age")
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                    Tooltip = 'Specifies the Age.';
                }

                field("Photo"; Rec."Photo")
                {
                    ApplicationArea = All;
                    Caption = 'Photo';
                    Tooltip = 'Specifies the Photo.';
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Import")
            {
                Image = Import;

                trigger OnAction();
                begin
                    Xmlport.Run(50110, false, true);
                end;
            }

            action("Export")
            {
                Image = Export;

                trigger OnAction();
                begin
                    Xmlport.Run(50110, false, false);
                end;
            }
        }
    }

}