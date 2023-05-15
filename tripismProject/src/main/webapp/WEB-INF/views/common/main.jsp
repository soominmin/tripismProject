<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  body * {
      font-family: 'TheJamsil';
  }
</style>

</head>
<body>
  <jsp:include page="header.jsp"/>
  <!-- ====================================
  ——— HEADER SECTION end
  ===================================== -->
  <div class="main-wrapper home-destination">



    <!-- ====================================
    ——— NEXT TRAVEL SECTION
    ===================================== -->
    <section class="dzsparallaxer auto-init use-loading travel-paralax">
      <div class="bg-overlay-darken divimage dzsparallaxer--target" style="height: 700px; padding-left: 100px; padding-right: 100px;"
        data-src="${pageContext.request.contextPath}/resources/img/partner/backImg1.jpg">
      </div>
    
      <div class="container paralax-container px-6 px-md-3">
        <div class="row">
          

        </div>
      </div>
    </section>






    
    </div>
      

	<!-- ====================================
——— FOOTER SECTION start
===================================== -->
	<jsp:include page="footer.jsp"/>

</body>
</html>