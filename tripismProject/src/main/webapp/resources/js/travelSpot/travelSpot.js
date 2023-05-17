let currentPage = 1;

$(function(){
    $('.typeNo input[value=0]').attr("checked", true);
    $('.areaNo input[value=0]').attr("checked", true);
    
    selectSpotList(currentPage);

    $('#sortSelect').change(function() {
        var sortVal = $(this).val();
        $("#spotList .col-md-6").remove();
        selectSpotList(currentPage, sortVal);
    
    })
    
})

let isUpdateList = true;
window.onscroll = function(e) {
//   console.log(document.body.clientHeight ,  window.innerHeight, window.scrollY , document.body.scrollHeight)
    if((window.innerHeight + window.scrollY) >= (document.body.offsetHeight)) { 
        if(isUpdateList){

            console.log("111");
            
            isUpdateList = false;
            
            var sortVal = $('#sortSelect').val();

            selectSpotList(++currentPage, sortVal);
            
            isUpdateList = true;
        }

    }
  }

function selectSpotList(currentPage, sortVal) {
    let value = "";

    $.ajax({
        url:"spotList.sp",
        data:{
                currentPage:currentPage,
                sortVal:sortVal
             },
        success:function(list){
            
            for(let i=0; i<list.length; i++){
                value +=  '<div class="col-md-6 col-lg-4 mb-5">'
                        + '<form class="postForm" action="detailAPI.sp" method="post">'
                        + '<input type="hidden" name="contentId" value="'+list[i].spotContentId+'">'
                        + '<input type="hidden" name="contentType" value="'+list[i].spotContentType+'">'
                        + '</form>'
                        + '<div class="card card-hover">'
                        + '<a href="javascript:void(0)" class="position-relative">'
                        if(list[i].spotImgPath == null){
                            //value += '<img class="card-img-top lazyestload" data-src="resources/img/logo.png" src="" alt="Card image cap"></img>';
                            
                        }else{
                            value += '<img class="card-img-top" data-src="'+list[i].spotImgPath+'" src="'+list[i].spotImgPath+'" alt="Card image cap" style="height: 232px;"></img>';
                        }
                        value += '<div onclick="selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">'
                        + '</div>'
                        + '</a>'
                        + '<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01); height:150px;">'
                        + '<p style="color: gray; font-size: 9;">'
                        + '<img src="resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">'
                        + list[i].areaTitle + " " + list[i].sigunguTitle
                        + '</p>'
                        + '<h5>'
                        + '<a href="javascript:selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-title text-uppercase">'+list[i].spotTitle+'</a>'
                        + '<h5>'
                        + '<div class="post_area" style="float: right;">'
                        + '<span class="num_like">'
                        + '<img src="resources/img/icons/after-like.png" style="width: 18px; height: 18px;" alt="">'
                        + '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotLike+'&nbsp&nbsp&nbsp</span>'
                        + '</span>'
                        + '<span class="num_view">'
                        + '<img src="resources/img/icons/view.png" style="width: 18px; height: 18px;" alt="">'
                        + '<span class="num" id="conRead" style="font-size: 10pt">&nbsp&nbsp'+list[i].spotCount+'</span>'
                        + '</span>'
                        + '</div>'
                        + '</div>'
                        + '</div>'
                        + '</div>'
                        + '</div>'


                    
            }
            
            $("#spotList").append(value);
            console.log(currentPage);
            console.log(list);
        },
        error:function(){
            console.log("실패");
        }
    })
}


function selectSpotAPI(contentId, contentType) {

    location.href="detailAPI.sp?contentId="+contentId+"&contentType="+contentType;

}

