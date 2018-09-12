<%-- $Id: lottable.jsp,v 1.5 2015/09/03 22:27:03 a0199948 Exp $ --%>
<%-- TODO: remove (DataTables usage example) --%>
<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>

<div class="container-fluid">
    <div class="row align-items-center justify-content-center">
        <div class="col-8">

            <input id="inputSearch" type="search" class="form-control mx-3 my-3" aria-label="Search" placeholder="Search">

        </div>
    </div>
</div>
<div class="container-fluid" style="display:none">
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
                <li> Rating: 3.8 stars (this should be stars!)</li>
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
                <li> Rating: 3.9 stars (this should be stars!)</li>
            </ul>
        </div>
    </div>

</div>

<div class="container-fluid">
    <div class="row">
        <h3 class="col-md-12 view-title">Material Search</h3>
    </div>
    <div class="panel panel-default datatable-panel">
        <div class="row">
            <div class="col-md-12">
                <table class="table tblstandard table-striped" id="maintable" style="width:80%">
                    <thead>
                        <tr class="tbl2">
                            <th style="width:10%">Material ID</th>                            
                            <th>Material</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr class="tblbottom">
                            <th>Material ID</th>
                            <th>Material</th>
                        </tr>
                    </tfoot>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    $(document).ready(function () {
       
        /*
         var mainTable = $('#maintable').DataTable({
         "bServerSide": true,
         "sAjaxSource": "getSearchResults",
         "order": [[1, 'asc']],
         "aoColumns": [
         {"mDataProp": "materialid"},
         {"mDataProp": "materialname"},
         {"mDataProp": "materialdesc"}
         ],
         // The following lines demonstrate how to send extra data to the server
         "fnServerData": function (sSource, aoData, fnCallback) {
         aoData.push({"name": "searchTerm", "value": "RAZOR"});
         $.getJSON(sSource, aoData, function (json) {
         fnCallback(json);
         });
         }
         });
         
         //.columnFilter({aoColumns: [{type: "number"}, {type: "text"}, {type: "text"}]});
         */

        //
        //var theSearchResult = GetSearchResults();
        var mainTable = $('#maintable').DataTable({
            //data: jQuery.parseJSON(theSearchResult),
            dom: 'lrtip',
            ajax: {
                type: "POST",
                url: "getSearchResults",
                dataSrc: "data",
                async: true,
                error: function (data) {
                    console.log(data);
                }
            },
            searching: true,
            //serverSide: true,
            columns: [
                {
                    data: "materialid"
                }
                ,
                {
                    //data: "materialname",
                    data: null,
                    render: function (data, type, row) {
                        //return (data["price"] * data["quantity"])
                        //return('Test');

                        return('<img src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">' +
                                '<h2><a href="">' + data["materialname"] + '</a></h2>' 
                                + 'Description: ' + data["materialdesc"] + '<br />' 
                                + 'Rating: ' + data["rating"] + '<br />' 
                                + data["fieldname1"] + ': ' + data["fieldvalue1"] + '<br />' 
                                + data["fieldname2"] + ': ' + data["fieldvalue2"] + '<br />'                                                                                                      
                                + data["fieldname3"] + ': ' + data["fieldvalue3"] + '<br />'  
                                );
                    }
                }
            ]

        });
        $('#inputSearch').keyup(function () {
            //if ($(this).val().length > 2) {
                //mainTable.search($(this).val()).columns.adjust().draw();
                mainTable.search($(this).val()).draw();
            //}
        });
        //

    });
    //


</script>









