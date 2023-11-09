codeunit 50112 ImageManagement
{
    procedure ImportItemPicture(var Item: Record Item)
    begin
        if Item.Picture.Count > 0 then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream('Import', '', 'All Files (*.*)|*.*',
           FromFileName, PicInStream) then begin
            Clear(Item.Picture);
            Item.Picture.ImportStream(PicInStream, FromFileName);
            Item.Modify(true);
        end;

    end;

    procedure ExportItemPicture(var Item: Record Item)
    begin
        if Item.Picture.Count = 0 then
            exit;

        for Index := 1 to Item.Picture.Count do begin
            if TenantMedia.Get(Item.Picture.Item(Index)) then begin
                TenantMedia.calcfields(Content);
                if TenantMedia.Content.HasValue then begin
                    FileName := Item.TableCaption + '_Image' + format(Index) +
                    GetTenantMediaFileExtension(TenantMedia);

                    TenantMedia.Content.CreateInStream(PicInstream);
                    DownloadFromStream(PicInstream, '', '', '', FileName);
                end;
            end;
        end;

    end;

    local procedure GetTenantMediaFileExtension(var TenantMedia: Record "Tenant Media"): Text;
    begin
        case TenantMedia."Mime Type" of
            'image/jpeg':
                exit('.jpg');
            'image/png':
                exit('.png');
            'image/bmp':
                exit('.bmp');
            'image/gif':
                exit('.gif');
            'image/tiff':
                exit('.tiff');
            'image/wmf':
                exit('.wmf');
        end;
    end;


    trigger OnRun()
    begin

    end;

    var
        PicInStream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The existing picture will be replaced. Do you want to continue?', Locked = false, MaxLength = 250;
        Index: Integer;
        TenantMedia: Record "Tenant Media";
        FileName: Text;

}