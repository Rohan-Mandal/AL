table 50101 StudentInfo
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            NotBlank = true;
            Caption = 'Student ID';
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[30])
        {
            NotBlank = true;
            Caption = 'First Name';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin

            end;
        }

        field(3; "Last Name"; Text[30])
        {
            NotBlank = true;
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }

        field(4; Class; Text[30])
        {
            NotBlank = true;
            Caption = 'Class';
            DataClassification = ToBeClassified;
        }

        field(5; Email; Text[50])
        {
            NotBlank = true;
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }

        field(6; Phone; Text[20])
        {
            Caption = 'Phone';
            CharAllowed = '() +0123456789';
            DataClassification = ToBeClassified;
        }

        field(7; Address; Text[100])
        {
            NotBlank = true;
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }

        field(8; GPA; Decimal)
        {
            NotBlank = true;
            Caption = 'GPA';
            MinValue = 1;
            MaxValue = 10;
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin

            end;
        }

        field(9; Age; Integer)
        {
            NotBlank = true;
            Caption = 'AGE';
            MinValue = 1;
            MaxValue = 99;
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin

            end;
        }

        field(10; Photo; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
            //Editable = true;
        }
    }

    keys
    {
        key(Key1; "Student ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        // if StrLen(Rec."First Name") < 1 then
        //     Error('%1 Cannot be empty', FieldCaption("First Name"));

        // if Rec.Age > 99 then
        //     Error('%1 cannot be greater than 99', FieldCaption(Age));

        // if Rec.Age < 1 then
        //     Error('%1 Cannot be less than 1', FieldCaption(Age));

        // if (Rec.GPA < 1) AND (Rec.GPA > 10) then
        //     Error('%1 should be greater than 1 and less than 10');
    end;

    trigger OnModify()
    begin
        //TestField("First Name");
        //TestField("Last Name");
        TestField(Age);
        TestField(GPA);
        //TestField(Address);
        //TestField(Class);
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}