<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>   
<%@taglib  prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student - Make Food Selection</title>

    <!-- Bootstrap Core CSS -->
    <link href="/foodwasteprevention/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="/foodwasteprevention/resources/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/foodwasteprevention/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
    .hover_img button { position:relative; }
    .hover_img button span { position:absolute; display:none; z-index:99; }
    .hover_img button:hover span { display:block; }
    </style>

</head>

<body id="page-top" class="index" onLoad="checkRefresh();">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Student</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">Deadline Countdown</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Food Court</a>
                    </li>                    
                    <li class="page-scroll">
                        <a href="#contact">Calories Count</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="/foodwasteprevention/resources/img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Food Waste Prevention</span>
                        <hr class="star-light">
                        <span class="skills">Stop the Rot - And - Waste Not</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
        

	
	<!-- 
	 <s:iterator value="quadNames" var="quadName" status="stat">
         <s:property value="quadName" />
     
     
	     <s:iterator value="mealCourseNames" var="mealCourseName" status="stat">
	          <s:property value="mealCourseName"  />
	          
			   	 <s:iterator value="allFoodItems[#quadName][#mealCourseName]" var="myvar" status="stat">
			        <s:property value="#myvar[0]" />
			        <s:property value="#myvar[1]" />
			   	 </s:iterator>			   	  
			   	 		   	 
   	 	 </s:iterator> 
   	 </s:iterator>
   	 -->
   	 
   	 <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Deadline Countdown</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="counter">
                        <h3><div id="countdown"> </div></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Satiate Your Tastebuds</h2>
                    <hr class="star-primary">
                </div>
            </div>
            
            <div class="row">
            <form id="foodSelector" action="student">
            		<s:iterator value="quadNames" var="quadName" status="stat">
	                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">	            
	                <!-- Quad Section -->	                
	                <div class="panel price panel-red">
	                    <div class="panel-heading  text-center">
	                        <h3><s:property value="quadName" /></h3>
	                    </div>
	                    <div class="panel-body text-center">
	                        <p class="lead" style="font-size:40px"><strong>$10 off!</strong></p>
	                    </div>
	                    <ul class="list-group list-group-flush text-center">	                    	
		                    <s:iterator value="mealCourseNames" var="mealCourseName" status="stat">		                    	
		                    	<li id=${quadName}${mealCourseName} class="list-group-item" data-toggle="tooltip" data-placement="left" title=<s:property value="mealCourseName"/>>
		                    	<s:if test="%{allFoodItems[#quadName][#mealCourseName].isEmpty()}">			                    	
				                        <p class="lead" style="font-size:20px"><strong>Sorry! No ${mealCourseName}</strong></p>				                    
		                    	</s:if>
		                    	<s:else>
			                    
			                        <s:iterator value="allFoodItems[#quadName][#mealCourseName]" var="myvar" status="stat">
				                        <div class="btn-group hover_img">
				                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
				                            	<s:property value="#myvar[0]"/>(<s:property value="#myvar[2]" />)<span><img src=<s:property value="#myvar[1]"/> alt="image" height="100" /></span> <span class="caret"></span>
				                            </button>
				
				                             <ul id="test" class="dropdown-menu" role="menu">
				                                <li class="dropdown-plus-title">
				                                    piece(s)
				                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
				                                </li>
				                                <li><input type="radio" id=${myvar[2]} name=<s:property value="#myvar[3]"/> value=1 onclick="evalGroup('${quadName}${mealCourseName}','${mealCourseName}','${myvar[3]}',${myvar[2]})" /><label id="dropdown-label">1</label></li>
				                                <li><input type="radio" id=${myvar[2]}  name=<s:property value="#myvar[3]"/> value=2 onclick="evalGroup('${quadName}${mealCourseName}','${mealCourseName}','${myvar[3]}',${myvar[2]})" /><label id="dropdown-label">2</label></li>
				                                <li><input type="radio" id=${myvar[2]} name=<s:property value="#myvar[3]"/> value=4 onclick="evalGroup('${quadName}${mealCourseName}','${mealCourseName}','${myvar[3]}',${myvar[2]})" /><label id="dropdown-label">4</label></li>
				                                <li><input type="radio" id=${myvar[2]} name=<s:property value="#myvar[3]"/> value=6 onclick="evalGroup('${quadName}${mealCourseName}','${mealCourseName}','${myvar[3]}',${myvar[2]})" /><label id="dropdown-label">6</label></li>
				                                
				                             </ul>
				                            
				                            
				                        </div>
			                        </s:iterator>	
			                    </s:else>    
			                    </li>
			                    
		                    </s:iterator>
		                   
	                    </ul>
	                    <div class="panel-footer">
	                        <!-- <a class="btn btn-lg btn-block btn-danger" href="#">Confirm </a> -->
	                    </div>
	                </div>
	                <!-- /Quad Section -->
	            </div>
	            </s:iterator>
	            <div class="row">
	            	<div class="col-lg-12 text-center">
	             		<!-- <input type="button" value="Submit" class="btn btn-lg btn-block btn-warning" onclick="location.href='studentedit';" style="max-width: 265px; margin: 0 auto;"> -->
	             		<input type="submit" value="Submit" class="btn btn-lg btn-block btn-warning" style="max-width: 265px; margin: 0 auto;">
	             	</div>
	            </div>
            </form>
        </div>
    </div>
    </section>

    

    <!-- Contact Section -->
     <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Calories Count</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div id=loadCalorie class="row">
                
                <h2 class="col-lg-12 text-center">0</h2>

            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>Whichever Quad You Like</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Developers</h3>
                        <p>To iterate is human, to recurse divine.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>


    <!-- jQuery -->
    <script src="/foodwasteprevention/resources/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/foodwasteprevention/resources/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/foodwasteprevention/resources/js/jqBootstrapValidation.js"></script>

    <!-- Theme JavaScript -->
    <script src="/foodwasteprevention/resources/js/freelancer.js"></script>

	<script>
	var arrMap = [];
	function evalGroup(quadAndMealCourse,mealcourse,foodItem,calorie)
	{   
		var hash = "#"
		var isMealCoursePresent = false;
		var isFoodItemFromSameQuadAndMealCourse = false;
		if(arrMap.length==0){
			arrMap.push({"quadAndMealCourse":quadAndMealCourse, "mealcourse":mealcourse})
		}else{
			for(i=0;i<arrMap.length;i++){
				if(arrMap[i].mealcourse == mealcourse && arrMap[i].quadAndMealCourse !=quadAndMealCourse){					
					var parent = hash.concat(arrMap[i].quadAndMealCourse)
					var radio = parent.concat(" :radio")
					//alert (radio)
					$(radio).each(function(){$(this).prop('checked', false);});
					//alert("Mealcourse is already added " + arrMap[i].quadAndMealCourse + ":"  + arrMap[i].mealcourse);
					arrMap[i].mealcourse = mealcourse
					arrMap[i].quadAndMealCourse = quadAndMealCourse				    
				    isMealCoursePresent=true
				}
				if(arrMap[i].mealcourse == mealcourse && arrMap[i].quadAndMealCourse ==quadAndMealCourse){
				    //alert("FoodItem From Same Quad And MealCourse");
				    isFoodItemFromSameQuadAndMealCourse=true
				}
			}
			if(!isMealCoursePresent && !isFoodItemFromSameQuadAndMealCourse ){
				arrMap.push({"quadAndMealCourse":quadAndMealCourse, "mealcourse":mealcourse})
			}
		}
			
		var inst = "+"
		for(i=0;i<arrMap.length;i++){
			inst = inst + arrMap[i].quadAndMealCourse + ":"  + arrMap[i].mealcourse +"+"
		}
		var cal=0
		var calFoodItemIntoQuantity=0
		$('input:radio:checked').each(function(){			
			calFoodItemIntoQuantity=$(this).attr('id')*$(this).val()
			cal=cal+calFoodItemIntoQuantity			
			;});
		//alert(cal)
		$("div#loadCalorie h2").html(cal)
	}
	
	function checkRefresh(){
		$('input:radio').each(function(){$(this).prop('checked', false);});
		var str='<%=session.getAttribute("selectedFoodItemsIDAndQuantity")%>'
		var strWithoutcurly1 = str.replace(new RegExp("{", 'g'), '');
		var strWithoutcurly2 = strWithoutcurly1.replace(new RegExp("}", 'g'), '');
		//alert(strWithoutcurly2)
		var entries = strWithoutcurly2.split(", ");
		var map = {};
		for(var i=0; i < entries.length; i++){
		    var tokens = entries[i].split("=");
		    map[tokens[0]] = tokens[1];
		}
		var catchRadioButton = "input:radio[name=fooditemid][value=quantity]"
		$.each(map, function(index,value){			
			var catchRadioButtonReplaceFooditemid = catchRadioButton.replace("fooditemid", index)
			var catchRadioButtonReplaceQuantity = catchRadioButtonReplaceFooditemid.replace("quantity", value)
			 console.log(catchRadioButtonReplaceQuantity); 
			 $(catchRadioButtonReplaceQuantity).prop('checked',true);
			})
			
		var strQuadMealCourse='<%=session.getAttribute("selectedFoodItemsQuadAndMealCourse")%>'	
		var strQuadMealCourseWithoutcurly1 = strQuadMealCourse.replace(new RegExp("{", 'g'), '');
		var strQuadMealCourseWithoutcurly2 = strQuadMealCourseWithoutcurly1.replace(new RegExp("}", 'g'), '');
		var entriesQuadMealCourse = strQuadMealCourseWithoutcurly2.split(", ");
		var mapQuadMealCourse = {};
		for(var i=0; i < entriesQuadMealCourse.length; i++){
		    var tokensQuadMealCourse = entriesQuadMealCourse[i].split("=");
		    mapQuadMealCourse[tokensQuadMealCourse[0]] = tokensQuadMealCourse[1];
		}
		 $.each(mapQuadMealCourse, function(id,val){
		    	console.log(id+":"+val); 
				arrMap.push({"quadAndMealCourse":id, "mealcourse":val})
		    })
		var cal=0
		var calFoodItemIntoQuantity=0
		$('input:radio:checked').each(function(){			
			calFoodItemIntoQuantity=$(this).attr('id')*$(this).val()
			cal=cal+calFoodItemIntoQuantity			
			;});
		//alert(cal)
		$("div#loadCalorie h2").html(cal)
			
			
	}
	
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip(); 
	});
	</script>

</body>

</html>