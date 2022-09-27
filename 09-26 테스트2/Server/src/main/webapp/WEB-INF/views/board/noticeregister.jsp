<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

	<main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">공지사항 글쓰기</h1>
            <ol class="breadcrumb mb-4">
             	<li class="breadcrumb-item active">공지사항</li>
                <li class="breadcrumb-item">글쓰기</li>
               
            </ol>
            <nav class="navbar bg-light">
			  <div class="container-fluid justify-content-end">
			    <form class="d-flex" role="search">
			      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			  </div>
			</nav>
             <form class="card mb-4 p-4" action="" method="">
         		<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">인덱스</label>
				</div>				
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">제목</label>
				</div>			
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">내용</label>
				</div>	
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">작성자</label>
				</div>
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">조회수</label>
				</div>
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
				  <label for="floatingPassword">공지글 여부</label>
				</div>
				
				<input type="submit" value="완료" class="btn btn-primary mb-2 btn-lg">
				<input type="button" onClick="history.back();" value="취소">
            </form>
            <div style="height: 100vh"></div>
            <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
        </div>
    </main>
	
	
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>