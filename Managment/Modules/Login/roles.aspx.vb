
Partial Class Managment_Modules_Login_roles
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = String.Format("دادن حق دسترسی به کاربر {0}", Session("Username_CreateUser"))
    End Sub
End Class
