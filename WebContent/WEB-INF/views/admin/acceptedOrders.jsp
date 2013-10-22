
<%@include file="header.jsp"%>
<title>Siirtoapu.fi -- Hyväksytyt tilaukset</title>
</head>
<body>
	<div class="container">

		<%@include file="navi.jsp"%>
		<div class="row-fluid" id="area">
			<div class="row-fluid">
				<div class="span12">
					<ul class="nav nav-tabs">
						<li><a href="new">Uudet</a></li>
						<li class="active"><a href="accepted">Kuitatut</a></li>
						<li><a href="collected">Haetut</a></li>
						<li><a href="taken">Viedyt</a></li>
						<li><a href="returned">Palautetut</a></li>
						<li><a href="completed">Valmiit</a></li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span10 offset1">
					<fieldset>
						<legend>Kuitatut tilaukset</legend>
						<div class="row-fluid">
							<div class="span12">

								<table id="myTable" class="table table-striped">
									<thead>
										<tr>
											<th>Yritys</th>
											<th>Mistä</th>
											<th></th>
											<th>Mihin</th>
											<th>Luontipäivämäärä</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orders}" var="order">
											<tr>
												<td><c:out value="${order.clientCompany}" /></td>
												<td><c:out value="${order.collectionCity}" />, <c:out
														value="${order.collectionAddress}" /></td>
												<td><i class="icon-arrow-right"></i></td>
												<td><c:out value="${order.destinationCity}" />, <c:out
														value="${order.destinationAddress}" /></td>
												<td><c:out value="${order.destinationDate}" /> <c:out
														value="${order.destinationTime}" /></td>
													<form action="orderInformation" method="post" class="span5">
														<td><input type="hidden" name="orderID" id="orderID"
															value="${order.orders_id}" />
														<button class="btn btn-primary" type="submit" value="submit">Avaa</button></td>
													</form>
												<td>
													<button class="btn btn-success">Kuittaa</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</fieldset>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript"
		src="../resources/jquery-tablesorter/jquery.tablesorter.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(function() {
				$("table#myTable").tablesorter({
					sortList : [ [ 1, 0 ] ]
				});
			});
		});
	</script>
</body>
</html>