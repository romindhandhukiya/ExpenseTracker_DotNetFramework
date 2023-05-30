<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ExpenseTracker.Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />

    <title>Home</title>
</head>
<body>

    <form id="form1" runat="server" method="post">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand">ExpenseTracker</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="History.aspx">Show Expense</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">User Profile
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="dropdown-item" OnClick="LogoutUser" />
                            <a class="dropdown-item" href="History.aspx">Change Details</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <%--<div class="mx-auto my-5 shadow-lg p-3 mb-5 bg-white rounded" style="width: 300px;">--%>
                    <blockquote class="blockquote text-center">
                        <p class="mb-0">Add Expense</p>
                    </blockquote>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Expense Name</label>
                        <asp:TextBox ID="ename" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Expense Details</label>
                        <asp:TextBox ID="edetail" runat="server" Height="80px" Width="100%"></asp:TextBox>
                        &nbsp;
           
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">Expense Amount</label>
                        <asp:TextBox ID="eamount" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1">Expense Date and Time</label>
                        <asp:TextBox ID="edate" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control" TextMode="DateTimeLocal"></asp:TextBox>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Server Messege</label>
                            <asp:TextBox ID="expadded" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control" ForeColor="Red"></asp:TextBox>

                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="AddExpense" Text="Add" CssClass="btn btn-success" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   

                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" OnClick="ResetExoenseForm" Text="Reset" />
                        </div>
                    </div>
                    <%--</div>--%>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>
