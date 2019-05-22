<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus details</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">


  <!-- Custom fonts for this template-->
  <link href="dash/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="dash/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">

<script language="javascript">
  function deleteRecord(id){
    var doIt = confirm('Do you want to delete the record?');
    if(doIt){
      var f = document.form;
      f.method = "post";
      f.action = 'DeleteCar?id='+id;
      f.submit();
    } else{
      
    }
  }
</script>
</head>
<body>

<jsp:include page="dashboardup.jsp"></jsp:include>
<form name="form" method="POST">
	<div>
			<%
				String url="jdbc:mysql://localhost:3306/group_project";
				String dbname = "root";
				String pass = "";
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
				} catch(Exception e){
					e.printStackTrace();
				}
				
				Connection connection = null;
				PreparedStatement statement = null;
				ResultSet rs = null;
				
			%>

			<h4 align="center" style="color:green" ><font><strong>Cars details</strong></font></h4>
			<table class="table table-hover table-bordered" align="center" cellpadding="5" cellspacing="5" border="1">
			<tr>
				
			</tr>
			<thead>
				<tr >
					<th scope="col">S/No</th>
					<th scope="col">Number Plate</th>
					<th scope="col">Insurance company</th>
					<th scope="col">Premiums</th>
					<th scope="col">Condition</th>
					<th scope="col">Purchase Date</th>	
					<th scope="col">Assigned Driver</th>									
					<th class="text-right">Actions</th>
				</tr>
			</thead>
			
			<%
				try{
					
					//create a connection
					Connection con = DriverManager.getConnection(url, dbname, pass);
					//query to select only cars
					String query = "select * from local_vehicles where vehicle_type=?";
					//create a statement
					statement = con.prepareStatement(query);
					statement.setString(1, "Car");
					rs = statement.executeQuery();
					
					while(rs.next()){
						%>
						<tbody>
							<tr>
							<td><%= rs.getInt("id")%></td>
							<td><%= rs.getString("number_plate")%></td>
							<td><%= rs.getString("insurance_company")%></td>
							<td><%= rs.getInt("premium")%></td>
							<td><%= rs.getString("vehicle_condition")%></td>
							<td><%= rs.getString("purchase_date") %></td>
							<td><%= rs.getString("assigned_driver") %></td>
							<td class="text-right">
								<a href="editCar.jsp?u=<%= rs.getInt("id")%>" class="btn btn-success" style="width:80px;">EDIT</a>
								<input type="submit" class="btn btn-danger" style="width:80px;" onclick="deleteRecord(<%= rs.getInt("id")%>)" value="DELETE" ></input>
							</td>
						</tr>
						</tbody>
						
						<% 
					}
				} catch(Exception e){
					e.printStackTrace();
				}
			%>

</table>
			
		</div>
</form>	
<jsp:include page="dashboarddown.jsp"></jsp:include>

</body>
</html>