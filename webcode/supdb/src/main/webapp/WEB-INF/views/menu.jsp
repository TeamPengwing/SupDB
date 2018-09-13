<!-- $Id: menu.jsp,v 1.8 2015/07/31 09:25:41 a0284538 Exp $ -->
<%@ page import="java.util.*" %>
<%@ page import="com.ti.util.directoryservices.EmployeeInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="row">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href='#'><img src="resources/css/ti-logo-small.png" alt="Texas Instruments"></a>
            <a class="navbar-brand mb-0 h1" href='#'>Assembly Supplier CCA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href='<c:url value="/"/>'>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Peripherals
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href='<c:url value="/view/commodity?comm=Capillary"/>'>Capillary</a>
                            <a class="dropdown-item" href='<c:url value="/view/commodity?comm=Blade"/>'>Blade</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Calculators
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href='<c:url value="diesperwafercalc"/>'>Dies per Wafer</a>
                            <a class="dropdown-item" href='<c:url value="/usablebladeexpocalc"/>'>Usable Blade Exposure</a> 
                            <a class="dropdown-item" href='<c:url value="cutheightcalc"/>'>Cut Height</a> 
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>

            </div>
        </nav>
    </div>
</div>