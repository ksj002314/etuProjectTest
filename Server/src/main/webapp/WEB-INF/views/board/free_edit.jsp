<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

	<main>
        <div class="container-fluid px-4">
        	<!-- 해당 페이지 제목 -->
            <h1 class="mt-4">자유게시판</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item">자유게시판</li>
                <li class="breadcrumb-item active">글 수정</li>
            </ol>
            <nav class="navbar bg-light">
			  <div class="container-fluid justify-content-end">
			    <form class="d-flex" role="search">
			      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			  </div>
			</nav>
            <div class="card mb-4 p-4">
            	<!-- 수정버튼 동작안됨 -->
				<form action="freeupdate" method="post">
					<div>
						<input type="hidden"  id="IDX" name="IDX" value='<c:out value="${freeupdate.IDX}"/>'>
					</div>
					<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="CUM_TITLE" name="CUM_TITLE" placeholder="Password"  value='<c:out value="${freeupdate.CUM_TITLE}"/>'>
					  <label>제목</label>
					</div>			
					<div class="form-floating mb-3">
						<textarea class="form-control"  id="CUM_CONTENTS" name="CUM_CONTENTS"  style="height: 300px"><c:out value="${freeupdate.CUM_CONTENTS}"/></textarea>
					   <label>내용</label>
					</div>	
					<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="CUM_WRITER" name="CUM_WRITER" placeholder="Password"  value='<c:out value="${freeupdate.CUM_WRITER}"/>'>
					  <label>작성자</label>
					</div>
					
	<!-- 				<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="floatingPassword" placeholder="Password" readonly>
					  <label for="floatingPassword">시간</label>
					</div> -->
					<div class="container-fluid justify-content-end">
						<input type="submit" value="수정완료"  class=" btn-primary mb-2 btn-lg">
						<input type="button" value="목록보기" onClick="editExit()"class=" btn-primary mb-2 btn-lg">
						<input type="button" value="삭제" class="btn btn-danger mb-2 btn-lg" onclick="freedelete()">
						<input type="button" class=" mb-2 btn-lg btn-primary" onClick="history.back();" value="취소">
					</div>
				</form>
			
			    
            </div>
            <div style="height: 100vh"></div>
            <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
        </div>
        
    </main>
	
	<script>
		/* 수정중 목록보기 버튼 클릭 이벤트 */
		
		function editExit() {
			if(confirm('정말 나가시겠습니까?')) {
				self.location='free'
			}	return false;
		}
	
	
		/* 삭제 functoin  */
		function freedelete() {
			if(confirm('삭제 하시겠습니까?')) {
				location.href="freedelete?IDX=" + ${freeread.IDX};
0			} return false;
		}
		
	</script>
	
	
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>