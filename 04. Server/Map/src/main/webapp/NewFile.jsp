<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f93746e33ed79e4637c2a1c0f03f736a"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.3909, 126.5587),
			level: 10
		};

		var map = new kakao.maps.Map(container, options);
		
		<% if( ){ %>
	        // 마커가 표시될 위치입니다 
		    var markerPosition  = new kakao.maps.LatLng(<%= %>, <%= %>); 
	        // 마커를 생성합니다
	        var marker = new kakao.maps.Marker({
	             position: markerPosition
	        });
	
	        // 마커가 지도 위에 표시되도록 설정합니다
	        marker.setMap(map);		
		<% }%>


    	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
     	// marker.setMap(null);
	</script>
	
</body>
</html>