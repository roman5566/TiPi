
<%@include file="header.jsp"%>
<title>Siirtoapu.fi -- Laskutetut tilaukset</title>
</head>
<body>
	<div class="container">

		<%@include file="navi.jsp"%>
		<div class="row-fluid" id="area">
			<%@include file="ordersNavi.jsp"%>
			<div class="row-fluid">
				<div class="span10 offset1">

					<fieldset>
						<legend>Laskutetut tilaukset</legend>
						<div class="row-fluid">
							<div class="span12">

								<table id="myTable" class="table table-striped">
									<thead>
										<tr>
											<th>Yritys</th>
											<th>Nouto</th>
											<th>Toimitus</th>
											<th>Palautus</th>
											<th>Valmis</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orders}" var="order">
											<tr>
												<td><c:out value="${order.userProfile.company.name}" /></td>
												<td><c:out value="${order.collectionCity}" />, <c:out
														value="${order.collectionAddress}" />
													<div style="float: right; text-align: right">
														<i class="icon-arrow-right"></i>
													</div></td>
												<c:choose>
													<c:when test="${order.hasNewDestination}">
														<td><c:out value="${order.destinationCity}" />
															<div style="float: right; text-align: right">
																<i class="icon-arrow-right"></i>
															</div>, <c:out value="${order.destinationAddress}" /></td>
														<td><c:out value="${order.nextDestinationCity}" />,
															<c:out value="${order.nextDestinationAddress}" /></td>
														<td><c:out value="${order.nextDestinationDate}" /> <c:out 
																value="${order.nextDestinationTime}" /></td>
													</c:when>
													<c:otherwise>
														<td><c:out value="${order.destinationCity}" />, <c:out
																value="${order.destinationAddress}" /></td>
														<td></td>
														<td><c:out value="${order.destinationDate}" /> <c:out
																value="${order.destinationTime}" /></td>
													</c:otherwise>
												</c:choose>
												<td>
												<form action="orderInformation" method="post" class="span4">
													<input type="hidden" name="orderID" id="orderID"
														value="${order.orders_id}" />
														<button class="btn btn-primary" type="submit">Avaa</button>
												</form>
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
		src="../resources/jquery-dataTables/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../resources/styles/dataTableConf.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').dataTable( {
			"aaSorting": [[ 4, "desc" ]],
			"bInfo": false,
			"sDom": "<'row'<'span5 offset1'l><'span5 offset1'f>r>t<'row'<'span5'i><'span5'p>>",
			"sPaginationType": "bootstrap",
			"oLanguage": {
				"sLengthMenu" : "N�yt� _MENU_",
				"sSearch": "Hae",
				"sZeroRecords": "Ei tilauksia", 
				"oPaginate": {
				"sNext": "Seuraava",
				"sPrevious": "Edellinen",
				},
			},
			"aoColumnDefs": [
			               { "aTargets": [ 0 ], "bSortable": true },
			               { "aTargets": [ 1 ], "bSortable": true },
			               { "aTargets": [ 2 ], "bSortable": true },
			               { "aTargets": [ 3 ], "bSortable": true },
			               { "aTargets": [ 4 ], "sType": "date-uk"},
			               { "aTargets": [ 5 ], "bSortable": false },
			               ],
		} );
	} );
	</script>
</body>
</html>