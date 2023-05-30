<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExpenseTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <section class="vh-100" style="background-color: #eee;">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-11">
                            <div class="card text-black" style="border-radius: 25px;">
                                <div class="card-body p-md-5">
                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="uname" runat="server" CssClass="form-control" MaxLength="16"></asp:TextBox>
                                                    <label class="form-label" for="form3Example1c">Username</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                                    <label class="form-label" for="form3Example3c">Your Email</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="pass" runat="server" CssClass="form-control" MaxLength="14" TextMode="Password"></asp:TextBox>
                                                    <label class="form-label" for="form3Example4c">Password</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="regerr" runat="server" ForeColor="Red" ReadOnly="True" Width="285px" CssClass="form-control" MaxLength="14"></asp:TextBox>
                                                    <label class="form-label" for="form3Example4c">Server Messege (readonly)</label>
                                                </div>
                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <asp:Button ID="regbtn" runat="server" Text="Register" CssClass="btn btn-primary btn-lg" OnClick="RegisterBtnSaveUser" />
                                            </div>
                                            <a href="Login.aspx">Already have an Account?</a>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;&nbsp;
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Username must be between 8-16 characters" ForeColor="Red" ValidationExpression="[\w\s]{8,16}"></asp:RegularExpressionValidator>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Password must be between 6-14 characters" ForeColor="Red" ValidationExpression="[\w\s]{6,14}"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                                class="img-fluid" alt="Sample image" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>