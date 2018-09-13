
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<style>
    .text-center{
        text-align: center;
    }
    .card{
        border-left: 0px;
        border-bottom: 0px;
        border-right: 0px;
        border-radius: 0px;
    }

    .card-header{
        padding: .10rem 1.25rem;
        border-bottom: 0px;
    }

    .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active{
        border-top-color: #003f81;
        border-top-width: 10px;
    }



</style>

<div class="container-fluid" style="padding-left: 50px; padding-right: 50px;">
    <div class="row" style="margin-top: 25px">
        <div class="col-sm-12 text-center">
            <h1>Electroformed Bond Hub Blades - ZH14SERIES</h1>
        </div>
    </div>

    <div class="row justify-content-sm-center">
        <div class="col col-sm-auto text-center">
            Rating: <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"><i class="far fa-star"></i></i>
        </div>
        <div class="col col-sm-auto text-center">
            <a href="#">Write a Review</a>
        </div>
        <div class="col col-sm-auto text-center">
            <a href="#">Ask a question</a>
        </div>
    </div>
    <div class="row" style="margin-bottom: 25px; margin-top: 25px;">
        <div class="col col-sm-10">
            <h3>Material Description</h3>
            <div style="margin-bottom: 10px"> The ZH14 series provides improved blade rigidity to realize stable processing without
                slanted cutting even under high load conditions, which includes processing
                applications requiring high speed, deep cutting, and long blade exposure.
                In addition, for narrow street and high revolution speed processing, improvements in
                the blade breakage speed limit* and wavy cutting can be expected.
            </div>
            <h5>Current Price: $256.00 per unit</h5>
            <div class="btn-group">
                <button class="btn btn-primary"><i class="fas fa-boxes"></i> Request for stock</button>
                <button class="btn btn-danger"><i class="fas fa-question-circle"></i> Inquire</button>
                <button class="btn btn-info" ><i class="fas fa-question-circle"></i> Compare</button>
            </div>
        </div>
        <div class="col col-sm">
            <img src="https://static1.squarespace.com/static/56f381802fe131f339f04251/t/56f3c5bbe707ebc970a0d205/1458816447522/" alt="Disc" class="rounded float-right" style="height: 100%">
        </div>
    </div>
    <div class="row">
        <div class="col col-sm-12">
            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Technical Specs & Parameters</a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Product Details</a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ratings and Reviews</a>
                <a class="nav-item nav-link" id="nav-specs-tab" data-toggle="tab" href="#nav-specs" role="tab" aria-controls="nav-specs" aria-selected="false">Manuals & Support</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col col-sm-12">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="row" style="margin-top: 20px">
                        <div class="col col-sm">
                            <h4>Technical Specs and Parameters</h4>
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Technical Spec
                            </button> | 
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                Process Spec
                            </button> |
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                Material Spec
                            </button> 
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                <i class="fas fa-drafting-compass"></i> Technical Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span>
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Tip</th>
                                                            <td>192.5</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Chamfer Diameter</th>
                                                            <td>48.25</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Chamfer Angle</th>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Inner Chamfer Angle
                                                                for dual chamfer angle only</th>
                                                            <td>30</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Hole</th>
                                                            <td>28</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Face Angle</th>
                                                            <td>11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Outer Radius</th>
                                                            <td>-</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                <i class="fas fa-chalkboard-teacher"></i> Process Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span> 
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Smallest Ball Size</th>
                                                            <td>-</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Smallest Ball Size</th>
                                                            <td>Connx Plus LA</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Package/Application/Device</th>
                                                            <td>W/VQFN</td>
                                                        </tr>
                                                        <tr>
                                                            <th>STD L/F MAX (KTD)</th>
                                                            <td>1750</td>
                                                        </tr>
                                                        <tr>
                                                            <th>STD L/F ACTUAL (KTD)</th>
                                                            <td>1500</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ROUGHENED  L/F MAX (KTD)</th>
                                                            <td>1250</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Dual Source (Yes/No?) If Yes, indicate the Dual Source Item</th>
                                                            <td>PECO B0810-30-14-03 (TI P/N 4698512-0001)</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                <i class="fas fa-box"></i> Material Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span>
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Wire Type</th>
                                                            <td>Cu</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Wire Size(mil)</th>
                                                            <td>0.96</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Wire App</th>
                                                            <td>Cu</td>
                                                        </tr>                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-sm-3" >
                            <div class="col col-sm-12" style="border:1px solid #a9a9a9; background-color: #eee;">
                                <div class="row">
                                    <div class="col col-sm-12" style="margin-bottom: 15px; margin-top: 10px; text-align: center">
                                        <h5>Electroformed Bond Hub Blades - ZH14SERIES</h5>
                                    </div>
                                </div>


                                <div class="table-responsive" style="margin-bottom:10px">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th>Rating</th>
                                                <td style="text-align:right">
                                                    <a href="#">   <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i> 4.0</a> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Current Price</th>
                                                <td style="text-align:right">
                                                    <a href="#">    $256.00 per unit</a> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Price Change (YoY)</th>
                                                <td style="text-align:right">
                                                    <a href="#" style="color: red">2.0%</a> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>A/T Sites using the Material</th>
                                                <td style="text-align:right"> (3 sites) <a href="#">TIPI</a> | <a href="#">TIEM</a> | <a href="#">TITL</a></td>
                                            </tr>
                                            <tr>
                                                <th>Applicable Process</th>
                                                <td style="text-align:right">(2 processes) <a href="#">1 Pass</a> | <a href="#">2 Pass</a> | <a href="#">TITL</a></td>
                                            </tr>
                                            <tr>
                                                <th>Device Compatibility</th>
                                                <td style="text-align:right"> (5 machines) <a href="#">Machine ABC</a> | <a href="#">Machine EDE</a> | <a href="#">Machine FGS</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="row" style="margin-top: 20px">
                        <div class="col col-sm-12">
                            <h4>Product Details and Features</h4>
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseSupplierInfo" aria-expanded="true" aria-controls="collapseSupplierInfo">
                                Supplier Info
                            </button> | 
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseDeliveryInfo" aria-expanded="true" aria-controls="collapseDeliveryInfo">
                                Delivery Info
                            </button> |
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseUsageInfo"SupplierInfo aria-expanded="true" aria-controls="collapseUsageInfo">
                                Usage Info
                            </button> 
                            <div id="accordionProductInfo">
                                <div class="card">
                                    <div class="card-header" id="headingSupplierInfo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapseSupplierInfo" aria-expanded="true" aria-controls="collapseSupplierInfo">
                                                <i class="fas fa-map-marked"></i> Supplier Informantion
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseSupplierInfo" class="collapse show" aria-labelledby="headingSupplierInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span>
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Head Office</th>
                                                            <td>DISCO HI-TEC (SINGAPORE) PTE LTD Singapore Head Office, 80 Ubi Avenue 4, #06-01 Singapore 408831</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Contact Number</th>
                                                            <td>Phone: 65-6747-3737, Fax: 65-6745-0266 </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Email Address</th>
                                                            <td>dhssales@discosin.com.sg</td>
                                                        </tr>                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingDeliveryInfo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseDeliveryInfo" aria-expanded="false" aria-controls="collapseDeliveryInfo">
                                                <i class="fas fa-truck"></i> Delivery Information
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseDeliveryInfo" class="collapse" aria-labelledby="headingDeliveryInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span>
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Supplier Lead Time</th>
                                                            <td>7 days</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Supplier Delivery Capacity</th>
                                                            <td>1M Units</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Supplier Distribution Centers</th>
                                                            <td>Japan</td>
                                                        </tr>                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingUsageInfo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseUsageInfo" aria-expanded="false" aria-controls="collapseUsageInfo">
                                                <i class="fas fa-users-cog"></i> Usage Information
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseUsageInfo" class="collapse" aria-labelledby="headingUsageInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            <span>
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </span>
                                            <div class="table-responsive" style="margin-top: 15px">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Available stock in TI Inventory</th>
                                                            <td>2,000,000 units</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Average Monthly usage</th>
                                                            <td>3,000 units</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Re-stocking Level - Min</th>
                                                            <td>100,000 units</td>
                                                        </tr>                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="row" style="margin-top: 20px">
                        <div class="col col-sm-12">
                            <h4>Rating and Reviews</h4>
                            <div class="card">
                                <div class="card-header">
                                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i> 4.0 | <a href="#">26 Reviews</a>
                                </div>
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col col-sm-6">
                                            <input type="input" class="form-control-sm col-sm" placeholder="Search topics and reviews">
                                        </div>
                                        <div class="col col-sm-6">
                                            <div class="row justify-content-sm-center text-center">
                                                <div class="col col-sm-4">
                                                    <a href="#">26</a>
                                                    Reviews
                                                </div>
                                                <div class="col col-sm-4">
                                                    <a href="#">105</a>
                                                    Questions
                                                </div>
                                                <div class="col col-sm-4">
                                                    <a href="#">99</a>
                                                    Answers
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-sm-3" style="margin-top: 25px;">
                            <div class="row">
                                <div class="col col-sm">
                                    <h5>Rating Snapshot:</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                    5  <i class="fas fa-star"></i>
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 45%" aria-valuenow="45%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                    4  <i class="fas fa-star"></i>
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                    3  <i class="fas fa-star"></i>
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                    2  <i class="fas fa-star"></i>
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 15%" aria-valuenow="15%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-2">
                                    1  <i class="fas fa-star"></i>
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 5%" aria-valuenow="5%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col col-sm-4" style="margin-top: 25px;">
                            <div class="row">
                                <div class="col col-sm">
                                    <h5>Average Material Ratings:</h5>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col col-sm-6">
                                    Overall 
                                </div>
                                <div class="col col-sm">
                                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i> 4.0
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Features
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 19%" aria-valuenow="19%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Performance
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 67%" aria-valuenow="67%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Value for Money
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 10%" aria-valuenow="10%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Quality
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 5%" aria-valuenow="5%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Support and Customer Service
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 5%" aria-valuenow="5%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col col-sm-5" style="margin-top: 25px;">
                            <div class="row">
                                <div class="col col-sm">
                                    <h5>User Reviews:</h5>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col col-sm-6">
                                    Overall 
                                </div>
                                <div class="col col-sm">
                                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star-half"></i> 3.5
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Features
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 10%" aria-valuenow="10%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Performance
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 8%" aria-valuenow="8%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Value for Money
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Quality
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 87%" aria-valuenow="87%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm-6">
                                    Support and Customer Service
                                </div>
                                <div class="col col-sm">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75%" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 25px">
                        <div class="col col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    1 - 2 of 26 Reviews
                                    <button class="btn btn-primary float-right">Write a Review</button>
                                </div>
                                <div class="card-body">
                                    <div class="row" style="border-bottom: 1px solid rgba(0,0,0,.125)">
                                        <div class="col col-sm-3">
                                            <div>
                                                <strong>A012345 - John Doe, MGTS</strong>
                                            </div>
                                            <div>
                                                Role: <strong>Equipment Engineer</strong>
                                            </div>
                                            <div>
                                                Location: <strong>TIPI</strong>
                                            </div>
                                            <div>
                                                Review Count: <strong>205</strong>
                                            </div>
                                        </div>
                                        <div class="col col-sm-5">
                                            <div>
                                                <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i> 4.0 - <i>3 months ago</i>
                                            </div>
                                            <strong>Has been using the material to build device ABC</strong>
                                            <span>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac odio vel ipsum efficitur viverra et eu risus. Morbi posuere nunc eu justo tincidunt porta. Suspendisse ut turpis enim. Integer ultricies tempor volutpat. Aliquam porttitor scelerisque purus quis blandit. Sed ut magna sollicitudin, auctor tortor euismod, viverra arcu. Suspendisse convallis volutpat felis ut tempus. Aenean sed justo hendrerit, euismod mauris tincidunt, consequat mi. Etiam magna diam, venenatis vel ornare sit amet, pretium non elit. Praesent vitae turpis nec dui cursus pulvinar.
                                            </span>
                                        </div>
                                        <div class="col col-sm-4">
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Features
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 10%" aria-valuenow="10%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Performance
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 8%" aria-valuenow="8%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Value for Money
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Quality
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 87%" aria-valuenow="87%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Support and Customer Service
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row" style="border-bottom: 1px solid rgba(0,0,0,.125); margin-top: 25px;">
                                        <div class="col col-sm-3">
                                            <div>
                                                <strong>A000012 - Jane Doe</strong>
                                            </div>
                                            <div>
                                                Role: <strong>Equipment Supervisor</strong>
                                            </div>
                                            <div>
                                                Location: <strong>TIEM</strong>
                                            </div>
                                            <div>
                                                Review Count: <strong>23</strong>
                                            </div>
                                        </div>
                                        <div class="col col-sm-5">
                                            <div>
                                                <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 5.0 - <i>1 month ago</i>
                                            </div>
                                            <strong>Tested for Device BCDS</strong>
                                            <span>
                                                Pellentesque condimentum auctor mi, id tincidunt dolor lobortis et. Quisque pretium nulla et ex pulvinar interdum. Maecenas gravida orci mauris, ut consequat ipsum luctus vitae. Ut non arcu sit amet odio tincidunt feugiat nec vitae massa. Ut vestibulum vitae orci in sodales. Mauris auctor lacinia odio et eleifend. Etiam semper, neque sed iaculis porta, lorem nisl porttitor lorem, eget sodales tortor sapien quis erat. Etiam ex lectus, dignissim eget fermentum eget, bibendum sit amet nunc. Vivamus pulvinar consectetur lobortis. Suspendisse elementum tortor viverra dolor ultricies, nec lobortis velit eleifend. Mauris vitae porttitor mi. Phasellus ac tortor sem. Proin ultrices sagittis varius. Morbi maximus lorem nulla, a venenatis quam gravida ut. Nullam fringilla ligula et feugiat convallis.
                                            </span>
                                        </div>
                                        <div class="col col-sm-4">
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Features
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 88%" aria-valuenow="10%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Performance
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="8%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Value for Money
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 90%" aria-valuenow="25%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Quality
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 70%" aria-valuenow="87%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col col-sm-6">
                                                    Support and Customer Service
                                                </div>
                                                <div class="col col-sm">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-info" role="progressbar" style="width: 45%" aria-valuenow="75%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-specs" role="tabpanel" aria-labelledby="nav-specs-tab">
                    <div class="row" style="margin-top: 20px">
                        <div class="col col-sm-12">
                            <h4>Drivers and Manuals</h4>
                            <div>Tutorials, videos and other resources to help you identify and resolve issues.</div>
                            <div class="row">
                                <div class="col col-sm-6" style="margin-top: 15px;">
                                    <h5>Top Solutions</h5>
                                    <ul>
                                        <li><a href="#">How to install the device?</a></li>
                                        <li><a href="#">How to install the replace the device?</a></li>
                                        <li><a href="#">How to configure device for Device ABC?</a></li>
                                        <li><a href="#">How to configure device for Machine 1234?</a></li>
                                    </ul>
                                    <button class="btn btn-primary">
                                        Load more items
                                    </button>
                                </div>
                                <div class="col col-sm-6">
                                    <h5>Additional Resources</h5>
                                    <div class="row" style="margin-top: 45px">
                                        <div class="col-sm text-center">
                                            <a href="#">
                                                <i class="fas fa-atlas fa-2x"></i>
                                            </a>
                                            <h6>Support by Topic</h6>
                                        </div>
                                        <div class="col-sm text-center">
                                            <a href="#">
                                                <i class="fas fa-arrow-alt-circle-down fa-2x"></i>
                                            </a>
                                            <h6>Software and Downloads</h6>
                                        </div>
                                        <div class="col-sm text-center">
                                            <a href="#">
                                                <i class="fas fa-parachute-box fa-2x"></i>
                                            </a>
                                            <h6>Contact Supplier</h6>    
                                        </div>
                                        <div class="col-sm text-center">
                                            <a href="#">
                                                <i class="fab fa-searchengin fa-2x"></i>
                                            </a>
                                            <h6>Assisted Search</h6>
                                        </div>
                                    </div>                             
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col-sm" style="margin-top: 25px">
                                    <h4>Questions</h4>
                                    <div class="card">
                                        <div class="card-header">
                                            1 - 2 of 105 Questions
                                            <button class="btn btn-primary float-right">Ask a Question</button>
                                        </div>
                                        <div class="card-body">
                                            <div class="row" style="border-bottom: 1px solid rgba(0,0,0,.125)">
                                                <div class="col col-sm">
                                                    <div class="row">
                                                        <div class="col col-sm-8"
                                                             <span><strong>A012345 Jane Doe, TIPI</strong> - <i>2 months ago</i></span>
                                                            <h5>What is the process configuration for Machine ABC?</h5>
                                                        </div>
                                                        <div class="col col-sm">
                                                            <div class="btn-group float-right" role="group" >
                                                                <button class="btn btn-default">Answer this Question</button>
                                                                <button class="btn btn-success">2 Answers</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="background-color: #fff7e5">
                                                        <div class="col col-sm" style="padding-left: 45px">
                                                            <div><strong>A0111111 - Juan Luna, TIPI</strong> - <i>2 days ago</i></div>
                                                            <div>
                                                                Fusce maximus, libero eu vulputate volutpat, neque dolor elementum nisl, quis convallis ex libero ac nulla. Suspendisse sapien neque, mattis ut suscipit ut, fermentum eget nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean commodo sed dolor id egestas. Maecenas suscipit magna laoreet ex tincidunt, in luctus tortor sagittis. Aenean tortor lectus, luctus sit amet pharetra non, cursus aliquam neque. Nunc mattis dignissim mollis. Vivamus imperdiet risus nec gravida tincidunt. Vestibulum finibus ullamcorper euismod.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="border-bottom: 1px solid rgba(0,0,0,.125); margin-top: 35px">
                                                <div class="col col-sm">
                                                    <div class="row">
                                                        <div class="col col-sm-8"
                                                             <span><strong>A0234212 Cardo Dalisay, TIPI</strong> - <i>23 days ago</i></span>
                                                            <h5>What is max temperature tolerance of the device?</h5>
                                                        </div>
                                                        <div class="col col-sm">
                                                            <div class="btn-group float-right" role="group" >
                                                                <button class="btn btn-default">Answer this Question</button>
                                                                <button class="btn btn-success">4 Answer</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="background-color: #fff7e5">
                                                        <div class="col col-sm" style="padding-left: 45px">
                                                            <div><strong>A0128374 - Jose Rizal, TIEM</strong> - <i>5 days ago</i></div>
                                                            <div>
                                                                Vestibulum suscipit, lorem eu interdum pretium, ex elit pellentesque eros, et finibus nunc diam euismod leo. Aenean euismod augue non venenatis lobortis. Proin euismod lorem diam, sed rhoncus erat accumsan vel. Nunc id feugiat eros, sed egestas velit. Etiam accumsan dui lorem, vitae dignissim arcu ullamcorper ac. Curabitur placerat est in enim hendrerit sagittis. Vestibulum vel magna ac tortor efficitur vulputate ut ut risus.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


