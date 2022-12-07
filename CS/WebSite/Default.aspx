<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Editors_InputPrompt" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Input prompt in a textbox</title>
    <script type="text/javascript">
        var __initialText = "[Type your search here]";
        
function OnTextBoxInit(textBox) {
    OnTextBoxLostFocus(textBox);
}
function OnTextBoxGotFocus(textBox) {
    if (textBox.GetText() == __initialText)
        textBox.SetText("");
}
function OnTextBoxLostFocus(textBox) {
    if (textBox.GetText() == "")
        textBox.SetText(__initialText);
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <dxe:ASPxTextBox ID="tbSearch" runat="server" Width="170px">
            <ClientSideEvents Init="OnTextBoxInit" GotFocus="OnTextBoxGotFocus" LostFocus="OnTextBoxLostFocus" />
        </dxe:ASPxTextBox>
    </div>
</form>
</body>
</html>