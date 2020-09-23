Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Imports System
Imports System.Configuration
Imports System.Data
Public Class homepage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub
    Public Shared testCount As Integer



    <System.Web.Services.WebMethod()>
    Public Shared Function AddReservation(fromDate As Integer, toDate As Integer, genValue As Integer) As Integer()
        Dim connectionString As String

        connectionString = "Data Source=LAPTOP-G1HLRBB1;Initial Catalog=nie_hrs_sys;Integrated Security=True"
        connectionString = connectionString & "database=Pubs;Trusted_Connection=yes"
        Dim doubleRoomCount As Integer = 0
        Dim tripleRoomCount As Integer = 0
        Dim dometryCount As Integer = 0
        Dim dt As New DataTable()

        Using con As New SqlConnection(connectionString)
            con.Open()
            Using cmd As New SqlCommand("select sum(coalesce(t4.noBeds-t5.reserved_count,t4.noBeds)) as availableBedsCount from (Select * from nie_hrs_sys.dbo.rooms rooms2 inner join (Select id as room_id from nie_hrs_sys.dbo.rooms rooms except (select t2.id from (select * from nie_hrs_sys.dbo.rooms rooms3 inner join (SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t1 on rooms3.id=t1.roomId where reserved_count>=noBeds) t2)) s on s.room_id=rooms2.id where type='" & 1 & "' and gender ='" & genValue & "') t4 left join (
SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t5 on t4.id=t5.roomId;", con)
                Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)

                da.SelectCommand = cmd
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    For i As Integer = 0 To dt.Rows.Count - 1
                        doubleRoomCount = dt.Rows(i)("availableBedsCount")
                    Next
                End If
            End Using

            Using cmd As New SqlCommand("select sum(coalesce(t4.noBeds-t5.reserved_count,t4.noBeds)) as availableBedsCount from (Select * from nie_hrs_sys.dbo.rooms rooms2 inner join (Select id as room_id from nie_hrs_sys.dbo.rooms rooms except (select t2.id from (select * from nie_hrs_sys.dbo.rooms rooms3 inner join (SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t1 on rooms3.id=t1.roomId where reserved_count>=noBeds) t2)) s on s.room_id=rooms2.id where type='" & 2 & "' and gender ='" & genValue & "') t4 left join (
SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t5 on t4.id=t5.roomId;", con)
                Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)

                da.SelectCommand = cmd
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    For i As Integer = 0 To dt.Rows.Count - 1
                        tripleRoomCount = dt.Rows(i)("availableBedsCount")
                    Next
                End If
            End Using

            Using cmd As New SqlCommand("select sum(coalesce(t4.noBeds-t5.reserved_count,t4.noBeds)) as availableBedsCount from (Select * from nie_hrs_sys.dbo.rooms rooms2 inner join (Select id as room_id from nie_hrs_sys.dbo.rooms rooms except (select t2.id from (select * from nie_hrs_sys.dbo.rooms rooms3 inner join (SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t1 on rooms3.id=t1.roomId where reserved_count>=noBeds) t2)) s on s.room_id=rooms2.id where type='" & 3 & "' and gender ='" & genValue & "') t4 left join (
SELECT roomId,count(roomId) as reserved_count FROM nie_hrs_sys.dbo.reservation reservation where ((reservation.fromDate>='" & fromDate & "' and reservation.fromDate<='" & toDate & "') or (reservation.toDate>='" & fromDate & "' and reservation.toDate<='" & toDate & "') or ('" & fromDate & "' <= reservation.fromDate and '" & toDate & "'>=reservation.toDate ) or ('" & fromDate & "' >= reservation.fromDate and '" & toDate & "'<=reservation.toDate )) and isActive=1 group by roomId) t5 on t4.id=t5.roomId;", con)
                Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)

                da.SelectCommand = cmd
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    For i As Integer = 0 To dt.Rows.Count - 1
                        dometryCount = dt.Rows(i)("availableBedsCount")
                    Next
                End If
            End Using

        End Using

        Dim count As Integer() = {doubleRoomCount, tripleRoomCount, dometryCount}
        Return count

    End Function


End Class