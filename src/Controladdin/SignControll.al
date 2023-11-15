controladdin "SGNSignaturepad"
{
    MaximumHeight = 700;
    MinimumHeight = 400;
    MaximumWidth = 1900;
    MinimumWidth = 360;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    RequestedHeight = 400;
    RequestedWidth = 1200;
    Scripts = 'src\JavaScript\Sign.js', 'https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js';
    StyleSheets = 'src\CSS\Style.css';

    event Ready()
    procedure InitializeSignaturePad()

    event Sign(Signature: Text)
}