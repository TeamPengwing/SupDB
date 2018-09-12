
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<style>
    .text-center{
        text-align: center;
        border: 1px solid;
    }
</style>

<div class="col-sm-12 text-center">
    <h1>Compare Products</h1>
</div>
<div class="col-sm-3 text-center">
    <h3>Product 1</h3>
</div>
<div class="col-sm-3 text-center">
    <h3>Product 2</h3>
</div>
<div class="col-sm-3 text-center">
    <h3>Product 3</h3>
</div>
<div class="col-sm-3 text-center">
    <h3>Product 4</h3>
</div>



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
    </div> <!-- card-group -->

</div>