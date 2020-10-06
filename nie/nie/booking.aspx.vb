Public Class booking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        bill_info_num_persons.Text = Request.QueryString("noOfPerson")
        bill_info_price_per_room.Text = Request.QueryString("Price")
        bill_info_number_of_days.Text = Request.QueryString("diff")
        bill_info_additional_charges.Text = Request.QueryString("additionalCharges")
        bill_info_total.Text = Request.QueryString("totalPrice")





    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim fromDate = Request.QueryString("fromDate")
        Dim toDate = Request.QueryString("todate")
        Dim totalPrice = Request.QueryString("totalPrice")





        Session("fromdate") = fromDate
        Session("todate") = toDate
        Session("totalPrice") = totalPrice
        Response.Redirect("registration.aspx")
    End Sub
End Class