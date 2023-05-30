<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpenseTracker.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style1 {
            width: 749px;
        }
    </style>
</head>
<body>
    <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
                <div class="col-md-8 col-lg-7 col-xl-6">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                        class="img-fluid" alt="Phone image" />
                </div>
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <form id="form1" runat="server">

                        <div class="form-outline mb-4">
                            <asp:TextBox ID="uname" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control" MaxLength="16"></asp:TextBox>

                            <label class="form-label" for="form1Example13">Username</label>
                        </div>

                        <div class="form-outline mb-4">
                            <asp:TextBox ID="pass" runat="server" AutoCompleteType="Disabled" AutoPostBack="False" CssClass="form-control" MaxLength="14" TextMode="Password"></asp:TextBox>
                            <label class="form-label" for="form1Example23">Password</label>
                        </div>
                        <div class="form-outline mb-4">
                            <asp:TextBox ID="loginerr" runat="server" ForeColor="Red" ReadOnly="True" Width="285px" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="form1Example23">Server Messege</label>
                        </div>

                        <asp:Button ID="Button1" runat="server" OnClick="Btnclick" Text="Login" CausesValidation="False" CssClass="btn btn-primary btn-lg btn-block" />
                        <p>New to website? <a href="Register.aspx">Register here</a></p>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>