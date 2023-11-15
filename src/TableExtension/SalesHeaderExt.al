tableextension 50105 "Sign Ext. Sales Header" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50105; "Signature"; Blob)
        {
            Caption = 'Signature';
            Description = 'Signature';
            DataClassification = CustomerContent;
            Subtype = Bitmap;
        }
    }

    procedure SignDoc(var Base64Text: Text)
    var
        Base64: Codeunit "Base64 Convert";
        RecordRef: RecordRef;
        OutS: OutStream;
        TempBlob: Codeunit "Temp Blob";
        ImgBase64String: Text;
    begin
        Base64Text := Base64Text.Replace('data:image/png;base64,', '');
        TempBlob.CreateOutStream(OutS);
        Base64.FromBase64(Base64Text, OutS);
        RecordRef.GetTable(Rec);
        TempBlob.ToRecordRef(RecordRef, Rec.FieldNo("Signature"));
        RecordRef.Modify();
    end;
}