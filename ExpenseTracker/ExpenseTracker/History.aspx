<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="ExpenseTracker.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .myMarg{
            margin-top : 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row myMarg">
            <div class="col-md-4"></div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="text-uppercase" for="exampleInputEmail1">ID(ReadOnly)</label>
                    <asp:TextBox ID="eid" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-uppercase">Expense Name</label>
                    <asp:TextBox ID="ename" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-uppercase">Expense Details</label>
                    <asp:TextBox ID="edetails" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-uppercase">Expense Amount</label>
                    <asp:TextBox ID="eamount" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="text-uppercase">Expense Date</label>
                    <asp:TextBox ID="edate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary btn-block" Text="Update" OnClick="editEx_Click" />
                <br />
                 <div class="col text-center">
                <%--<asp:Button ID="btnHome" runat="server" CssClass="btn btn-primary " Text="Home" OnClick="Home.aspx" />--%>
                <a href="Home.aspx" class="btn btn-primary" >Home</a>
                 </div>
                <br />
                <br />
            </div>
            <div class="col-md-4"></div>
        </div>
        <div class="container">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div>
                    <asp:GridView ID="History1" runat="server" CellPadding="4" CssClass="table table-hover table-responsive" ForeColor="Black" Height="164px" Width="500px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger btn-sm" OnClick="LinkButton1_Click">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success btn-sm" OnClick="LinkButton2_Click">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>

    </form>
</body>
</html>
