<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>

    .search-small{
        width: 100px !important;
    }    

    ul.ui-autocomplete{
        background-color: #f8f9fa!important;
        list-style: none!important;
        max-width: 300px!important;
    }

    .ui-menu-item a:hover{
        color: green;
    }

    .ui-menu-item:hover
    {
        background-color: #e9ecef !important;
        cursor: pointer !important;
    }

    .item-image-default{
        font-size: 50px;
        color:#cbd3da!important;
    }

    .item-container
    {
        /* background-color: #f8f9fa!important;*/
        background-color: #d9edf7!important;
        border: 1px solid #dee2e6 !important;
    }

    .sortable-item{
        padding: 2px;
        border: 1px solid #0069d9;
        margin: 2px;
        border-radius: 2px;
        background: #fff;
    }

    .sortable-ul{
        list-style: none;
    }

    .data-group-row
    {
        background: #f8f9fa;
    }

    .checked-star {
        color: #007bff;
    }

    .part-num-label
    {
        color: #007bff;
    }

    .container-custom{
        margin-right: 50px;
        margin-left: 50px;
    }

    .diff
    {
        color: #cc0000;
    }

</style>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<c:if test="${not empty id}">
    <input type="hidden" id="hiddenId" value="${id}">
</c:if>

<nav class="navbar navbar-light bg-light justify-content-between" style="border-bottom:1px solid gray">
    <div style="text-align: center">
        <a class="navbar-brand"><h4>Material Comparator</h4></a>
    </div>

    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="searchBox">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</nav>

<div class="container-custom">



    <div style="border: 1px solid #dee2e6; padding: 10px;">
        <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
            <div class="col-md-4">                
                <div class="alert alert-secondary" role="alert" style="height: 200px">
                    <h4>Compare Mode</h4>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-primary" id="fullCompare">Full</button>
                        <button type="button" class="btn btn-secondary" id="differenceCompare">Differences</button>
                    </div>
                    <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Change compare mode</small>
                    <input type="hidden" id="currentCompareMode">
                </div>
            </div>
            <div class="col-md-8">
                <div class="alert alert-secondary" role="alert" style="height: 200px">
                    <h4>Data Groups</h4>
                    <div id="dataGroupContainer">
                    </div>
                    <button id="applyDataGroupOptions" type="button" class="btn btn-primary btn-sm">Apply</button>
                    <button id="sortDataGroupOptions" type="button" class="btn btn-primary btn-sm">Sort</button>
                    <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Select information to display</small>
                </div>
            </div>
        </div>   
    </div>

    <div>
        <table class="table table-bordered table-hover" id="mainTable">
            <thead>
                <tr>
                    <th></th>
                    <th class="item-container">
                        <div class="form-inline">
                            <input class="form-control form-control-sm mr-sm-1 search-small itemSearchBox" data-searchbox="1" type="search" placeholder="Search" aria-label="Search" id="itemSearchBox1">
                            <button class="btn btn-sm btn-secondary" type="button"><i class="fas fa-search"></i></button>
                        </div>
                        <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Enter material</small>
                        <div>
                            <label id="partNum1" data-value="0" class="part-num-label"></label>
                            <br>
                            <div id="partNum1-image">

                            </div>
                        </div>
                    </th>
                    <th class="item-container">
                        <div class="form-inline">
                            <input class="form-control form-control-sm mr-sm-1 search-small itemSearchBox" data-searchbox="2" type="search" placeholder="Search" aria-label="Search" id="itemSearchBox2">
                            <button class="btn btn-sm btn-secondary" type="button"><i class="fas fa-search"></i></button>
                        </div>
                        <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Enter material</small>
                        <div>
                            <label id="partNum2" data-value="0" class="part-num-label"></label>
                            <br>
                            <div id="partNum2-image">

                            </div>
                        </div>                  
                    </th>
                    <th class="item-container">
                        <div class="form-inline">
                            <input class="form-control form-control-sm mr-sm-1 search-small itemSearchBox" data-searchbox="3" type="search" placeholder="Search" aria-label="Search" id="itemSearchBox3">
                            <button class="btn btn-sm btn-secondary" type="button"><i class="fas fa-search"></i></button>
                        </div>
                        <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Enter material</small>
                        <div data-searchbox="3">
                            <label id="partNum3" data-value="0" class="part-num-label"></label>
                            <br>
                            <div id="partNum3-image">

                            </div>
                        </div>                    
                    </th>
                    <th class="item-container">
                        <div class="form-inline">
                            <input class="form-control form-control-sm mr-sm-1 search-small itemSearchBox" data-searchbox="4" type="search" placeholder="Search" aria-label="Search" id="itemSearchBox4">
                            <button class="btn btn-sm btn-secondary" type="button"><i class="fas fa-search"></i></button>
                        </div>
                        <small class="form-text text-muted"><i class="fas fa-info-circle"></i> Enter material</small>
                        <div>
                            <label id="partNum4" data-value="0" class="part-num-label"></label>
                            <br>
                            <div id="partNum4-image">

                            </div>
                        </div>                     
                    </th>
                </tr>
                <tr>
                    <th>Rating</th>
                    <th>
                        <div id="partNum1-rating-container" class="rating-container">

                        </div>
                        <div id="rating-star-container-1" class="rating-star-container" style="display: none">
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <br>
                            <a href="/supdb/view/view">Click to view more details</a>
                        </div>
                    </th>
                    <th>
                        <div id="partNum2-rating-container" class="rating-container">

                        </div>
                        <div id="rating-star-container-2" class="rating-star-container" style="display: none">
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <br>
                            <a href="/supdb/view/view">Click to view more details</a>
                        </div>
                    </th>
                    <th>
                        <div id="partNum3-rating-container" class="rating-container">

                        </div>
                        <div id="rating-star-container-3" class="rating-star-container" style="display: none">
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <br>
                            <a href="/supdb/view/view">Click to view more details</a>
                        </div>
                    </th>
                    <th>
                        <div id="partNum4-rating-container" class="rating-container">

                        </div>
                        <div  id="rating-star-container-4" class="rating-star-container" style="display: none">
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star checked-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <br>
                            <a href="/supdb/view/view">Click to view more details</a>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <!-- Sort Data Groups Modal -->
    <div class="modal fade" id="sortDataGroupsModal" tabindex="-1" role="dialog" aria-labelledby="sortDataGroupsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="sortDataGroupsModalLabel">Sort Data Groups</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="sortDataGroupsContainer">
                        <ul id="sortable">

                        </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="applySort">Sort</button>
                </div>
            </div>
        </div>
    </div>

</div>

<script>

    $(document).ready(function () {
//        http://www2.peco.co.kr/img/images/cap/cap_img2_on.gif
        // get context path
        var contextPath = "${pageContext.request.contextPath}";

        if ($('#hiddenId').val() == "1")
        {
            $('#partNum1').text("Material 1").attr('data-value', "1");
            $('#partNum1-image').append('<img style="height: 100px;" src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">');

            // reload table rows
            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            if ($('#currentCompareMode').val() == "diff")
            {
                diffCompare();
            } else
            {
                loadTableAndDataGroupOptions(dataGroups);
            }

            // display rating info
            $.ajax({
                url: contextPath + "/comparator/compGetMaterialRating/" + "1",
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    var ratingContainerId = 'partNum' + 1 + '-rating-container';
                    $('#' + ratingContainerId).empty();
                    switch ("1")
                    {
                        case "1":
                            $('#rating-star-container-1').hide();
                            break;
                        case "2":
                            $('#rating-star-container-2').show();
                            break;
                        case "3":
                            $('#rating-star-container-3').show();
                            break;
                        case "4":
                            $('#rating-star-container-4').show();
                            break;
                    }
                    if (data != null && data.length > 0) {

                        $.each(data, function (index, value) {
                            $('#' + ratingContainerId).append($('<span>').html(value.ratingType + " :" + value.ratingValue + "/5")).append($('<br>'));
                        });

                        switch ("1")
                        {
                            case "1":
                                $('#rating-star-container-1').show();
                                break;
                            case "2":
                                $('#rating-star-container-2').show();
                                break;
                            case "3":
                                $('#rating-star-container-3').show();
                                break;
                            case "4":
                                $('#rating-star-container-4').show();
                                break;
                        }
                    }
                }
            });
        }

        // display data groups sorted based on supdb_data_group_sort table
        displayDataGroupAndFieldsDefault();

        // reset comparison buttons
        $('#fullCompare').removeClass("btn-secondary").addClass("btn-primary");
        $('#differenceCompare').removeClass("btn-primary").addClass("btn-secondary");
        $('#currentCompareMode').val("full");

        // main search box 
        $('#searchBox').autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: contextPath + "/comparator/getMaterial/" + $('#searchBox').val(),
                    type: 'GET',
                    success: function (data, textStatus, jqXHR) {
                        response($.map(data, function (item) {
                            return item.materialName;
                        }));
                    }
                });
            },
            select: function (event, ui) {}
        });
        $("#searchBox").on("autocompleteselect", function (event, ui) {

        });

        // item search box
        $('.itemSearchBox').autocomplete({
            dataType: "json",
            source: function (request, response) {
                $.ajax({
                    url: contextPath + "/comparator/getMaterial/" + request.term,
                    type: 'GET',
                    success: function (data, textStatus, jqXHR) {
                        response($.map(data, function (item) {
                            return {
                                label: item.materialName,
                                value: item.materialId
                            };
                        }));
                    }
                });
            },
            focus: function (event, ui) {},
            select: function (event, ui) {},
            change: function (event, ui) {}
        });
        $(".itemSearchBox").on("autocompletefocus", function (event, ui) {
            $(this).val(ui.item.label);
        });
        $(".itemSearchBox").on("autocompleteselect", function (event, ui) {
            $(this).val(ui.item.label);
            var selectedItemLabel = ui.item.label;
            var selectedItemValue = ui.item.value;

            // display selected item
            var boxNum = $(this).attr('data-searchbox');
            switch (boxNum)
            {
                case "1":
                    $('#partNum1').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    $('#partNum1-image').append('<img style="height: 100px;" src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">');
                    break;
                case "2":
                    $('#partNum2').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    $('#partNum2-image').append('<img style="height: 100px;" src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">');

                    break;
                case "3":
                    $('#partNum3').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    $('#partNum3-image').append('<img style="height: 100px;" src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">');

                    break;
                case "4":
                    $('#partNum4').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    $('#partNum4-image').append('<img style="height: 100px;" src="https://www.disco.co.jp/eg/products/blade/images/zh05.jpg">');

                    break;
            }
            // reload table rows
            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            if ($('#currentCompareMode').val() == "diff")
            {
                diffCompare();
            } else
            {
                loadTableAndDataGroupOptions(dataGroups);
            }

            // display rating info
            $.ajax({
                url: contextPath + "/comparator/compGetMaterialRating/" + selectedItemValue,
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    var ratingContainerId = 'partNum' + boxNum + '-rating-container';
                    $('#' + ratingContainerId).empty();
                    switch (boxNum)
                    {
                        case "1":
                            $('#rating-star-container-1').hide();
                            break;
                        case "2":
                            $('#rating-star-container-2').show();
                            break;
                        case "3":
                            $('#rating-star-container-3').show();
                            break;
                        case "4":
                            $('#rating-star-container-4').show();
                            break;
                    }
                    if (data != null && data.length > 0) {

                        $.each(data, function (index, value) {
                            $('#' + ratingContainerId).append($('<span>').html(value.ratingType + " :" + value.ratingValue + "/5")).append($('<br>'));
                        });

                        switch (boxNum)
                        {
                            case "1":
                                $('#rating-star-container-1').show();
                                break;
                            case "2":
                                $('#rating-star-container-2').show();
                                break;
                            case "3":
                                $('#rating-star-container-3').show();
                                break;
                            case "4":
                                $('#rating-star-container-4').show();
                                break;
                        }
                    }
                }
            });
        });
        $(".itemSearchBox").on("autocompletechange", function (event, ui) {
            $(this).val(ui.item.label);
            var selectedItemLabel = ui.item.label;
            var selectedItemValue = ui.item.value;

            // display selected item
            var boxNum = $(this).attr('data-searchbox');
            switch (boxNum)
            {
                case "1":
                    $('#partNum1').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    break;
                case "2":
                    $('#partNum2').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    break;
                case "3":
                    $('#partNum3').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    break;
                case "4":
                    $('#partNum4').text(selectedItemLabel).attr('data-value', selectedItemValue);
                    break;
            }
            // reload table rows
            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            if ($('#currentCompareMode').val() == "diff")
            {
                diffCompare();
            } else
            {
                loadTableAndDataGroupOptions(dataGroups);
            }

            // display rating info
            $.ajax({
                url: contextPath + "/comparator/compGetMaterialRating/" + selectedItemValue,
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    var ratingContainerId = 'partNum' + boxNum + '-rating-container';
                    $('#' + ratingContainerId).empty();
                    switch (boxNum)
                    {
                        case "1":
                            $('#rating-star-container-1').hide();
                            break;
                        case "2":
                            $('#rating-star-container-2').show();
                            break;
                        case "3":
                            $('#rating-star-container-3').show();
                            break;
                        case "4":
                            $('#rating-star-container-4').show();
                            break;
                    }
                    if (data != null && data.length > 0) {

                        $.each(data, function (index, value) {
                            $('#' + ratingContainerId).append($('<span>').html(value.ratingType + " :" + value.ratingValue + "/5")).append($('<br>'));
                        });

                        switch (boxNum)
                        {
                            case "1":
                                $('#rating-star-container-1').show();
                                break;
                            case "2":
                                $('#rating-star-container-2').show();
                                break;
                            case "3":
                                $('#rating-star-container-3').show();
                                break;
                            case "4":
                                $('#rating-star-container-4').show();
                                break;
                        }
                    }
                }
            });

        });

        // display data groups based on selected data group options
        $('#applyDataGroupOptions').click(function () {
            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });
            if (dataGroups.length > 0)
            {
                loadTableAndDataGroupOptions(dataGroups);
            }
        });

        // sort data groups
        $('#sortDataGroupOptions').click(function () {
            var sortable = $('#sortable').empty();
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var dataGroupId = $(this).attr('data-dataGroupId');
                var dataGroup = $(this).attr('data-dataGroup');
                var dataGroupChecked = $(this).is(':checked') ? 'yes' : 'no';
                var option = $('<li>')
                        .addClass('sortable-item')
                        .attr('data-dataGroupId', dataGroupId)
                        .attr('data-dataGroup', dataGroup)
                        .attr('data-checked', dataGroupChecked)
                        .append($('<span>').html(dataGroup));
                sortable.addClass('sortable-ul').append(option);
            });
            $("#sortable").sortable();
            $("#sortable").disableSelection();
            $('#sortDataGroupsModal').modal('show');
        });
        $('#applySort').click(function () {
            var dataGroups = [];
            $("#sortable li").each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['visible'] = $(this).attr('data-checked') == 'yes' ? 'true' : 'false';
                item['displaySort'] = $(this).attr('data-displaySort');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                dataGroups.push(item);
            });
            if (dataGroups.length > 0)
            {
                loadTableAndDataGroupOptions(dataGroups);
            }
            $('#sortDataGroupsModal').modal('hide');
        });

        // full comparison
        $('#fullCompare').click(function () {
            $(this).removeClass("btn-secondary").addClass("btn-primary");
            $('#differenceCompare').removeClass("btn-primary").addClass("btn-secondary");

            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            loadTableAndDataGroupOptions(dataGroups);

            $('#currentCompareMode').val("full");
        });

        // difference comparison
        $('#differenceCompare').click(function () {

            $(this).removeClass("btn-secondary").addClass("btn-primary");
            $('#fullCompare').removeClass("btn-primary").addClass("btn-secondary");
            $('#currentCompareMode').val("diff");

            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            var mainTableBody = $('#mainTable tbody');
            var ctr = 1;
            mainTableBody.empty();
            $('#dataGroupContainer').empty();
            $.each(dataGroups, function (index, value) {

                ctr++;
                // display as checkbox option
                var inputId = 'dataGroupCheckBox' + ctr;
                var dataGroupItemContainer = $('<div>').addClass('custom-control custom-checkbox');
                var dataGroupItemLabel = '<label class="custom-control-label" for="' + inputId + '">' + value.dataGroup + '</label>';
                var dataGroupItemInput = $('<input>').addClass('custom-control-input dataGroupCheckBoxOption')
                        .attr('type', 'checkbox')
                        .attr('value', '')
                        .attr('id', inputId)
                        .attr('checked', (value.visible.toString() == 'true' ? true : false))
                        .attr('data-dataGroupId', value.dataGroupId)
                        .attr('data-dataGroup', value.dataGroup)
                        .attr('data-displaySort', value.displaySort);
                dataGroupItemContainer.append(dataGroupItemInput);
                dataGroupItemContainer.append(dataGroupItemLabel);
                $('#dataGroupContainer').append(dataGroupItemContainer);
                if (value.visible.toString() == 'true')
                {
                    // display the data group in the main table
                    var dataGroupRow = $('<tr>').addClass('data-group-row').append($('<td>').attr('colspan', '5').append(value.dataGroup));
                    mainTableBody.append(dataGroupRow);
                    // display the data fields associated to the data group
                    var matId1 = $('#partNum1').attr('data-value');
                    var matId2 = $('#partNum2').attr('data-value');
                    var matId3 = $('#partNum3').attr('data-value');
                    var matId4 = $('#partNum4').attr('data-value');

                    $.ajax({
                        url: contextPath + "/comparator/compGetFieldsWithValues/" +
                                value.dataGroupId + "/" +
                                matId1 + "/" +
                                matId2 + "/" +
                                matId3 + "/" +
                                matId4 + "/",
                        type: 'GET',
                        async: false,
                        success: function (data_fields, textStatus, jqXHR) {
                            var ctr = 0;
                            $.each(data_fields, function (i, v) {
                                ctr++;
                                var dataFieldRow = $('<tr>').append($('<td>').append(v.dataField))
                                        .append($('<td>').append(v.dataFieldValueMat1))
                                        .append($('<td>').append(v.dataFieldValueMat2 != "different" ? v.dataFieldValueMat2 : '<span class="diff">different</span>'))
                                        .append($('<td>').append(v.dataFieldValueMat3))
                                        .append($('<td>').append(v.dataFieldValueMat4));

                                mainTableBody.append(dataFieldRow);
                            });
                        }
                    });
                }
            });

        });

        function diffCompare()
        {
            $(this).removeClass("btn-secondary").addClass("btn-primary");
            $('#fullCompare').removeClass("btn-primary").addClass("btn-secondary");
            $('#currentCompareMode').val("diff");

            var dataGroups = [];
            $('div#dataGroupContainer input[type=checkbox]').each(function () {
                var item = {};
                item['dataGroupId'] = $(this).attr('data-dataGroupId');
                item['dataGroup'] = $(this).attr('data-dataGroup');
                item['displaySort'] = $(this).attr('data-displaySort');
                if ($(this).is(':checked'))
                {
                    item['visible'] = 'true';
                } else
                {
                    item['visible'] = 'false';
                }
                dataGroups.push(item);
            });

            var mainTableBody = $('#mainTable tbody');
            var ctr = 1;
            mainTableBody.empty();
            $('#dataGroupContainer').empty();
            $.each(dataGroups, function (index, value) {

                ctr++;
                // display as checkbox option
                var inputId = 'dataGroupCheckBox' + ctr;
                var dataGroupItemContainer = $('<div>').addClass('custom-control custom-checkbox');
                var dataGroupItemLabel = '<label class="custom-control-label" for="' + inputId + '">' + value.dataGroup + '</label>';
                var dataGroupItemInput = $('<input>').addClass('custom-control-input dataGroupCheckBoxOption')
                        .attr('type', 'checkbox')
                        .attr('value', '')
                        .attr('id', inputId)
                        .attr('checked', (value.visible.toString() == 'true' ? true : false))
                        .attr('data-dataGroupId', value.dataGroupId)
                        .attr('data-dataGroup', value.dataGroup)
                        .attr('data-displaySort', value.displaySort);
                dataGroupItemContainer.append(dataGroupItemInput);
                dataGroupItemContainer.append(dataGroupItemLabel);
                $('#dataGroupContainer').append(dataGroupItemContainer);
                if (value.visible.toString() == 'true')
                {
                    // display the data group in the main table
                    var dataGroupRow = $('<tr>').addClass('data-group-row').append($('<td>').attr('colspan', '5').append(value.dataGroup));
                    mainTableBody.append(dataGroupRow);
                    // display the data fields associated to the data group
                    var matId1 = $('#partNum1').attr('data-value');
                    var matId2 = $('#partNum2').attr('data-value');
                    var matId3 = $('#partNum3').attr('data-value');
                    var matId4 = $('#partNum4').attr('data-value');
                    $.ajax({
                        url: contextPath + "/comparator/compGetFieldsWithValues/" +
                                value.dataGroupId + "/" +
                                matId1 + "/" +
                                matId2 + "/" +
                                matId3 + "/" +
                                matId4 + "/",
                        type: 'GET',
                        async: false,
                        success: function (data_fields, textStatus, jqXHR) {
                            var ctr = 0;
                            $.each(data_fields, function (i, v) {

                                var dataFieldRow = $('<tr>').append($('<td>').append(v.dataField))
                                        .append($('<td>').append(v.dataFieldValueMat1))
                                        .append($('<td>').append(v.dataFieldValueMat2 != "different" ? v.dataFieldValueMat2 : '<span class="diff">different</span>'))
                                        .append($('<td>').append(v.dataFieldValueMat3))
                                        .append($('<td>').append(v.dataFieldValueMat4));

                                mainTableBody.append(dataFieldRow);
                            });
                        }
                    });
                }
            });
        }

        function displayDataGroupsAndFieldsCustom(data)
        {
            if (data == null)
            {
                displayDataGroupAndFieldsDefault();
            } else
            {
                loadTableAndDataGroupOptions(data);
            }
        }

        function displayDataGroupAndFieldsDefault()
        {
            // get sorted data groups based on config table
            $.ajax({
                url: contextPath + "/comparator/getSortedDataGroups",
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    loadTableAndDataGroupOptions(data);
                }
            });
        }

        function loadTableAndDataGroupOptions(dataGroups)
        {
            var mainTableBody = $('#mainTable tbody');
            var ctr = 1;
            mainTableBody.empty();
            $('#dataGroupContainer').empty();
            $.each(dataGroups, function (index, value) {

                ctr++;
                // display as checkbox option
                var inputId = 'dataGroupCheckBox' + ctr;
                var dataGroupItemContainer = $('<div>').addClass('custom-control custom-checkbox');
                var dataGroupItemLabel = '<label class="custom-control-label" for="' + inputId + '">' + value.dataGroup + '</label>';
                var dataGroupItemInput = $('<input>').addClass('custom-control-input dataGroupCheckBoxOption')
                        .attr('type', 'checkbox')
                        .attr('value', '')
                        .attr('id', inputId)
                        .attr('checked', (value.visible.toString() == 'true' ? true : false))
                        .attr('data-dataGroupId', value.dataGroupId)
                        .attr('data-dataGroup', value.dataGroup)
                        .attr('data-displaySort', value.displaySort);
                dataGroupItemContainer.append(dataGroupItemInput);
                dataGroupItemContainer.append(dataGroupItemLabel);
                $('#dataGroupContainer').append(dataGroupItemContainer);
                if (value.visible.toString() == 'true')
                {
                    // display the data group in the main table
                    var dataGroupRow = $('<tr>').addClass('data-group-row').append($('<td>').attr('colspan', '5').append(value.dataGroup));
                    mainTableBody.append(dataGroupRow);
                    // display the data fields associated to the data group
                    var matId1 = $('#partNum1').attr('data-value');
                    var matId2 = $('#partNum2').attr('data-value');
                    var matId3 = $('#partNum3').attr('data-value');
                    var matId4 = $('#partNum4').attr('data-value');

                    $.ajax({
                        url: contextPath + "/comparator/compGetFieldsWithValues/" +
                                value.dataGroupId + "/" +
                                matId1 + "/" +
                                matId2 + "/" +
                                matId3 + "/" +
                                matId4 + "/",
                        type: 'GET',
                        async: false,
                        success: function (data_fields, textStatus, jqXHR) {
                            $.each(data_fields, function (i, v) {
                                var dataFieldRow = $('<tr>').append($('<td>').append(v.dataField))
                                        .append($('<td>').append(v.dataFieldValueMat1))
                                        .append($('<td>').append(v.dataFieldValueMat2))
                                        .append($('<td>').append(v.dataFieldValueMat3))
                                        .append($('<td>').append(v.dataFieldValueMat4));
                                mainTableBody.append(dataFieldRow);
                            });
                        }
                    });
                }
            });
        }
    });
</script>
