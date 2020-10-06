Public Class testing
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ClientScript.RegisterStartupScript(e.GetType(), "randomtext", "Redisplay()", True)
    End Sub
End Class