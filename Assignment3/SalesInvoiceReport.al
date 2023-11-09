report 50111 SalesInvoiceReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


    dataset
    {
        dataitem("SalesInvoiceHeader"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";
            MaxIteration = 1;
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Bill_to_Name; "Bill-to Name") { }
            column(Bill_to_Country_Region_Code; "Bill-to Country/Region Code") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code") { }

            dataitem("SalesInvoiceLine"; "Sales Invoice Line")
            {

                DataItemTableView = sorting("Document No.", "Line No.") order(ascending) where(Type = filter(Item));
                DataItemLinkReference = SalesInvoiceHeader;
                DataItemLink = "Document No." = field("No.");
                column(No_; "No.") { }
                column(Amount; Amount) { }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                column(Description; Description) { }
                column(Type; Type) { }
                column(Unit_Cost; "Unit Cost") { }
                column(Quantity; Quantity) { }
                column(Line_Discount_Amount; "Line Discount Amount") { }

                dataitem("Country/Region"; "Country/Region")
                {
                    DataItemLinkReference = SalesInvoiceHeader;
                    DataItemLink = "Code" = field("Bill-to Country/Region Code");

                    MaxIteration = 1;
                    column("Code"; "Code") { }
                    column(Name; Name) { }
                    column(EU_Country_Region_Code; "EU Country/Region Code") { }
                }
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
                    field(myInt; myInt)
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
        myInt: Boolean;
}