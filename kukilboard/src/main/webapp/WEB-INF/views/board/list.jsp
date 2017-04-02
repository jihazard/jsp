<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/include/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/resources/include/js/chk.js"></script>
<script src="/resources/include/js/bootstrap.min.js"></script>

<link
	href="http://cdn-na.infragistics.com/jquery/20132/latest/css/themes/infragistics/infragistics.theme.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://cdn-na.infragistics.com/jquery/20132/latest/css/structure/infragistics.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"
	type="text/javascript"></script>
<script
	src="http://cdn-na.infragistics.com/jquery/20132/latest/js/infragistics.core.js"
	type="text/javascript"></script>
<script
	src="http://cdn-na.infragistics.com/jquery/20132/latest/js/infragistics.lob.js"
	type="text/javascript"></script>
<script
	src="http://cdn-na.infragistics.com/jquery/20132/latest/js/infragistics.dv.js"
	type="text/javascript"></script>

<script>




	$(function(){

		var ds = window.parent.$('#grid').igGrid('option', 'dataSource');

		$.each(ds.data(), function (i, item) {
		    var itemProperty = item.Property;
		    alert(itemProperty);

		});

		var data = [<c:if test='${not empty list}'>
						<c:forEach items="${list}" var="list" varStatus="x">
							{'userid':"${list.userid}",'movietitle':"${list.movietitle}",'score':"${list.score}"},
		 						<c:if test='${not x.last}'>,</c:if>
			 			</c:forEach>
		    		</c:if>];

		$(document).on("click",".movietitle",function(){
			var movietitle=$(this).parents("tr").attr("data-num");
			alert(movietitle)

		})


		 $("#grid").igGrid({
             autoGenerateColumns: true,
             dataSource: data,
             features: [{
                 name: "Paging",
                 type: "remote",
                 pageSize: 10
             },
             {
                 name: "Sorting",
                 type: "remote"
             },
             {
            	 name:"Selection",
            	 mode:"row",
            	 multipleSelection:true,
            	 activation:true


             }


             ]
         });

	})


</script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<%--
				<table class="table table-bordered">
					<tr>
						<td>유저id</td>
						<td>영화제목</td>
						<td>평점</td>

					</tr>
			  <c:if test="{empty list}">
			  	<tr><td colspan="3">데이터가 없습니다.</td></tr>
			  </c:if>


			  <c:forEach var="l" items="${list}">
			  	<tr data-num="${l.userid}">
						<td>${l.userid}</td>
						<td class="movietitle">${l.movietitle }</td>
						<td>${l.score}</td>

					</tr>

			  </c:forEach>


				</table> --%>

				<table id="grid"></table>


			</div>

		</div>


	</div>
</body>
</html>