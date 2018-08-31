<!-- $Id: about.jsp,v 1.4 2015/07/21 02:19:13 a0284538 Exp $ -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>


<div class="container-fluid">


    <div class="w-auto p-3" style="background-color: #eee;">
        <form class="form-inline">
            <div class="align-middle">
            <input class="form-control form-control-lg" type="search" placeholder="Search" aria-label="Search">
            </div>
        </form>
    </div>


    <div class="card-group">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Assembly Supplies Database</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Commodity Advisor</h5>
                <p class="card-text">
                <ul></ul>
                </p>
                <a href="#" class="btn btn-info">Go somewhere</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Assembly Supplies Calculators</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-success">Go somewhere</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Material Data Import/Export</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-secondary">Go somewhere</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Employee List</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href='<c:url value="/listemployees?fullname=DP1DM5"/>' class="btn btn-warning">Go somewhere</a>
            </div>
        </div>
            <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">Search Results</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href='<c:url value="/listemployees?fullname=DP1DM5"/>' class="btn btn-warning">Go somewhere</a>
            </div>
        </div>
    </div> <!-- card-group -->

</div>