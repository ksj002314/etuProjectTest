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
			   	<!-- 검색기능 -->
			    <form class="d-flex" role="search" action="free" method="get">
			    	<select name="condition" id="condition" class="form-select me-2" aria-label="Default select example">
					  <option value="titlename" selected>전체검색</option>
					  <option value="title" value="1">제목</option>
					  <option value="writer">작성자</option>
					</select>
			      <input class="form-control me-2" id="keyword" name="keyword" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form> 
			  </div>
			</nav>
            <div class="card mb-4">
                <div class="card-body">
                    <table class="table table table-striped table-hover" >
					  <thead>
					    <tr>
					      <th scope="col">번호</th>
					      <th scope="col">제목</th>
					      <th scope="col">내용</th>
					      <th scope="col">작성자</th>
					      <th scope="col">작성시간</th>
					    </tr>
					  </thead>
					  <tbody class="table-group-divider">
					 <c:forEach items="${freelist}" var="flist">
							<tr >
								<td>
									<c:out value="${flist.IDX}"/>
								</td>
								<td><a class='move' href='<c:out value="${flist.IDX}"/>'><c:out value="${flist.CUM_TITLE}"/></a></td>
								<td><c:out value="${flist.CUM_CONTENTS}"/></td>
								<td><c:out value="${flist.CUM_WRITER}"/></td>
								<td>
									<fmt:formatDate value="${flist.CUM_REGISTER_TIME}" pattern="yyyy.MM.dd HH:mm "/>
								</td>
							</tr>
						</c:forEach>		   
					  </tbody>
					</table>
					
					<div class="pull-right">
						<ul class="pagination justify-content-center">
						<c:if test="${pageMaker.prev}">
							 <li class="page-item">
						     	<a class="page-link" href="${pageMaker.startPage -1}" tabindex="-1">이전</a>
						   	 </li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
							<li class='page-item ${pageMaker.cri.pageNum == num?"active":""}'>
								<a class="page-link" href="${num}">${num}</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<li class="page-item">
								<a class="page-link" href="${pageMaker.endPage +1}" tabindex="-1">다음</a>
							</li>
						</c:if>	
						</ul>
					</div>
					
					<form id="actionForm" action="/board/freelist" method="get">
						<input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum}'>
						<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
					</form> 
					
					<button type="button" class="btn btn-primary " onclick="self.location='	freeregister'">글쓰기</button>
                </div>
            </div>
            <div style="height: 100vh"></div>
            <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
        </div>
    </main>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	// 글 번호를 따로 뽑아냄
	var result = '<c:out value="${result}"/>';

	
	var actionForm = $("#actionForm");
		
		$(".page-link").on("click", function(e){
			e.preventDefault();
			
			console.log("test");
			
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
	$(".move").on("click", function(e) {
		e.preventDefault();
		
		var targetIDX = $(this).attr("href");
		
		console.log(targetIDX);
		
		actionForm.append("<input type='hidden' name='IDX' value='"+targetIDX+"'>'");
		actionForm.attr("action", "/board/freeget").submit();
	});
});

</script> 