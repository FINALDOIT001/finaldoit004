<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${contextPath}/resources/css/jungho.css">
<link rel="stylesheet" href="${contextPath}/resources/css/hyerim.css">
 <script src="${contextPath}/resources/js/jungho.js"> </script>

</head>
    
   
     <body>
      <jsp:include page="../common/header.jsp" />
      
     <!--::breadcrumb part start::-->
   <section class="breadcrumb blog_bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="breadcrumb_iner">
                  <div class="breadcrumb_iner_item">
                     <h2>Do It Study</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--::breadcrumb part start::-->
   <!-- ================ contact section start ================= -->
  <section class="contact-section area-padding">
   <div class="container">
     <div class="row">
        
          <div class="col-lg-3" style="float:left; margin-right: 30px;">
               <div class="blog_right_sidebar_h" style="width: 300px;">
                  <aside class="single_sidebar_widget search_widget">
                     <form action="#">
                        <div class="form-group">
                           <div class="input-group mb-3">
                              <input type="text" class="form-control placeholder hide-on-focus" placeholder="스터디 이름을 검색하세요.">
                              <div class="input-group-append">
                                 <button class="btn" type="button"><i class="ti-search"></i></button>
                              </div>
                           </div>
                        </div>
                     </form>
                  </aside>
               </div>
          </div>
          <div class="col-lg-4">
            <button type="button" class="btn btn-block btn-light btn-filter dropdown-toggle" style="width: 80px; height: 50px;" data-toggle="dropdown" aria-expanded="false">태그</button>
            <div class="dropdown-menu">
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Java</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">HTML</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">C+</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
               <label class="dropdown-item_h" href="#" style="display: inline;"><input type="checkbox" class="form-check-input" value="">Spring</label>
             </div>
         </div>
          <div class="col-lg-4">
            <input type="button" class="genric-btn danger" style="float:right; width: 120px;" value="스터디 개설" onclick="location.href='studyInsert.go'"/>
          </div>
          <div class="col-lg-12" style="margin-top: 20px;">
             <label style="font-weight: bold;"><span style="font-size: large;">87</span>개의 스터디</label>
             <hr>
               <div class="row">
                  <!-- study list start -->
                  <div class="col-md-2" style="text-align: center;">
                     <img src="${contextPath}/resources/img/project-5.png" class="rounded" alt="Cinque Terre" style="width: 90px; height: 90px;">
                  </div>
                  <div class="col-md-9 mt-sm-20">
                     <a href="studyDetail.go" style="display: block;"><label style="font-size: x-large; font-weight: bold;">JAVA 스터디 그룹</label></a>
                     <h5 class="mb-1 text-primary" style="font-weight: bold;">모집 중</h5>
                     <ul class="study_ul">
                        <li class="study_li">조장 : 박정호</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/user_icon2.png">3/8</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/add_icon2.png">서울시 강남구</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/money_icon3.png">20,000</li>
                     </ul>
                     <ul class="study_">
                        <li class="study_tag">Java</li>
                        <li class="study_tag">오프라인</li>
                        <li class="study_tag">스터디그룹</li>
                        
                     </ul>
                  </div>
                  <div class="col-lg-12">
                     <hr>
                  </div>
                  <!-- study list end -->
                  <!-- study list start -->
                  <div class="col-md-2" style="text-align: center;">
                     <img src="${contextPath}/resources/img/project-5.png" class="rounded" alt="Cinque Terre" style="width: 90px; height: 90px;">
                  </div>
                  <div class="col-md-9 mt-sm-20">
                     <a href="studyDetail.go" style="display: block;"><label style="font-size: x-large; font-weight: bold;">JAVA 스터디 그룹</label></a>
                     <h5 class="mb-1 text-primary" style="font-weight: bold;">모집 중</h5>
                     <ul class="study_ul">
                        <li class="study_li">조장 : 박정호</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/user_icon2.png">3/8</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/add_icon2.png">서울시 강남구</li>
                        <li class="study_li"><img src="${contextPath}/resources/img/money_icon3.png">20,000</li>
                     </ul>
                     <ul class="study_">
                        <li class="study_tag">Java</li>
                        <li class="study_tag">오프라인</li>
                        <li class="study_tag">스터디그룹</li>
                        
                     </ul>
                  </div>
                  <div class="col-lg-12">
                     <hr>
                  </div>
                  <!-- study list end -->

                  <!-- paging start -->
                  <nav class="col-md-12 blog-pagination_h justify-content-center d-flex">
                     <ul class="pagination">
                        <li class="page-item">
                           <a href="#" class="page-link" aria-label="Previous">
                              <span aria-hidden="true">
                                 <span>〈</span>
                              </span>
                           </a>
                        </li>
                        <li class="page-item"><a href="#" class="page-link">01</a></li>
                        <li class="page-item active"><a href="#" class="page-link">02</a></li>
                        <li class="page-item"><a href="#" class="page-link">03</a></li>
                        <li class="page-item"><a href="#" class="page-link">04</a></li>
                        <li class="page-item"><a href="#" class="page-link">05</a></li>
                        <li class="page-item">
                           <a href="#" class="page-link" aria-label="Next">
                              <span aria-hidden="true">
                                <span>〉</span>
                              </span>
                           </a>
                        </li>
                     </ul>
                  </nav>
                  <!-- paging end-->
               </div>
     </div>
   </div>
 </section>
 <!-- ================ contact section end ================= -->


   <jsp:include page="../common/footer.jsp" />
   

 
 <script>
   function getThumbnailPrivew(html, $target) {
       if (html.files && html.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $target.css('display', '');
               //$target.css('background-image', 'url(\"' + e.target.result + '\")'); // ë°°ê²½ì¼ë¡ ì§ì ì
               $('label[id="imglabel"]').css('background-image','url("")');
               $target.html('<img src="' + e.target.result + '" border="0" style="width:60px; height: 60px;" class="rounded-circle" alt="Cinque Terre" />');
           }
           reader.readAsDataURL(html.files[0]);
       }
   }
   </script>
</body>

</html>