<%-- 
    Document   : afficherVols
    Created on : 2018-03-05, 11:04:39
    Author     : usager
--%>

<%@page import="com.entites.Vol"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<Vol> mesVols = (ArrayList<Vol>) request.getAttribute("mesVols");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Base de donnees auto</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<link rel="stylesheet" href="css/responsive-tables.css">

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/modernizr.min.js"></script>
<script type="text/javascript" src="js/responsive-tables.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		// dynamic table
		jQuery('#dyntable').dataTable({
			"sPaginationType" : "full_numbers",
			"aaSortingFixed" : [ [ 0, 'asc' ] ],
			"fnDrawCallback" : function(oSettings) {
				jQuery.uniform.update();
			}
		});

		jQuery('#dyntable2').dataTable({
			"bScrollInfinite" : true,
			"bScrollCollapse" : true,
			"sScrollY" : "300px"
		});

	});
</script>
</head>
<body>
    <%
            if (request.getAttribute("message") != null)
            {
              out.println("<span class='erreur'>"+request.getAttribute("message")+"</span>");
            }
        %>    
	<div class="mainwrapper">
		<table id="dyntable" class="table table-bordered responsive">
			<colgroup>
				<col class="con1" />
				<col class="con0" />
				<col class="con1" />
				<col class="con0" />
				<col class="con1" />
			</colgroup>
			<thead>
				<tr>
					<th class="head0">Numero de Vols</th>
					<th class="head1">Type de Vol</th>
                                        <th class="head1">Etat du Vol</th>

				</tr>

			</thead>
			<tbody>
				<%
					if (mesVols != null) {
						for (Vol v : mesVols) {
				%>
						<tr>
							<td><%= v.getNumeroVol()%></td>
							<td><%=v.getTypeVol()%></td>
                                                        <td><%=v.getEtatVol()%></td>
						</tr>
				<%
						}
					}
				%>


			</tbody>
		</table>
	</div>
</body>
</html>
