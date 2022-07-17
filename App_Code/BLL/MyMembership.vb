Imports Microsoft.VisualBasic
Imports System.Data

<System.ComponentModel.DataObject()> _
Public Class MyMembership

    Dim DLL_Profile As New DS_MembershipTableAdapters.Tbl_ProfileTableAdapter
    Dim DLL_SelectAllUser As New DS_MembershipTableAdapters.SelectAllUserTableAdapter
    Dim DLL_SelectAllUser_ByPicture As New DS_MembershipTableAdapters.SelectAllUser_ByPictureTableAdapter
    Dim DLL_SelectRowDetailUser As New DS_MembershipTableAdapters.Select_Row_DetailUserTableAdapter

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Insert, True)> _
    Public Function InsertProfileUser(ByVal username As String, ByVal fn As String, ByVal ln As String, _
                                      ByVal Email As String, _
                                      ByVal image As String) As Boolean

        Try
            DLL_Profile.InsertQuery(username, fn, ln, Email, image)
            Return True
        Catch ex As Exception
            Return False
        End Try

    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, True)> _
    Public Function SelectAllUser() As DataTable
        Try
            Return DLL_SelectAllUser.GetData
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, True)> _
    Public Function SelectAllUser_ByPicture() As DataTable
        Try
            Return DLL_SelectAllUser_ByPicture.GetData
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, True)> _
    Public Function SelectDetailInfoUser(ByVal username As String) As DataTable
        Try
            Return DLL_SelectRowDetailUser.GetData(username)
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, True)> _
    Public Function UpdateImage(ByVal StrPath As String, ByVal Username As String) As Boolean
        Try
            DLL_Profile.Update_Image(StrPath, Username)
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Delete, True)> _
    Public Function Delete_Profile(ByVal username As String) As Boolean
        Try
            Roles.RemoveUserFromRoles(username, Roles.GetRolesForUser(username)) ' {2.5}
            Membership.DeleteUser(username) ' {2}
            DLL_Profile.Delete_Profile(username) ' {1}
            DLL_Profile.Delete_ExtraRowInASPnet_Users(username) ' {3}
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    <System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, True)> _
    Public Function UpdateProfile(ByVal fn As String, ByVal ln As String, ByVal E1 As String, ByVal username As String) As Boolean
        Try
            DLL_Profile.Update_Profile(fn, ln, E1, username)
            Return True
        Catch ex As Exception : Return False
        End Try
    End Function

End Class
