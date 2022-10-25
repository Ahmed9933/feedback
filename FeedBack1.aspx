<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBack1.aspx.cs" Inherits="FeedBack.FeedBack1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
  <div class="title">
    <h1>contact us form</h1>
  </div>
  <div class="contact-form">
    <div class="input-fields">
      <%--<input type="text" class="input" placeholder="Name"/>
      <input type="text" class="input" placeholder="Email Address"/>
      <input type="text" class="input" placeholder="Phone"/>
      <input type="text" class="input" placeholder="Subject"/>--%>
        <asp:TextBox ID="TxtAnswer1" class="input-fields" placeholder="Name" runat="server" required="required"></asp:TextBox>
        <asp:TextBox ID="TextBox1" class="input-fields" placeholder="Email Address" runat="server" required="required"></asp:TextBox>
        <asp:TextBox ID="TextBox22" class="input-fields" placeholder="Phone" runat="server" required="required" ></asp:TextBox>
        <asp:TextBox ID="TextBox3" class="input-fields" placeholder="Subject" runat="server" required="required"></asp:TextBox>
        <asp:TextBox ID="lblMassage" class="input-fields" placeholder="lblMassage" runat="server" ></asp:TextBox>
    </div>
    <div class="msg">
      <%--<textarea placeholder="Message"></textarea>--%>
        <asp:TextBox ID="TxtNote"  runat="server" Font-Bold="True" 
          Font-Size="Large" Height="140px" TextMode="MultiLine" 
        Width="80%" BorderStyle="Outset" style="right: -727px; top: 0px" required="required" placeholder="الملاحظات"></asp:TextBox>
        <br />
      <%--<div class="btn">send</div>--%>
        <div><asp:Button ID="send" class="btn" runat="server" Text="send" OnClick="send_Click" /></div>
        
    </div>
  </div>
</div>
    </form>
</body>
</html>
