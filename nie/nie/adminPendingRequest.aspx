<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminPendingRequest.aspx.vb" Inherits="nie.adminPendingRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tempId" Height="339px" Width="18px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="tempId" HeaderText="ApproveID" />
                <asp:BoundField DataField="fromDate" HeaderText="From Date" />
                <asp:BoundField DataField="toDate" HeaderText="To Date" />
                <asp:BoundField DataField="userName" HeaderText="Name" />
                <asp:BoundField DataField="nic" HeaderText="NIC" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="mobileNo" HeaderText="Mobile Number" />
                <asp:BoundField DataField="userAddress" HeaderText="Address" />
                <asp:BoundField DataField="occupation" HeaderText="Occupation" />
                <asp:BoundField DataField="fName" HeaderText="File" ReadOnly="True" />
                <asp:BoundField DataField="roomId" HeaderText="Room ID" />
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("fName") %>' Target="_blank">View</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" EditText="Approve" ShowEditButton="True">
                <ControlStyle BackColor="#006600" ForeColor="White" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" DeleteText="Disapprove" ShowDeleteButton="True">
                <ControlStyle BackColor="Red" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    

</asp:Content>
