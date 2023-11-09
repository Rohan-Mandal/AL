report 50101 MyStudentReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    // DefaultRenderingLayout = 
    RDLCLayout = 'mylayout.rdl';

    dataset
    {
        dataitem(DataItemName; StudentInfo)
        {
            column(Student_ID; "Student ID")
            {
                IncludeCaption = true;
            }

            column(First_Name; "First Name")
            {
                IncludeCaption = true;
            }

            column(Last_Name; "Last Name")
            {
                IncludeCaption = true;
            }

            column(Address; Address)
            {
                IncludeCaption = true;
            }

            column(Email; Email)
            {
                IncludeCaption = true;
            }

            column(Batch; Class)
            {
                IncludeCaption = true;
            }

            column(GPA; GPA)
            {
                IncludeCaption = true;
            }

            column(Age; Age)
            {
                IncludeCaption = true;
            }

            column(Phone; Phone)
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(myVar; myVar)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Integer;

        myVar: Boolean;
}