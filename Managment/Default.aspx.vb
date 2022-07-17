Imports System.IO

Partial Class Managment_Default
    Inherits System.Web.UI.Page

    Dim iUse As Integer = 0
    Dim BLL_Profile As New MyMembership

    Protected Sub btnSingOut_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSingOut.Click
        FormsAuthentication.SignOut()
        Response.Redirect("~\default.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                AccFreeAndUseHOST()
                Try
                    lbl_DateTime.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)
                    lbl_Username.Text = "نام کاربری:" + Session("username").ToString() + "|"
                    With BLL_Profile.SelectDetailInfoUser(Session("username").ToString())
                        lbl_FnLn.Text = "نام کامل: " + .Rows(0)(2).ToString() + "    " + .Rows(0)(3).ToString()
                        Im_User.ImageUrl = .Rows(0)(5).ToString()
                    End With
                Catch ex As Exception
                End Try

            End If
        Catch ex As Exception
            Response.Write("مشکلی رخ داده است")
        End Try
    End Sub

    Sub GetFiles(ByVal source As DirectoryInfo)

        Dim files() As FileInfo = source.GetFiles
        Dim f As FileInfo
        For Each f In files
            iUse += f.Length
            '
        Next
        Dim dirs() As DirectoryInfo = source.GetDirectories
        For Each Dir As DirectoryInfo In dirs
            GetFiles(Dir)
        Next

    End Sub

    Public Function BytesToMegabytes(ByVal Bytes As Double) As Double
        Dim dblAns As Double
        dblAns = (Bytes / 1024) / 1024
        BytesToMegabytes = Format(dblAns, "###,###,##0.00")
    End Function

    Private Sub AccFreeAndUseHOST()
        '-----------------------------------------------
        GetFiles(New DirectoryInfo(MapPath("~")))
        Label1.Text = "فضای اشغال شده: " + (BytesToMegabytes(Convert.ToDouble(iUse)).ToString).ToString() + " MB"
        Label2.Text = "فضای آزاد: " + (100 - BytesToMegabytes(Convert.ToDouble(iUse)).ToString).ToString() + " MB"
        '--------------------------------------------------

        Dim yval As Double() = {BytesToMegabytes(Convert.ToDouble(iUse)).ToString, 100 - BytesToMegabytes(Convert.ToDouble(iUse)).ToString}
        Dim xval As String() = {"Free", "Busy"}
        Chart1.Series("Series1").Points.DataBindXY(xval, yval)


    End Sub

End Class
