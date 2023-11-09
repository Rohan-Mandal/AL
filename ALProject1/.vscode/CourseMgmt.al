table 50100 CourseMgmt
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Type"; Option)
        {
            OptionMembers = "Instructor Led","e-Learning","Remote Training";
            DataClassification = ToBeClassified;
        }

        field(5; "Duration"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Price; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(8; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(9; "Passing Rate"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Instructor Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));
        }

        field(120; "Instructor Name"; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
        }
    }

    keys
    {
        key("Primary Key1"; Code)
        {
            Clustered = true;
        }
        key("Secondary Key1"; "Instructor Code")
        {
           // MaintainSqlIndex = true;

        }
        key("Secondary key2"; Type)
        {

        }
    }

}