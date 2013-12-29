<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Validation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/Validation.js"></script>
    <style type="text/css">
        .error {
            border: 2px solid red;
        }

        .success {
            border: 2px solid green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="UserName" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtUserName" data-validate="true" data-required="true" data-validate-msg="User Name required" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Password" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" data-validate="true" data-required="true" data-validate-msg="Password required" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" Text="Email" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" data-validate="true" data-required="true" data-email="true" data-validate-msg="Email Required 2222" 
                            data-email-msg="Email Not Valid" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnLogin" Text="Login" runat="server" AccessKey="l" OnClientClick="return btnLoginClick()" />
                    </td>
                </tr>

            </table>
        </div>
        <script type="text/javascript">
            var btnLoginClick = function () {
                var options = new validateSettings();
                options.showDefaultMessage = true;
                options.errorClass = "error";
                options.successClass = "success";
                $("div").custValidate(options);

                return false;
            }
        </script>
    </form>
</body>
</html>
