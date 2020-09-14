Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Imports System
Imports System.Configuration
Imports System.Data
Imports System.Web

Public Class addingReservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Function AddReservation(roomId As Integer, fromDate As Integer, toDate As Integer, isActive As Integer) As String

        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        con.ConnectionString = "Data Source=LAPTOP-G1HLRBB1;Initial Catalog=nie_hrs_sys;Integrated Security=True"
        cmd = New SqlCommand("INSERT INTO reservation VALUES ('" & roomId & "','" & fromDate & "','" & toDate & "','" & isActive & "')", con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        'MsgBox("Success")

        Return "Successfully added"

    End Function

End Class