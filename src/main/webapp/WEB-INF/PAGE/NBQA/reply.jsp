<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--  댓글  -->
    <div class="container">
        <label for="content">댓글</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="nbqa_no" value="${readContentBean.nbqa_no}"/>
               <input type="text" class="form-control" id="rp_content" name="rp_content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>
</div>

<script>

var nbqa_no = '${readContentBean.nbqa_no}'; //게시글 번호

$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 
 
 
//댓글 목록 
function commentList(){
    $.ajax({
        url : '${root}NBQA/list',
        type : 'get',
        data : {'nbqa_no':nbqa_no},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.rp_no+'">'+'댓글번호 : '+value.rp_no+' / 작성자 : '+value.mb_id;
                a += '<a onclick="commentUpdate('+value.rp_no+',\''+value.rp_content+'\');"> 수정 </a>';
                a += '<a onclick="commentDelete('+value.rp_no+');"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.rp_no+'"> <p> 내용 : '+value.rp_content +'</p>';
                a += '</div></div>';
            });
            
            $(".commentList").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert(insertData){
    $.ajax({
        url : '${root}NBQA/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=rp_content]').val('');
            }
        }
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(rp_no, rp_content){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+rp_no+'" value="'+rp_content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+rp_no+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+rp_no).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(rp_no){
    var updateContent = $('[name=content_'+rp_no+']').val();
    
    $.ajax({
        url : '${root}NBQA/update',
        type : 'post',
        data : {'rp_content' : updateContent, 'rp_no' : rp_no},
        success : function(data){
            if(data == 1) commentList(nbqa_no); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(rp_no){
    $.ajax({
        url : '${root}NBQA/delete/'+rp_no,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(nbqa_no); //댓글 삭제후 목록 출력 
        }
    });
}
 

$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});
</script>


</body>
</html>