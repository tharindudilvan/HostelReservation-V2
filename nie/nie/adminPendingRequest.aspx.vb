Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Imports System.Configuration
Imports System.Data
Imports System.Web.UI
Imports System.Web
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Linq
Imports System.IO
Imports System.Net
Imports System.Net.Mail

Public Class adminPendingRequest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (IsPostBack) Then
            GVbind()
        End If
    End Sub

    Dim cs As String = "Data Source=LAPTOP-G1HLRBB1;Initial Catalog=nie_hrs_sys;Integrated Security=True"
    Protected Sub GVbind()
        Using con As New SqlConnection(cs)
            con.Open()
            Dim cmd As New SqlCommand("SELECT tempId,fromDate,toDate,userName,nic,email,mobileNo,userAddress,occupation,fName,roomId from tempReservation WHERE approveStatus=0", con)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            If (dr.HasRows = True) Then
                GridView1.DataSource = dr
                GridView1.DataBind()
            End If
            con.Close()

        End Using

    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        GVbind()

    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim approveId As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value.ToString())
        Dim fromDate As Integer = (CType(GridView1.Rows(e.RowIndex).Cells(1).Controls(0), TextBox)).Text
        Dim toDate As Integer = (CType(GridView1.Rows(e.RowIndex).Cells(2).Controls(0), TextBox)).Text
        Dim name As String = (CType(GridView1.Rows(e.RowIndex).Cells(3).Controls(0), TextBox)).Text
        Dim nic As String = (CType(GridView1.Rows(e.RowIndex).Cells(4).Controls(0), TextBox)).Text
        Dim email As String = (CType(GridView1.Rows(e.RowIndex).Cells(5).Controls(0), TextBox)).Text
        Dim mobileNo As String = (CType(GridView1.Rows(e.RowIndex).Cells(6).Controls(0), TextBox)).Text
        Dim address As String = (CType(GridView1.Rows(e.RowIndex).Cells(7).Controls(0), TextBox)).Text
        Dim occupation As String = (CType(GridView1.Rows(e.RowIndex).Cells(8).Controls(0), TextBox)).Text
        Dim roomId As String = (CType(GridView1.Rows(e.RowIndex).Cells(10).Controls(0), TextBox)).Text

        Using con As New SqlConnection(cs)
            con.Open()
            Dim cmd As New SqlCommand("UPDATE tempReservation SET fromDate = '" & fromDate & "',toDate='" & toDate & "',userName='" & name & "',nic='" & nic & "',email='" & email & "',mobileNo='" & mobileNo & "',userAddress='" & address & "',occupation='" & occupation & "',roomId='" & roomId & "',approveStatus=" & 1 & " WHERE tempId='" & approveId & "'", con)
            Dim t As Integer = cmd.ExecuteNonQuery()
            If (t > 0) Then
                Response.Write("<script>alert ('Data has Update') </script>")
                GridView1.EditIndex = -1
                GVbind()

                MsgBox(name)

            End If
        End Using

        Using con As New SqlConnection(cs)
            con.Open()
            Dim cmd As New SqlCommand("INSERT INTO reservation (roomId,fromDate,toDate,userName,nic,email,mobileNo,userAddress,occupation) VALUES ('" & roomId & "','" & fromDate & "','" & toDate & "','" & name & "','" & nic & "','" & email & "','" & mobileNo & "','" & address & "','" & occupation & "')", con)
            cmd.ExecuteNonQuery()
            MsgBox("Send data")
            con.Close()
        End Using

    End Sub
End Class