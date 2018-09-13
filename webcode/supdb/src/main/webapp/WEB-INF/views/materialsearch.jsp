<%-- $Id: lottable.jsp,v 1.5 2015/09/03 22:27:03 a0199948 Exp $ --%>
<%-- TODO: remove (DataTables usage example) --%>
<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>

<style type="text/css">
    td { font-size: 12px; }
</style>

<div class="container-fluid">
    <div class="row align-items-center justify-content-center">
        <div class="col-8">

            <input id="inputSearch" type="search" class="form-control mx-3 my-3" aria-label="Search" placeholder="Search">

        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-10">

    </div>
</div>

<div class="container-fluid">    


        <table class="table table-striped" id="maintable" style="width:80%" >
            <thead>
                <tr>
                    <th>Search Results</th>
                </tr>
            </thead>
            <tfoot>

            </tfoot>
            <tbody></tbody>
        </table>


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
                    //data: "materialname",
                    data: null,
                    render: function (data, type, row) {
                        //return (data["price"] * data["quantity"])
                        //return('Test');

                        return('<h5><img src="' + data["imageSrc"] + '" height="50" width="50">' +
                                ' <i class="fas fa-info-circle"></i><a href="view/view"> ' + data["materialname"] + ' </a>' 
                                + '<a href="comparator/material/1" class="btn btn-info float-right"><i class="fas fa-plus-circle"></i> Compare</a> </h5>'
                                + '<strong> Description: </strong>' + data["materialdesc"] + '<br />'
                                + '<strong> Rating: </strong>' + data["rating"] + '<br />'
                                + '<strong> ' + data["fieldname1"] + ': </strong>' + data["fieldvalue1"] + '<br />'
                                + '<strong> ' + data["fieldname2"] + ': </strong>' + data["fieldvalue2"] + '<br />'
                                + '<strong> ' + data["fieldname3"] + ': </strong>' + data["fieldvalue3"] + '<br />'
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
        
        //var str = jQuery.param( search );
        //alert(str);
        var str = document.URL.split('?')[1];
        str = str.split('=')[1];
        if(str){
            $( "#inputSearch" ).val( str );
             mainTable.search(str).draw();
        }
        
        //

    });
    //


</script>









