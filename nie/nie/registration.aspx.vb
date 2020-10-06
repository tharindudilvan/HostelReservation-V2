Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submit_btn_Click(sender As Object, e As EventArgs) Handles submit_btn.Click
        Dim fromDate = Session("fromDate")
        Dim toDate = Session("toDate")
        Dim totalPrice = Session("totalPrice")


        Dim con As New SqlConnection
        Dim cmd As New SqlCommand


        con.ConnectionString = "Data Source=LAPTOP-G1HLRBB1;Initial Catalog=nie_hrs_sys;Integrated Security=True"
        con.Open()

        Dim fileId As Integer = 0
        cmd = New SqlCommand("SELECT MAX(fileId) FROM tempReservation", con)

        Dim chk As Object = cmd.ExecuteScalar()
        If IsDBNull(chk) Then
            fileId = 1
        Else
            cmd = New SqlCommand("SELECT MAX(fileId) FROM tempReservation", con)
            fileId = cmd.ExecuteScalar()
            fileId = fileId + 1

        End If

        If fileUpload_occupation.HasFile Then
            cmd = New SqlCommand("INSERT INTO tempReservation (fromDate,toDate,userName,nic,email,mobileNo,userAddress,occupation,price,fileId,fName) VALUES (" & fromDate & "," & toDate & ",'" & full_name.Text & "','" & nic_number.Text & "','" & email.Text & "','" & mobile_number.Text & "','" & address.Text & "','" & occupation.Text & "'," & totalPrice & "," & fileId & ",'" & fileUpload_occupation.FileName & "')", con)
            cmd.ExecuteNonQuery()
            con.Close()

            Dim savepath As String = "~\\UploadFile\\"
            Dim fileName As String = fileUpload_occupation.FileName

            fileUpload_occupation.SaveAs(Server.MapPath(savepath + fileName))


            'fileUpload_occupation.SaveAs(Server.MapPath(fileUpload_occupation.FileName))
            ClientScript.RegisterStartupScript(e.GetType(), "randomtext", "Redisplay()", True)
        End If




        'Response.Write("<script>alert ('Data recorded is successfully') </script>")


    End Sub
End Class