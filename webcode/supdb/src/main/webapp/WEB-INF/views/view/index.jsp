
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<style>
    .text-center{
        text-align: center;
    }
</style>

<div class="jumbotron jumbotron-fluid">
    <div class="container-fluid">

        <div class="row justify-content-sm-center text-center">
            <h1 class="display-5">Assembly Supplies Commodity Consolidation and Advisor</h1>
        </div>
        <div class="row justify-content-sm-center text-center">
            <div class="col-sm-12">
                <p class="lead">Consolidated. Updated. Efficient.</p>
            </div>
        </div>
        <div class="row justify-content-sm-center">
            <div class="col-sm-8">
                <div class="form-inline">
                    <input type="input" id="searchTerm" class="form-control-lg col-sm  text-center" placeholder="What are you looking for today?" />
                    <input id="searchButton" class="btn-lg btn-primary col-sm-2" type="submit" value="Go">                     
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 text-center">
            <h1>Browse Material Types</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-sm text-center">
            <a href="#">
                <i class="fab fa-cuttlefish fa-3x"></i>
            </a>
            <h3>Blade</h3>
        </div>
        <div class="col-sm text-center">
            <a href="#">
                <i class="fas fa-bars fa-3x"></i>
            </a>
            <h3>Capillary</h3>
        </div>
        <div class="col-sm text-center">
            <a href="#">
                <i class="fas fa-box fa-3x">
                </i>
            </a>
            <h3>Material Type 3</h3>    
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#searchButton").click(function () {
        location.href = "searchmaterial?search=" + $("#searchTerm").val();
    });
</script>
