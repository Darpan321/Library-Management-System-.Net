﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="issuedbooklist.aspx.cs" Inherits="library.issuedbooklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .hf{
            background: rgba(0, 0, 0, 0.5);
        }
        .dropdownlist1 {
    background: rgba(0, 0, 0, 0.5);
    color:white;

}
        .textbox{
            background: rgba(0, 0, 0, 0.5);
    color:white;
        }
        .panel{
            background: rgba(0, 0, 0, 0.5);
    color:white;
        }

    
        </style>
</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('issuebooklistup.png'); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
            <div style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;background: rgba(0, 0, 0, 0.5);position:sticky;">
                
                <asp:Button ID="home" runat="server" Text="HOME" style="border-style: none; border-color: inherit; border-width: medium; position:absolute; top: 8px; left: 514px; z-index:1000; color:white; height: 36px; width: 76px; font-size:18px; background:none; " OnClick="home_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logout.png" style="position:absolute; top: 7px; left: 1294px; z-index:1000; height: 36px; width: 36px;" OnClick="ImageButton1_Click" />
                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList1" runat="server" style="position:absolute; top: 12px; left: 600px; height: 29px; width: 111px; " Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>Add Books</asp:ListItem>
                    <asp:ListItem>Remove Books</asp:ListItem>
                    <asp:ListItem>Update Books</asp:ListItem>
                    <asp:ListItem>Available Books</asp:ListItem>
                    <asp:ListItem>All Books</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList2" runat="server" style="position:absolute; top: 12px; left: 741px; height: 29px; width: 125px; right: 226px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Issue Books</asp:ListItem>
                    <asp:ListItem>Add issue Book</asp:ListItem>
                    <asp:ListItem>Issued Booklist</asp:ListItem>
                    
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList3" runat="server" style="position:absolute; top: 12px; left: 895px; height: 29px; width: 125px; right: 72px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Return Books</asp:ListItem>
                    <asp:ListItem>Add return Book</asp:ListItem>
                    <asp:ListItem>Return Booklist</asp:ListItem>
                    
                </asp:DropDownList>
          
            </div>
            
            <div class="hf" style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;position:absolute; width: 162px; margin-left: 657px; top: 53px; left: 0px;">
            <asp:Label ID="Label2" runat="server" style="position:absolute; top: 16px; left: 19px; height: 20px; width: 124px; z-index:1000;color:white; right: 19px;"></asp:Label>
            </div>
            <div class="hf" style="height: 53px;margin-top:0px;top:604px; margin-bottom:0px;z-index:1000;position:absolute; width: 100%; left: 0px;">
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 15px; left: 567px; height: 20px; width: 317px; z-index:1000;color:white; right: 482px;">Copyright ©️ DDN LIbrary. All Rights Reserved.</asp:Label>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [issuebook]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="issueid" DataSourceID="SqlDataSource1" ForeColor="Black" style="position:absolute; top: 244px; left: 368px;">
                <Columns>
                    <asp:BoundField DataField="issueid" HeaderText="issueid" ReadOnly="True" SortExpression="issueid" />
                    <asp:BoundField DataField="bookid" HeaderText="bookid" SortExpression="bookid" />
                    <asp:BoundField DataField="customername" HeaderText="customername" SortExpression="customername" />
                    <asp:BoundField DataField="contactnumber" HeaderText="contactnumber" SortExpression="contactnumber" />
                    <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:Label ID="Label3" runat="server" Text="ISSUED BOOK LIST" style="position:absolute; top: 206px; left: 633px;" Font-Size="Large"></asp:Label>
        </form>
    </body>
    </html>
