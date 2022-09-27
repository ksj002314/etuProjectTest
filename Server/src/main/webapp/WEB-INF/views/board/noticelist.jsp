<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
	<main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">공지사항</h1>
            <ol class="breadcrumb mb-4">            
                <li class="breadcrumb-item active">공지사항</li>  
            </ol>
            <nav class="navbar bg-light">
			  <div class="container-fluid justify-content-end">
			    <form class="d-flex" role="search">
			      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			  </div>
			</nav>
            <div class="card mb-4">
                <form class="card-body" action="notice_create" method="">
                    <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">번호</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">조회수</th>
					    </tr>
					  </thead>
					  <tbody class="table-group-divider">
					    <tr>
					      <th scope="row">1</th>
					      <td><a href="notice_read">Mark</a></td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>Jacob</td>
					      <td>Thornton</td>
					      <td>@fat</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td colspan="2">Larry the Bird</td>
					      <td>@twitter</td>
					    </tr>
					  </tbody>
					</table>
					<input class="btn btn-primary" type="submit" value="생성" >
                </form>
            </div>
            <div style="height: 100vh"></div>
            <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
        </div>
    </main>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>