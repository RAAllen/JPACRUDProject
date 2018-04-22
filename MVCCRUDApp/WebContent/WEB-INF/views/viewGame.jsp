<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="row">
			<ul>
				<li><h4>${game.name}</h4></li>
				<li>Made in ${game.releaseYear} by ${game.maker}</li>
				<li>${game.description}</li>
				<li><img src="${game.picture}" alt="An image of ${game.name}"
					height="150" width="150" /></li>
				<li><a href="${game.video}" target="_blank">Watch it being
						played</a></li>
			</ul>
		</div>
		<div class="row">
			<form action="deleteGame.do" method="POST">
				<label for="delete">Delete the Game: </label> 
				<input type="hidden" name="gameToDelete" value="${game.id}"> 
				<input class="btn btn-warning" type="submit" value="delete">
			</form>
			<form action="updateGame.do" method="POST">
				<label for="update">Update the Game:</label> 
				<input type="hidden" name="gameToUpdate" value="${game.id}"> 
				<input class="btn btn-warning" type="submit" value="update">
			</form>
		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>