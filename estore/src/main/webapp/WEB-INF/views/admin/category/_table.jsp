<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã Danh Mục</th>
			<th>Tên Danh Mục</th>
			<th>Ảnh Danh Mục</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.maDanhMuc}</td>
				<td>${e.tenDanhMuc}</td>
				<td>${e.imgUrl}</td>
				<td><a class="btn btn-sm btn-info"
					href="${base}/edit/${e.maDanhMuc}">Edit</a> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.maDanhMuc}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
