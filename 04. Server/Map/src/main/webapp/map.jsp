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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f93746e33ed79e4637c2a1c0f03f736"></script>
	<script>
		var container = document.getElementById('map'); //������ ���� ������ DOM ���۷���
		var options = { //������ ������ �� �ʿ��� �⺻ �ɼ�
			center: new kakao.maps.LatLng(33.450701, 126.570667), //������ �߽���ǥ.
			level: 3 //������ ����(Ȯ��, ��� ����)
		};

		var map = new kakao.maps.Map(container, options); //���� ���� �� ��ü ����
	</script>
</body>
</html>