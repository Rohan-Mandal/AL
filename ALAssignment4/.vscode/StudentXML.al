xmlport 50110 MyStudentXmlport
{
    Format = VariableText;
    Direction = Both;
    //ApplicationArea = All;
    schema
    {
        textelement(Root)
        {
            tableelement(StudentInfo; StudentInfo)
            {
                fieldattribute(StudentID; StudentInfo."Student ID") { }
                fieldattribute(FirstName; StudentInfo."First Name") { }
                fieldattribute(LastName; StudentInfo."Last Name") { }
                fieldattribute(Class; StudentInfo.Class) { }
                fieldattribute(Phone; StudentInfo.Phone) { }
                fieldattribute(Address; StudentInfo.Address) { }
                fieldattribute(GPA; StudentInfo.GPA) { }
                fieldattribute(AGE; StudentInfo.Age) { }
                fieldattribute(Email; StudentInfo.Email) { }
            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {

    //             }
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}