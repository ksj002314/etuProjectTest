<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
	<main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">자유게시판</h1>
            <ol class="breadcrumb mb-4">            
                <li class="breadcrumb-item active">자유게시판</li>               
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
                <div class="card-body">
                    <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">번호</th>
					      <th scope="col">제목</th>
					      <th scope="col">내용</th>
					      <th scope="col">작성자</th>
					    </tr>
					  </thead>
					  <tbody class="table-group-divider">
					  	<c:forEach items="${freelist}" var="flist">
							<tr>
								<td>
									<c:out value="${flist.IDX}"/>
								</td>
								<td><a href="free_read"><c:out value="${flist.CUM_TITLE}"/></a></td>
								<td><c:out value="${flist.CUM_CONTENTS}"/></td>
								<td><c:out value="${flist.CUM_WRITER}"/></td>
							</tr>
						</c:forEach>		  
					  </tbody>
					</table>
					<button type="button" class="btn btn-primary " onclick="self.location='free_create'">글쓰기</button>
                </div>
            </div>
            <div style="height: 100vh"></div>
            <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
        </div>
    </main>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>