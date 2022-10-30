<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<c:import url="common/header.html"></c:import>
	<title>Home Page</title>
</head>
<body>
	<!-- Responsive navbar-->
	<c:import url="common/navbar.jsp"></c:import>
	
	<!-- Page content-->
	<div class="container mt-5">
		<table id="result" class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Major</th>
					<th>Year</th>
					<th>SeatNo</th>
					<th>Name</th>
					<th>Grade</th>
					<th>Qualify</th>
					
					<c:if test="${fn:contains(user.role,'admin') }">
					<th>Action</th>
					</c:if>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${resultList }">
					<c:url var="updateLink" value="result">
						<c:param name="mode" value="LOAD"></c:param>
						<c:param name="id" value="${result.id }"></c:param>
					</c:url>
					
					<c:url var="deleteLink" value="result">
						<c:param name="mode" value="DELETE"></c:param>
						<c:param name="id" value="${result.id }"></c:param>
					</c:url>
					
					<tr>
						<td> <c:out value="${result.id }"></c:out> </td>
						<td> <c:out value="${result.major }"></c:out> </td>
						<td> <c:out value="${result.year }"></c:out> </td>
						<td> <c:out value="${result.seatNo }"></c:out> </td>
						<td> <c:out value="${result.name }"></c:out> </td>
						<td> <c:out value="${result.grade }"></c:out> </td>
						<td> 
						
						<c:choose>
							<c:when test="${result.qualify }">
								<c:out value="*Qualified"></c:out>
							</c:when>
							<c:otherwise>
								<c:out value="-"></c:out>
							</c:otherwise>
						</c:choose>
						</td>
						
						<c:if test="${fn:contains(user.role,'admin') }">
						<td> 
							<a href="${updateLink }" class="btn btn-primary">Edit</a>
							<a href="${deleteLink }" id="delete" class="btn btn-danger" onclick="return confirm('Are you sure to delete this result?');">Delete</a>
						</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>ID</th>
					<th>Major</th>
					<th>Year</th>
					<th>SeatNo</th>
					<th>Name</th>
					<th>Grade</th>
					<th>Qualify</th>
					<th>Action</th>
				</tr>
			</tfoot>
		</table>
	</div>
	
	<!-- Footer Java Script -->
	<c:import url="common/footer.html"></c:import>
</body>
</html>
