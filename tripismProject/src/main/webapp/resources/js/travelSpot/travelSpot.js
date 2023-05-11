let currentPage = 1;

$(function(){
    selectSpotList(currentPage);
    
})

let isUpdateList = true;
window.onscroll = function(e) {
//   console.log(document.body.clientHeight ,  window.innerHeight, window.scrollY , document.body.scrollHeight)
  if((window.innerHeight + window.scrollY) >= (document.body.offsetHeight)) { 
    if(isUpdateList){

        console.log("111");
        
        isUpdateList = false;
        
        selectSpotList(++currentPage);
        
        isUpdateList = true;
    }
    
  }
}

function selectSpotList(currentPage) {
    let value = "";
    $.ajax({
        url:"spotList.sp",
        data:{
                currentPage:currentPage
             },
        success:function(list){
            for(let i=0; i<list.length; i++){
                value += '<div class="col-md-6 col-lg-4 mb-5">'
                        + '<form class="postForm" action="detailAPI.sp" method="post">'
                        + '<input type="hidden" name="contentId" value="'+list[i].spotContentId+'">'
                        + '<input type="hidden" name="contentType" value="'+list[i].spotContentType+'">'
                        + '</form>'
                        + '<div class="card card-hover">'
                        + '<a href="javascript:void(0)" class="position-relative">'
                        if(list[i].spotImgPath == null){
                            //value += '<img class="card-img-top lazyestload" data-src="resources/img/logo.png" src="" alt="Card image cap"></img>';
                            
                        }else{
                            value += '<img class="card-img-top lazyestload" data-src="'+list[i].spotImgPath+'" src="" alt="Card image cap"></img>';
                        }
                        value += '<div onclick="selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">'
                        + '<div style="margin-left: 90%;">'
                        + '<button style="border-radius: 50%; background-color:rgba(255, 255, 255, 0); border: none;">'
                        + '<img src="resources/img/icons/before-like.png" style="width: 25px; height: 25px;" alt="">'
                        + '</button>'
                        + '</div>'
                        + '</div>'
                        + '</a>'
                        + '<div class="card-body px-4" style="background-color: rgba(112, 217, 223, 0.01)">'
                        + '<p style="color: gray; font-size: 9;">'
                        + '<img src="resources/img/icons/map.png" style="width: 16px; height: 16px;" alt="">'
                        + list[i].areaTitle + " " + list[i].sigunguTitle
                        + '</p>'
                        + '<h5>'
                        + '<a href="javascript:selectSpotAPI('+list[i].spotContentId+', '+list[i].spotContentType+');" class="card-title text-uppercase">'+list[i].spotTitle+'</a>'
                        + '<h5>'
                        + '<div class="post_area" style="float: right;">'
                        + '<span class="num_like">'
                        + '<img src="resources/img/icons/after-like.png" style="width: 15px; height: 15px;" alt="">'
                        + '<span class="num" id="conRead" style="font-size: 10pt">'+list[i].spotLike+'</span>'
                        + '</span>'
                        + '<span class="num_view">'
                        + '<img src="resources/img/icons/view.png" style="width: 15px; height: 15px;" alt="">'
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
        },
        error:function(){
            console.log("실패");
        }
    })
}


function selectSpotAPI(contentId, contentType) {

//     // $(".postForm").attr("action", "detailAPI.sp").submit();

    location.href="detailAPI.sp?contentId="+contentId+"&contentType="+contentType;

//     $.ajax({
//         url:"detailAPI.sp",
//         data:{
//             contentId:contentId,
//             contentType:contentType
//         },
//         success:function(content){
//             console.log("spotAPI 성공" + content + ", 아이디 : " + contentId);
//         },
//         error:function(){
//             console.log("spotAPI 실패");
//         }
//     })

    

    
//     // function selectSpotDetail(){

//     //     $.ajax({
//     //         url:"detailView.sp",
//     //         data:{
//     //             contentId:contentId
//     //         },
//     //         success:function(){
//     //             console.log("통신성공");
//     //         },
//     //         error:function(){
//     //             console.log("실패");
//     //         }
//     //     })

//     // }



}