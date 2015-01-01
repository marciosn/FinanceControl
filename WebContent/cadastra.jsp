<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastra</title>

<script type="application/javascript" src="./resources/data.json"></script>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.remodal.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/ng-table.css" />

<link rel="stylesheet" type="text/css" href="./resources/Button/css/component.css" />
<script src="./resources/bootstrap/js/angular.min.js"></script>
<script src="./resources/bootstrap/js/ng-table.js"></script>
<style type="text/css">
	body{
	background-color:#fff;
	}
	.container2{
	width: 90%;
	padding-top: 80px;
	padding-left: 50px;
	}
</style>

</head>
<body id="content" ng-app="main">
		<jsp:include page="./WEB-INF/templates/navbar.jsp" />
		<jsp:include page="./WEB-INF/templates/sidemenu.jsp" />
		<button class="menu-button" id="open-button">Open Menu</button>
	<div class="container2">
    <div ng-controller="DemoCtrl">
    
    <table ng-table="tableParams" class="table">
        <tbody ng-repeat="p in $data">
        <tr id="tr{{p.id}}" ng-class-odd="'odd'" ng-class-even="'even'">
            <td class="rowTd" data-title="'ID'"          sortable="'id'">{{p.id}}</td>
            <td class="rowTd" data-title="'Firstname'"   sortable="'fn'">{{p.fn}}</td>
            <td class="rowTd" data-title="'Lastname'"    sortable="'ln'">{{p.ln}}</td>
            <td class="rowTd" data-title="'Description'" sortable="'dc'">{{p.dc}}</td>
            <td class="rowTd" data-title="'Email'"       sortable="'em'">{{p.em}}</td>
            <td class="rowTd" data-title="'Phone'"       sortable="'ph'">{{p.ph}}</td>
            <td class="rowTd" ><input type=button id="editRowBtn{{p.id}}" value="edit" ng-click="setEditId(p.id)"></td>
        </tr>
        	<tr ng-show="editId===p.id" ng-if="editId===p.id">
            <td colspan="7" ng-include src="'partials/editRow.html'"></td>
        </tr>
        </tbody>
    </table>

    <script>
        var app = angular.module('main', ['ngTable']).
                controller('DemoCtrl', function($scope, $filter, ngTableParams) {
                 $scope.tableParams = new ngTableParams({
                        page: 1,
                        count: 10
                    },{
                        total: data.length,
                        getData: function($defer, params) {
                            var orderedData = params.sorting()?$filter('orderBy')(data, params.orderBy()):data;
                            $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
                        }
                    });

                    $scope.editId = -1;

                    $scope.setEditId =  function(pid) {
                        $scope.editId = pid;
                    }
                })
    </script>

</div>
			
</div>
		
</body>
<script type="text/javascript" charset="utf-8">
$(document).ready(function() {	
    content = document.querySelector( "#content" ),
	openbtn = document.querySelector( "#open-button" ),
	closebtn = document.querySelector( "#close-button" ),
	
	sideMenu(content, openbtn, closebtn);
} );

</script>

<script src="./resources/bootstrap/js/jquery.min.js"></script>
<script src="./resources/bootstrap/js/jquery.remodal.js"></script>
<script src="./resources/angular/angular.js"></script>

</html>