<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView Paging Example</title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        background-color: #eeeeee;
        }
    h1
        {
            color: #ff0000;
        }

        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            background-color: #fff;
        }
        table th
        {
            background-color: #B8DBFD;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>
<body><center>
<br>&nbsp;
<h1>ASP.NET Database Access Test App</h1>
<br>&nbsp;
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="CustomerID" HeaderText="Customer ID" />
                <asp:BoundField ItemStyle-Width="150px" DataField="ContactName" HeaderText="Contact Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Country" HeaderText="Country" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
<br>
<%

if(Environment.GetEnvironmentVariable("DOTNET_RUNNING_IN_CONTAINER") == null) { Response.Write("<b>ASP.NET Core Environment:</b> No"); }

%> |
<b>Served by:</b> <% =Server.MachineName %> | 
<b>Runtime OS:</b> <% =Environment.OSVersion %> | 
<b>Server IP:</b> <% =Request.ServerVariables["LOCAL_ADDR"] %>
</center>
</body>
</html>
