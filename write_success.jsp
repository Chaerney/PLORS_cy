<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<script>
	alert('저장되었습니다')
	/* location.href = '${root}NBQA/read?board_id=${writeContentBean.nbqa_board_no}&nbqa_no=${writeContentBean.nbqa_no}' */
			location.href="${root}NBQA/board?board_id=${writeContentBean.nbqa_board_no}"
</script>