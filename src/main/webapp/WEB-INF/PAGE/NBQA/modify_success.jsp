<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath}/'/>
<script>
	alert('수정 완료되었습니다')
	location.href="${root}NBQA/read?board_id=${modifyContentBean.nbqa_board_no}&nbqa_no=${modifyContentBean.nbqa_no}&page=${page}"
	
</script> 