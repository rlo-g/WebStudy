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
	        // ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
		    var markerPosition  = new kakao.maps.LatLng(<%= %>, <%= %>); 
	        // ��Ŀ�� �����մϴ�
	        var marker = new kakao.maps.Marker({
	             position: markerPosition
	        });
	
	        // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
	        marker.setMap(map);		
		<% }%>


    	// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
     	// marker.setMap(null);
	</script>
	
</body>
</html>