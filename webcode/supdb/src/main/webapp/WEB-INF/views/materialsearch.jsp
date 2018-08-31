<%-- $Id: lottable.jsp,v 1.5 2015/09/03 22:27:03 a0199948 Exp $ --%>
<%-- TODO: remove (DataTables usage example) --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">


    <div class="w-auto p-3" style="background-color: #eee;">
        <form class="form-inline">
            <div class="row">
                <div class="col-sm-12">
                    <input class="form-control form-control-lg" type="search" placeholder="Search" aria-label="Search">
                </div>               
            </div>
            
        </form>
    </div>

</div>
<div class="container-fluid">
    <div class="media mt-3">
        <a class="pr-3" href="#">
            <img src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg" alt="Generic placeholder image">
        </a>
        <div class="media-body">
            <h5 class="mt-0">Blade: Electroformed Bond Hub Blade: ZH05A</h5>
            <ul>
                <li> Supplier: DISCO</li>
                <li> Description: (A) ZH05-SD2000-N1-90-N2409 HEFF1073</li>
                <li> Cut Type: For Step cut Z1 blade</li>
                <li> Package Application: For Automotive / Non-Automotive / C021 / C027 (LASER groove and non-LASER groove) - Flipchip only </li>
                <li> Rating: 3.8 stars (thsi should be stars!)</li>
            </ul>
        </div>
    </div>
    <div class="media mt-3">
        <a class="pr-3" href="#">
            <img src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg" alt="Generic placeholder image">
        </a>
        <div class="media-body">
            <h5 class="mt-0">Blade: Electroformed Bond Hub Blade: ZH05B</h5>
            <ul>
                <li> Supplier: DISCO</li>
                <li> Description: (B) ZH05-SD2000-N1-90-N2409 HEFF1073</li>
                <li> Cut Type: For Step cut Z1 blade</li>
                <li> Package Application: For Automotive / Non-Automotive / C021 / C027 (LASER groove and non-LASER groove) - Flipchip only </li>
                <li> Rating: 3.9 stars (thsi should be stars!)</li>
            </ul>
        </div>
    </div>

</div>

<script type="text/javascript">
// Send an Ajax request for the data
    $(document).ready(function () {
        var mainTable = $('#maintable').dataTable({
            "bServerSide": true,
            "sAjaxSource": "<c:url value='lottable.json'/>",
            "order": [[1, 'asc']],
            "aoColumns": [
                {"mDataProp": "lot"},
                {"mDataProp": "lpt"},
                {"mDataProp": "curQty"}
            ],
            /* The following lines demonstrate how to send extra data to the server */
            "fnServerData": function (sSource, aoData, fnCallback) {
                aoData.push({"name": "facility", "value": "DP1DM5"});
                $.getJSON(sSource, aoData, function (json) {
                    fnCallback(json)
                });
            }
        }).columnFilter({aoColumns: [{type: "text"}, {type: "text"}, {type: "text"}]});
        //new FixedHeader( mainTable );
    });
</script>









