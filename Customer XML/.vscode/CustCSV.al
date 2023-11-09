xmlport 50101 CustCSV
{

    Direction = "Export";
    Format = Xml;
    //FormatEvaluate = Xml;

    schema
    {
        textelement(Root)
        {
            tableelement(Customer; Customer)
            {
                fieldattribute(Id; Customer.Id)
                {

                }
                fieldattribute(Number; Customer."No.")
                {

                }
                fieldattribute(Language; Customer."Language Code")
                {

                }
                fieldattribute(Name; Customer.Name)
                {

                }

                textelement(Address)
                {
                    fieldelement(StreetAndNr; Customer.Address)
                    {
                        fieldattribute(Address2; Customer."Address 2")
                        {

                        }
                    }

                    fieldelement(City; Customer.City)
                    {
                        fieldattribute(ZipCode; Customer."Post Code")
                        {

                        }
                    }
                }
                fieldelement(Phone; Customer."Phone No.")
                {

                }
            }
        }
    }



}