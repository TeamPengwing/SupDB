
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



</style>

<div class="container-fluid" style="padding-left: 50px; padding-right: 50px;">
    <div class="row">
        <div class="col-sm-12 text-center">
            <h1>Material Name</h1>
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
    <div class="row">
        <div class="col col-sm">
            <h3>Material Description</h3>
            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et accumsan augue. Nunc ac lobortis elit, ut porta orci. Sed sed venenatis ex. Vivamus enim lacus, placerat non risus vitae, pretium maximus tortor. Aliquam convallis efficitur blandit. Ut euismod enim et volutpat viverra. In mollis sed erat et ultrices. Nulla dolor velit, imperdiet at tincidunt eu, tincidunt ut quam. Quisque vitae tincidunt dui. Praesent in tortor a felis fringilla ullamcorper. Donec scelerisque mauris leo, sit amet tincidunt nibh ultricies ac. Phasellus eu euismod purus. Donec finibus dolor orci.</span>
            <h5>Current Price: $1,234.00</h5>
            <button class="btn btn-primary">Order</button>
        </div>
        <div class="col col-sm">

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
                        <div class="col col-sm-8">
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
                                                Technical Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Process Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Material Specification
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-sm-4" >
                            <div class="col col-sm-12" style="border:1px solid #a9a9a9; background-color: #eee;">
                                <div class="row">
                                    <div class="col col-sm-12">
                                        <h5>Material Name</h5>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-sm-8">
                                        Current Price
                                    </div>
                                    <div class="col col-sm-4" style="text-align:right">
                                        $1,234.00
                                    </div>
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
                                                Supplier Informantion
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseSupplierInfo" class="collapse show" aria-labelledby="headingSupplierInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingDeliveryInfo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseDeliveryInfo" aria-expanded="false" aria-controls="collapseDeliveryInfo">
                                                Delivery Information
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseDeliveryInfo" class="collapse" aria-labelledby="headingDeliveryInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingUsageInfo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseUsageInfo" aria-expanded="false" aria-controls="collapseUsageInfo">
                                                Usage Information
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseUsageInfo" class="collapse" aria-labelledby="headingUsageInfo" data-parent="#accordionProductInfo">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
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
                                <div class="col col-sm-6">
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
                                    <ul>
                                        <li><a href="#">How to install the device?</a></li>
                                        <li><a href="#">How to install the replace the device?</a></li>
                                        <li><a href="#">How to configure device for Device ABC?</a></li>
                                        <li><a href="#">How to configure device for Machine 1234?</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


