<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>首页</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- 需要去百度地图官网申请开发者模式，然后申请之后就获得一个开发者接口了，记得把ip限制那个选为全部ip都可以-->
   		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=FZdVNjmzVOWfztIIa8HcdNrd"></script>
		
	</head>
	<body >
		
				<ul>
		 			<li>
					<a id="atCity">您当前所在的城市为：</a>	
					</li>
				</ul>
				
				
				<div id="bdMapBox" style="display:none;"></div>		
				<script type="text/javascript">

					// 百度地图API功能
				
					var map = new BMap.Map("bdMapBox");
				
					var nowCity = new BMap.LocalCity();
				
					nowCity.get(bdGetPosition);
				
					function bdGetPosition(result){
				
						var cityName = result.name; //当前的城市名
				
						/*自定义代码*/
				
						atCity.innerHTML = cityName;
				
						/*自定义代码*/				
					}				
				</script>
				
					
		<!-- end head -->

	



	</body>
</html>
