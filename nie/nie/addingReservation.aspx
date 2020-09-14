<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addingReservation.aspx.vb" Inherits="nie.addingReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function addResrve() {
            var roomId = parseInt(document.getElementById("roomId").value);
            var fromDate = Math.round((new Date(document.getElementById("fromDateId").value).getTime() / 1000));
            var toDate = Math.round((new Date(document.getElementById("toDateId").value).getTime() / 1000));
            var isActive = parseInt(document.getElementById("isActive").value);

            <%--PageMethods.GetCurrentTime(document.getElementById("<%=TextBox1.ClientID%>").value, OnSuccess);--%>
            PageMethods.AddReservation(roomId, fromDate, toDate,isActive, OnSuccess);
    }
    function OnSuccess(response, userContext, methodName) {
        alert(response);
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <div>
        Room Id :
     <asp:TextBox ID="roomId" runat="server"></asp:TextBox><br />
        From Date :
        <input type="date" id="fromDateId" name="fromDateName" /><br />
        To date :
        <input type="date" id="toDateId" name="toDateName" /><br />
        isActive :
         <asp:TextBox ID="isActive" runat="server"></asp:TextBox><br />

        <input type="button" id="saveBtnId" value="Add" onclick="addResrve()" />
    </div>
    </form>
</body>
</html>
