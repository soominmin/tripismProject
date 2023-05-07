function selectSpotList(currentPage){
    let value = "";
    $.ajax({
        url:"spotList.sp",
        data:{
                currentPage:currentPage
             },
        success:function(list){
            for(let i=0; i<list.length; i++){
                value += '<div class="col-md-6 col-lg-4 mb-5">'
                        + '<div class="card card-hover">'
                        + '<a href="javascript:void(0)" class="position-relative">'
                        + '<img class="card-img-top lazyestload" data-src="'+list[i].spotImgPath+'" src="" alt="Card image cap"></img>'
                        + '<div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">'
                        + '<div style="margin-left: 90%;">'
                        + '<button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">'
                        + '<img src="${pageContext.request.contextPath}/resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">'
                        + '</button>'
                        + '</div>'
                        + '</div>'
                        + '</a>'
                        + '<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">'
                        + '<p style="color: gray; font-size: 9;">'
                        + '<img src="${pageContext.request.contextPath}/resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">'
                        + list[i].areaCategoryNo + " " + list[i].cityCateogryNo
                        + '</p>'
                        + '<h5>'
                        + '<a href="detail.sp" class="card-title text-uppercase">'+list[i].spotTitle+'</a>'
                        + '<h5>'
                        + '<div class="post_area" style="float: right;">'
                        + '<span class="num_like">'
                        + '<img src="${pageContext.request.contextPath}/resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">'
                        + '<span class="num" id="conRead" style="font-size: 10pt">'+list[i].spotLike+'</span>'
                        + '</span>'
                        + '<span class="num_view">'
                        + '<img src="${pageContext.request.contextPath}/resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">'
                        + '<span class="num" id="conRead" style="font-size: 10pt">'+list[i].spotCount+'</span>'
                        + '</span>'
                        + '</div>'
                        + '</div>'
                        + '</div>'
                        + '</div>'

                    
            }
            $("#spotList").append(value);
            console.log(currentPage);
            console.log(list);
            console.log(document.getElementById("placesDiv").scrollHeight)
            console.dir(document.getElementById("placesDiv"))
        },
        error:function(){
            console.log("실패");
        }
    })
    
}

let isUpdateList = true;
const spotDiv = document.getElementById("spotDiv");
spotDiv.onscroll = function(e) {
  console.log(document.getElementById("spotDiv").clientHeight ,  document.getElementById("spotDiv").scrollTop,document.getElementById("spotDiv").scrollHeight)
  if((spotDiv.clientHeight + spotDiv.scrollTop) >= (spotDiv.scrollHeight-3)) { 
    if(isUpdateList){
        isUpdateList = false;
        
        selectSpotList(++currentPage);
        
        isUpdateList = true;
    }
    
  }
}