<%-- 
    Document   : viewall
    Created on : Sep 12, 2018, 9:54:12 AM
    Author     : a0284748


 <link rel="stylesheet" href="css/tabulator.min.css">
        <script type="text/javascript" src="js/tabulator.min.js"></script>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="css/tabulator.min.css">
        <script type="text/javascript" src="js/tabulator.min.js"></script>

        <title>Peripheral</title>
    </head>
    <body>
        <br>
        <div>
            <div height="150px"> <div class="btn-group" role="group" aria-label="Basic example">
                    <button type="button" id="download-csv" class="btn btn-secondary">Download</button>
                    <button type="button" class="btn btn-secondary" id="clear" >Clear Filter</button>
                    <button type="button" class="btn btn-secondary">Save Changes</button>
                    <button type="button" id="history-undo" class="btn btn-secondary">Reset Changes</button>
                </div></div>
            <br>

            <div id="example-table"></div>
        </div>

        <script>

            $(document).ready(function () {

                $("#clear").click(function () {
                    $("#example-table").tabulator("clearFilter");
                    $("#example-table").tabulator("clearHeaderFilter");
                    $('.tabulator-header-filter').find(':input').val('');
                    console.log("clear again");
                    $("#example-table").tabulator("redraw");
                });

                $("#download-xlsx").click(function () {
                    $("#example-table").tabulator("download", "xlsx", "data.xlsx");
                });

                $("#download-csv").click(function () {
                    $("#example-table").tabulator("download", "csv", "data.csv");
                });

                //undo button
                $("#history-undo").on("click", function () {
                    $("#example-table").tabulator("undo");
                });


                $('.tabulator-header-filter').find(':input').val('');


                //custom max min header filter
                var minMaxFilterEditor = function (cell, onRendered, success, cancel, editorParams) {

                    var container = $("<span></span>")

                    //create and style inputs
                    var start = $("<input type='number' placeholder='Min' min='0' max='100'/>");
                    var end = $("<input type='number' placeholder='Max' min='0' max='100'/>");

                    container.append(start).append(end);

                    var inputs = $("input", container);

                    inputs.css({
                        "padding": "4px",
                        "width": "50%",
                        "box-sizing": "border-box",
                    })
                            .val(cell.getValue());

                    function buildValues() {
                        return {
                            start: start.val(),
                            end: end.val(),
                        };
                    }

                    //submit new value on blur
                    inputs.on("change blur", function (e) {
                        success(buildValues());
                    });

                    //submit new value on enter
                    inputs.on("keydown", function (e) {
                        if (e.keyCode == 13) {
                            success(buildValues());
                        }

                        if (e.keyCode == 27) {
                            cancel();
                        }
                    });

                    return container;
                }

//custom max min filter function
                function minMaxFilterFunction(headerValue, rowValue, rowData, filterParams) {
                    //headerValue - the value of the header filter element
                    //rowValue - the value of the column in this row
                    //rowData - the data for the row being filtered
                    //filterParams - params object passed to the headerFilterFuncParams property

                    if (rowValue) {
                        if (headerValue.start != "") {
                            if (headerValue.end != "") {
                                return rowValue >= headerValue.start && rowValue <= headerValue.end;
                            } else {
                                return rowValue >= headerValue.start;
                            }
                        } else {
                            if (headerValue.end != "") {
                                return rowValue <= headerValue.end;
                            }
                        }
                    }

                    return false; //must return a boolean, true if it passes the filter.
                }


                $("#example-table").tabulator({
                    columnVertAlign: "bottom", //align header contents to bottom of cell
                    height: "600px",
                    layout: "fitColumns",
                    history: true,
                    columns: [
                        {//create column group
                            title: "General Information", align: "center",
                            columns: [
                                {title: "View", field: "view", formatter: "link", align: "center", width: 60},
                                {title: "Rating", headerFilter: minMaxFilterEditor, headerFilterFunc: minMaxFilterFunction, field: "rating", formatter: "star", align: "center", width: 100},
                                {title: "Active PN", field: "active", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "SITE", field: "site", align: "right", editor: "input", headerFilter: "input", width: "70"},
                                {title: "Wire Type", field: "wiretype", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "Wire Size (mil)", field: "wiresize", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "Wire App", field: "wireapp", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "Description", field: "description", align: "center", editor: "input", headerFilter: "input", width: "110"},
                                {title: "SUPPLIER", field: "supplier", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "U Price", headerFilter: minMaxFilterEditor, headerFilterFunc: minMaxFilterFunction, field: "price", align: "center", sorter: "number", editor: "input", width: "100"},
                                {title: "Bond Pad", field: "bondpad", align: "center", editor: "input", headerFilter: "input", width: "90"},
                                {title: "BPP", field: "bpp", align: "center", editor: "input", headerFilter: "input", width: "70"},
                                {title: "BPO", field: "bpo", align: "center", editor: "input", headerFilter: "input", width: "70"},
                            ],
                        },
                        {//create column group
                            title: "Technical Details", align: "center",
                            columns: [
                                {title: "T", field: "tdata", editor: "input", headerFilter: "input", width: "60"},
                                {title: "CD", field: "cd", editor: "input", headerFilter: "input", width: "60"},
                                {title: "CA", field: "ca", align: "center", editor: "input", headerFilter: "input", width: "60"},
                                {title: "ICA", field: "ica", editor: "input", headerFilter: "input", width: "60"},
                                {title: "H", field: "hdata", headerFilter: "input", width: "60"},
                                {title: "FA", field: "fa", headerFilter: "input", width: "60"},
                                {title: "OR", field: "or", headerFilter: "input", width: "60"},
                                {title: "BNA/Conn Angle", field: "bna", headerFilter: "input", width: "100"},
                                {title: "BNK-Ht", field: "bnk", headerFilter: "input", width: "100"},
                            ],
                        },
                        {//create column group
                            title: "Process Details",
                            columns: [

                                {title: "Smallest Ball Size", field: "smallest", headerFilter: "input", width: "100"},
                                {title: "Bonder Platform", field: "bonder", headerFilter: "input", width: "60"},
                                {title: "Package/Application/Device", field: "package", align: "center", headerFilter: "input", width: "60"},
                                {title: "STD L/F (MAX)", field: "stdmax", align: "center", sorter: "number", headerFilter: "input", width: "60"},
                                {title: "STD L/F (ACTUAL)", field: "stdactual", align: "center", headerFilter: "input", width: "60"},
                                {title: "ROUGHENED  L/F (MAX)", field: "roughmax", align: "center", headerFilter: "input", width: "60"},
                                {title: "ROUGHENED  L/F (ACTUAL)", field: "roughactual", align: "center", sorter: "number", headerFilter: "input", width: "60"},
                                {title: "$/MTD PPF", field: "mtdppf", align: "center", headerFilter: "input", width: "60"},
                                {title: "$/MTD RLF", field: "mtdrlf", align: "center", headerFilter: "input", width: "60"},
                                {title: "Clean/Rejuv?", field: "clean", align: "center", headerFilter: "input", width: "60"},
                                {title: "Rework/Refresh", field: "rework", align: "center", sorter: "string", headerFilter: "input", width: "60"},
                                {title: "Dual Source?", field: "dual", align: "center", sorter: "string", headerFilter: "input", width: "60"},
                                {title: "Remarks", field: "remarks", align: "center", sorter: "string", headerFilter: "input", width: "60"},
                            ],
                        },
                    ],
                    dataLoaded: function (data) { //freeze first row on data load
                        var firstRow = $("#example-table-frozen-row").tabulator("getRows")[0];

                        if (firstRow) {
                            firstRow.freeze();
                        }
                    }
                });
                var sampleData = [{view: "view", rating: 4, site: 'TMEX', wiretype: 'Au', wiresize: '0.96', wireapp: 'Au', active: '4669055-0001', description: 'B0911-51-19-08 (11-70-20-L-P)', supplier: 'PECO', price: '2.23', bondpad: 'BOAC/Al', bpo: '>75um', bpp: '>90um', tdata: '129.54', cd: '48.25', ca: '70', ica: '', hdata: '28', fa: '11', or: '20', bna: '10', bnk: '330', smallest: '', bonder: 'KNS', package: 'SOIC/PDIP', stdmax: '2500', stdactual: '2500', roughmax: '', roughactual: '', mtdppf: '0.892', mtdrlf: '', clean: 'NO', rework: 'NO', dual: 'NO', remarks: ''},
                    {view: "view", rating: 4, site: 'CDAT', wiretype: 'Cu', wiresize: '0.96', wireapp: 'Cu/PCC', active: '4703876-0001', description: 'SU-30110-4651F-RU36TS-Y ', supplier: 'SPT  ', price: '5.9', bondpad: 'BOAC/Al/DCu', bpo: '65', bpp: '80', tdata: '110', cd: '46', ca: '90', ica: '50', hdata: '30', fa: '11', or: '20', bna: '10', bnk: '275', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '3.93333333333333', mtdrlf: '0.00295', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 3, site: 'CDAT', wiretype: 'Cu', wiresize: '0.96', wireapp: 'Cu', active: '4717215-0001', description: 'SU-30100-4651F-RU36TS-Y', supplier: 'SPT  ', price: '7.3', bondpad: 'Al', bpo: '65', bpp: '70', tdata: '100', cd: '46', ca: '90', ica: '50', hdata: '30', fa: '11', or: '12', bna: '10', bnk: '275', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '4.86666666666667', mtdrlf: '0.00365', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 2, site: 'CDAT', wiretype: 'Cu', wiresize: '1.3', wireapp: 'Cu', active: '4703877-0001', description: 'SU-41110-5351F-RU36TS-Y', supplier: 'SPT  ', price: '6.7', bondpad: 'BOAC/Dcu', bpo: '72', bpp: '80', tdata: '110', cd: '53', ca: '90', ica: '50', hdata: '41', fa: '11', or: '20', bna: '10', bnk: '275', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '4.46666666666667', mtdrlf: '0.00335', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 5, site: 'CDAT', wiretype: 'Cu', wiresize: '2', wireapp: 'Cu', active: '4706712-0001', description: 'SU-64180-8681F-RU34-Y', supplier: 'SPT  ', price: '6.25', bondpad: 'BOAC', bpo: '90', bpp: '160', tdata: '180', cd: '86', ca: '120', ica: '50', hdata: '64', fa: '11', or: '38', bna: '-', bnk: '-', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '4.16666666666667', mtdrlf: '0.003125', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 3, site: 'CDAT', wiretype: 'Cu', wiresize: '2', wireapp: 'Cu', active: '4717214-0001', description: 'SU-64165-8681F-RU34-Y', supplier: 'SPT  ', price: '7.25', bondpad: 'BOAC', bpo: '90', bpp: '145', tdata: '165', cd: '86', ca: '120', ica: '50', hdata: '64', fa: '11', or: '38', bna: '-', bnk: '-', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '4.83333333333333', mtdrlf: '0.003625', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 4, site: 'CDAT', wiretype: 'Cu', wiresize: '0.8', wireapp: 'PCC', active: '4698709-0001', description: 'SU-24080-3881E-ZU36TS-Y', supplier: 'SPT  ', price: '6.75', bondpad: 'Al', bpo: '55', bpp: '60', tdata: '80', cd: '38', ca: '120', ica: '50', hdata: '24', fa: '8', or: '12', bna: '30', bnk: '200', smallest: '-', bonder: 'Connx Plus LA', package: 'W/VQFN', stdmax: '1750', stdactual: '1500', roughmax: '1250', roughactual: '2000', mtdppf: '4.5', mtdrlf: '0.003375', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 4, site: 'TIM', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4676667-0001', description: 'N0912-51-18-08(11-70-20-L-P)', supplier: 'PECO', price: '2.23', bondpad: 'Al, BOAC, DCu', bpo: '', bpp: '', tdata: '130±3.8', cd: '46±2.5', ca: '70±5', ica: '', hdata: '30±2.5', fa: '11±1', or: '20', bna: '20', bnk: '275', smallest: '', bonder: 'KnS', package: 'TSSOP', stdmax: '2600', stdactual: '2000', roughmax: '', roughactual: '800', mtdppf: '1.115', mtdrlf: '0.0027875', clean: 'No', rework: 'No', dual: 'No', remarks: 'Roadmap'},
                    {view: "view", rating: 2, site: 'TITL', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4205857-0001', description: 'B1012-40-17-08  (11-90-20-L-P-10/08)', supplier: 'PECO', price: '2.92', bondpad: 'All', bpo: 'N/A', bpp: '10', tdata: '101', cd: '43', ca: '90', ica: '', hdata: '30', fa: '11', or: '20', bna: '', bnk: '', smallest: '', bonder: 'All', package: 'All', stdmax: '1500', stdactual: '1500', roughmax: '', roughactual: '', mtdppf: '1.94666666666667', mtdrlf: '', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 5, site: 'TITL', wiretype: 'Au', wiresize: '0.96', wireapp: 'Au', active: '4707658-0001', description: 'iCap 4D8FE-3497-I30', supplier: 'KNS', price: '6.2', bondpad: 'All', bpo: 'N/A', bpp: '30', tdata: '81.28', cd: '38.1', ca: '30', ica: '70', hdata: '30.38', fa: '11', or: '12.7', bna: '', bnk: '203', smallest: '', bonder: 'All', package: 'All', stdmax: '3000', stdactual: '3000', roughmax: '', roughactual: '', mtdppf: '2.06666666666667', mtdrlf: '', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 3, site: 'TITL', wiretype: 'Au', wiresize: '0.96', wireapp: 'Au', active: '4206529-0001', description: '414CE-2625-R33 MICRO', supplier: 'KNS', price: '5.7', bondpad: 'All', bpo: 'N/A', bpp: '10', tdata: '84', cd: '39', ca: '', ica: '', hdata: '28', fa: '11', or: '30', bna: '', bnk: '', smallest: '', bonder: 'All', package: 'All', stdmax: '2500', stdactual: '2500', roughmax: '', roughactual: '', mtdppf: '2.28', mtdrlf: '', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 4, site: 'TIM', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '1031711-0226', description: 'SBNS80-33FP-C-1/16-XL', supplier: 'SPT', price: '3.23', bondpad: 'Al ', bpo: '', bpp: '', tdata: '140', cd: '53', ca: '80', ica: '', hdata: '33', fa: '8', or: '30', bna: '20', bnk: '275', smallest: '', bonder: 'KnS', package: 'ALL', stdmax: '', stdactual: '2000', roughmax: '', roughactual: '500', mtdppf: '1.615', mtdrlf: '0.00646', clean: 'No', rework: 'No', dual: 'NO', remarks: 'Planned for depletion 2019'},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Au', wiresize: '1.3', wireapp: 'Au', active: '4204625-0001', description: 'SBNS-41BD-AZ-1/16-XL-Y', supplier: 'SPT  ', price: '6.1', bondpad: 'Al/BOAC', bpo: '65', bpp: '70', tdata: '100', cd: '51', ca: '90', ica: '', hdata: '41', fa: '8', or: '12', bna: '10', bnk: '275', smallest: '', bonder: 'SKW', package: 'BGA', stdmax: '', stdactual: '', roughmax: '300', roughactual: '300', mtdppf: '', mtdrlf: '0.0203333333333333', clean: 'No', rework: 'No', dual: '', remarks: ''},
                    {view: "view", rating: 4, site: 'TIPI', wiretype: 'Cu', wiresize: '', wireapp: 'Cu', active: '4681883-0001', description: 'TI-CU-50-20-A-Y', supplier: 'SPT  ', price: '9.8', bondpad: 'Al', bpo: '45', bpp: '50', tdata: '', cd: '', ca: '', ica: '', hdata: '', fa: '', or: '', bna: '', bnk: '', smallest: '', bonder: '', package: '', stdmax: '750', stdactual: '750', roughmax: '', roughactual: '', mtdppf: '13.0666666666667', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: ''},
                    {view: "view", rating: 1, site: 'TIPI', wiretype: 'Cu', wiresize: '0.8', wireapp: 'PCC/Bare Cu', active: '4704082-0001', description: 'SU-25075-3681E08-RU34TP-Y', supplier: 'SPT  ', price: '6.51', bondpad: 'Al/BOAC', bpo: '55', bpp: '60', tdata: '75', cd: '36', ca: '50/120', ica: '', hdata: '25', fa: '8', or: '8', bna: '10', bnk: '200', smallest: '', bonder: 'SKW/KnS', package: 'BGA/QFP', stdmax: '1000', stdactual: '1000', roughmax: '500', roughactual: '500', mtdppf: '6.51', mtdrlf: '0.01302', clean: 'No', rework: 'Yes', dual: 'PECO B0810-30-14-03 (TI P/N 4698512-0001)', remarks: ''},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Cu', wiresize: '0.8', wireapp: 'Cu', active: '4698512-0001', description: 'B0810-30-14-03', supplier: 'PECO', price: '5.2', bondpad: 'Al', bpo: '55', bpp: '60', tdata: '76', cd: '35', ca: '50/120', ica: '', hdata: '25', fa: '8', or: '7.62', bna: '10', bnk: '200', smallest: '', bonder: 'SKW', package: 'BGA/QFP', stdmax: '1000', stdactual: '1000', roughmax: '', roughactual: '', mtdppf: '5.2', mtdrlf: '', clean: 'No', rework: 'Yes', dual: 'SPT SU-25075-3681E08-RU34TP-Y (TI P/N 4704082-0001)', remarks: 'For Depletion '},
                    {view: "view", rating: 4, site: 'TIPI', wiretype: 'Cu', wiresize: '0.96', wireapp: 'Cu', active: '4689292-0001', description: 'SU-33110-4681E-ZU36TS-Y', supplier: 'SPT  ', price: '5.5', bondpad: 'Al/BOAC', bpo: '65', bpp: '80', tdata: '110', cd: '46', ca: '90', ica: '', hdata: '33', fa: '8', or: '20', bna: '10', bnk: '275', smallest: '', bonder: 'SKW/KnS', package: 'QFP', stdmax: '1500', stdactual: '1500', roughmax: '', roughactual: '', mtdppf: '3.66666666666667', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: 'For Depletion'},
                    {view: "view", rating: 4, site: 'TIPI', wiretype: 'Cu', wiresize: '0.96', wireapp: 'Cu', active: '4692951-0001', description: 'SU-30080-433F08-ZU34TP-Y', supplier: 'SPT  ', price: '7.4', bondpad: 'Al/DCU', bpo: '60', bpp: '65', tdata: '80', cd: '43', ca: '70', ica: '', hdata: '30', fa: '11', or: '8', bna: '10', bnk: '200', smallest: '', bonder: 'SKW/KnS', package: 'BGA/QFP', stdmax: '800', stdactual: '800', roughmax: '', roughactual: '', mtdppf: '9.25', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: 'For Depletion'},
                    {view: "view", rating: 3, site: 'TIPI', wiretype: 'Cu', wiresize: '1.3', wireapp: 'Cu', active: '4689289-0001', description: 'SU-41140-5381E-ZU36TS-Y', supplier: 'SPT  ', price: '5.4', bondpad: 'BOAC/DCU', bpo: '70', bpp: '100', tdata: '140', cd: '53', ca: '90', ica: '', hdata: '41', fa: '11', or: '30', bna: '10', bnk: '275', smallest: '', bonder: 'KnS', package: 'QFP', stdmax: '900', stdactual: '900', roughmax: '', roughactual: '', mtdppf: '6', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: 'For Depletion'},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Cu', wiresize: '1.3', wireapp: 'Cu', active: '4689289-0002', description: 'SU-41140-5381E-RU36TS-Y', supplier: 'SPT  ', price: '7.5', bondpad: 'BOAC/DCU', bpo: '70', bpp: '100', tdata: '140', cd: '53', ca: '90', ica: '', hdata: '41', fa: '11', or: '30', bna: '10', bnk: '275', smallest: '', bonder: 'KnS', package: 'QFP', stdmax: '900', stdactual: '900', roughmax: '', roughactual: '', mtdppf: '8.33333333333333', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: ''},
                    {view: "view", rating: 3, site: 'TIPI', wiretype: 'Cu', wiresize: '2', wireapp: 'Cu', active: '4679027-0001', description: 'SU-64180-8681F-ZU34-Y', supplier: 'SPT  ', price: '4.6', bondpad: 'BOAC', bpo: '115', bpp: '135', tdata: '180', cd: '86', ca: '50/120', ica: '', hdata: '64', fa: '11', or: '38', bna: '10', bnk: 'n/a', smallest: '', bonder: 'KnS', package: 'QFP', stdmax: '1000', stdactual: '1000', roughmax: '', roughactual: '', mtdppf: '4.6', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: 'For Depletion'},
                    {view: "view", rating: 4, site: 'TIPI', wiretype: 'Cu', wiresize: '2', wireapp: 'PCC/Cu', active: '4679027-0002', description: ' SU-64180-8681F-RU34-Y', supplier: 'SPT  ', price: '7', bondpad: 'BOAC', bpo: '115', bpp: '135', tdata: '180', cd: '86', ca: '50/120', ica: '', hdata: '64', fa: '11', or: '38', bna: '10', bnk: 'n/a', smallest: '', bonder: 'KnS', package: 'QFP', stdmax: '1000', stdactual: '1000', roughmax: '', roughactual: '', mtdppf: '7', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: ''},
                    {view: "view", rating: 5, site: 'TICL', wiretype: 'Au', wiresize: '0.96', wireapp: 'Au', active: '4705417-0001', description: 'SBN-30080-383E-ZP36T-Y', supplier: 'SPT  ', price: '5.59', bondpad: 'BOAC/Al/DCu', bpo: '55', bpp: '62', tdata: '80 ±3', cd: '38 +2/-0', ca: '70° ±5°', ica: 'NA', hdata: '30 ±1', fa: '8° ±1°', or: '12 ±3', bna: '10° ±1°', bnk: '200 +30/-0', smallest: '42-52um', bonder: 'ASM &KNS', package: 'STANDARD QFN', stdmax: '2500', stdactual: '2500', roughmax: '1500', roughactual: '1500', mtdppf: '2.236', mtdrlf: '0.00372666666666667', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Cu', wiresize: '0.96', wireapp: 'PCC/Cu', active: '4703876-0001', description: 'SU-30110-4651F-RU36TS-Y', supplier: 'SPT  ', price: '6.41', bondpad: 'Al/BOAC', bpo: '65', bpp: '75', tdata: '110', cd: '46', ca: '90', ica: '50', hdata: '30', fa: '11', or: '20', bna: '10', bnk: '275', smallest: '', bonder: 'SKW/KnS', package: 'BGA/QFP', stdmax: '1000', stdactual: '1000', roughmax: '', roughactual: '', mtdppf: '6.41', mtdrlf: '', clean: 'No', rework: 'Yes', dual: '', remarks: ''},
                    {view: "view", rating: 5, site: 'TIM', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4056078-0001', description: 'SBNS80-30XR-CM-1/16-XL', supplier: 'SPT', price: '3.65', bondpad: 'Al ', bpo: '', bpp: '', tdata: '115±5', cd: '43±2', ca: '80', ica: '', hdata: '30±2/1', fa: '8±1', or: '20±5', bna: '20±2', bnk: '275', smallest: '', bonder: 'KnS', package: 'ALL except QFN', stdmax: '', stdactual: '2000', roughmax: '', roughactual: '500', mtdppf: '1.825', mtdrlf: '0.0073', clean: 'No', rework: 'No', dual: 'NO', remarks: 'Planned for depletion 2019'},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Cu', wiresize: '0.7', wireapp: 'PCC', active: '4719880-0001', description: 'TC-09-XLMBN20DZP39A8', supplier: 'TOTO', price: '7', bondpad: 'Al', bpo: '45', bpp: '50', tdata: '56', cd: '28', ca: '70', ica: '', hdata: '22', fa: '11', or: '8', bna: '10', bnk: '150', smallest: '', bonder: 'SKW', package: 'BGA', stdmax: '700', stdactual: '700', roughmax: '', roughactual: '', mtdppf: '10', mtdrlf: '', clean: 'No', rework: 'No', dual: '', remarks: 'For Depletion '},
                    {view: "view", rating: 5, site: 'CDAT', wiretype: 'Au', wiresize: '0.8', wireapp: 'Au', active: '4705416-0001', description: 'SBN-28080-3881E-ZP36T-Y', supplier: 'SPT  ', price: '6.2', bondpad: 'Al', bpo: '55', bpp: '60', tdata: '80', cd: '38', ca: '120', ica: '50', hdata: '28', fa: '8', or: '12', bna: '10', bnk: '275', smallest: '-', bonder: 'Connx Plus LA', package: 'X2QFN', stdmax: '', stdactual: '', roughmax: '2500', roughactual: '2000', mtdppf: '', mtdrlf: '0.0031', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 5, site: 'TIPI', wiretype: 'Cu', wiresize: '0.7', wireapp: 'PCC', active: '4730616-0001', description: ' SU-22056-283F-RU34TF-250', supplier: 'SPT  ', price: '4.8', bondpad: 'Al', bpo: '45', bpp: '50', tdata: '56', cd: '28', ca: '70', ica: '', hdata: '22', fa: '11', or: '8', bna: '10', bnk: '250', smallest: '', bonder: 'SKW', package: 'BGA', stdmax: '700', stdactual: '700', roughmax: '', roughactual: '', mtdppf: '6.85714285714286', mtdrlf: '', clean: 'No', rework: 'No', dual: '', remarks: ''},
                    {view: "view", rating: 5, site: 'TITL', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4206160-0001', description: 'SBNE65-30ZQ-AZ-1/16-XL-Y 50MTA', supplier: 'SPT  ', price: '3.75', bondpad: 'All', bpo: 'N/A', bpp: '65', tdata: '80', cd: '38', ca: '65', ica: '', hdata: '30', fa: '11', or: '15', bna: '', bnk: '175', smallest: '', bonder: 'All', package: 'All', stdmax: '1200', stdactual: '1200', roughmax: '1200', roughactual: '1200', mtdppf: '3.125', mtdrlf: '0.003125', clean: 'No', rework: 'No', dual: 'No', remarks: ''},
                    {view: "view", rating: 5, site: 'TIM', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4671267-0001', description: '414FE-2063-R35', supplier: 'KNS', price: '4.7', bondpad: 'Al ', bpo: '', bpp: '', tdata: '83.82', cd: '35.56', ca: '90', ica: '', hdata: '30.48', fa: '11', or: '12.7', bna: '10', bnk: '203.2', smallest: '', bonder: 'KnS', package: 'QFN', stdmax: '', stdactual: '1500', roughmax: '', roughactual: '', mtdppf: '3.13333333333333', mtdrlf: '', clean: 'No', rework: 'No', dual: 'NO', remarks: 'Planned for depletion 2019'},
                    {view: "view", rating: 5, site: 'TIM', wiretype: 'Au', wiresize: '0.8-0.96', wireapp: 'Au', active: '4671268-0001', description: 'SBNE65-30ZQ-AZ-1/16-XL-Y', supplier: 'SPT', price: '4', bondpad: 'Al ', bpo: '', bpp: '', tdata: '80±3', cd: '38±2/1', ca: '65', ica: '', hdata: '30±1', fa: '11±1', or: '12±3', bna: '10±1', bnk: '200', smallest: '', bonder: 'KnS', package: 'ALL', stdmax: '', stdactual: '2000', roughmax: '', roughactual: '500', mtdppf: '2', mtdrlf: '0.008', clean: 'No', rework: 'No', dual: 'NO', remarks: 'Roadmap'},
                    {view: "view", rating: 5, site: 'TICL', wiretype: 'Au', wiresize: '1.3', wireapp: 'Au', active: '4705418-0001', description: 'SBN-41110-5381E-ZP36T-Y', supplier: 'SPT  ', price: '4.95', bondpad: 'BOAC/Al/DCu', bpo: '71', bpp: '85', tdata: '110 ±3', cd: '53 ±2', ca: '120° ±5°', ica: '50° ±5°', hdata: '41 +2/-1', fa: '8° ±1°', or: '20 ±5', bna: '10° ±1°', bnk: '275 ±25', smallest: '58-78um', bonder: 'ASM &KNS', package: 'STANDARD QFN', stdmax: '2500', stdactual: '2500', roughmax: '1500', roughactual: '1500', mtdppf: '1.98', mtdrlf: '0.0033', clean: 'No', rework: 'No', dual: 'No', remarks: ''}
                ];
                $("#example-table").tabulator("setData", sampleData);


                //BLADE - for future
                $("#blade-table").tabulator({
                    columnVertAlign: "bottom", //align header contents to bottom of cell
                    height: "600px",
                    layout: "fitColumns",
                    history: true,
                    columns: [
                        {//create column group
                            title: "General Information", align: "center",
                            columns: [
                                {title: "View", field: "view", formatter: "link", align: "center", width: 60},
                                {title: "Rating", headerFilter: minMaxFilterEditor, headerFilterFunc: minMaxFilterFunction, field: "rating", formatter: "star", align: "center", width: 100},
                                {title: "Supplier PN", field: "supn", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "Supplier PN2", field: "supn2", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "SITE", field: "site", align: "right", editor: "input", headerFilter: "input", width: "70"},
                                {title: "Blade Type Z1", field: "bladetypez1", align: "center", editor: "input", headerFilter: "input", width: "100"},
                                {title: "Blade Type Z2", field: "bladetypez2", align: "center", editor: "input", headerFilter: "input", width: "100"}
                            ],
                        },
                        {//create column group
                            title: "Commodity Specific Application Characteristics ", align: "center",
                            columns: [
                                {title: "Equipment Used", field: "equipment", editor: "input", headerFilter: "input", width: "60"},
                                {title: "Cut Type", field: "cuttype", editor: "input", headerFilter: "input", width: "60"},
                                {title: "Package Application", field: "package", align: "center", editor: "input", headerFilter: "input", width: "60"},
                                {title: "Silicon Node Application", field: "silicon", editor: "input", headerFilter: "input", width: "60"},
                                {title: "Minimum scribe width", field: "width", headerFilter: "input", width: "60"},
                                {title: "Maximum wafer thickness", field: "thickness", headerFilter: "input", width: "60"},
                                {title: "Dresser board application", field: "dresser", headerFilter: "input", width: "60"},                            
                            ],
                        },
                        {//create column group
                            title: "Material Properties",
                            columns: [

                                {title: "Diamater", field: "diameter", headerFilter: "input", width: "100"},
                                {title: "Grit Size Z1", field: "gsize1", headerFilter: "input", width: "60"},
                                {title: "Grit Size Z2", field: "gsize2", align: "center", headerFilter: "input", width: "60"},
                                {title: "Concentration Z1", field: "conz1", align: "center", sorter: "number", headerFilter: "input", width: "60"},
                                {title: "Concentration Z2", field: "conz2", align: "center", headerFilter: "input", width: "60"},
                                {title: "Dressing freq.", field: "dressing", align: "center", headerFilter: "input", width: "60"},
                                {title: "Life time Z1", field: "ltimez1", align: "center", sorter: "number", headerFilter: "input", width: "60"},
                                {title: "Life time Z2", field: "ltimez2", align: "center", headerFilter: "input", width: "60"},
                            ],
                        },
                        {//create column group
                            title: "Process Parameters",
                            columns: [
                                {title: "Feedrate/sec", field: "feedrate", headerFilter: "input", width: "100"},
                                {title: "RPM Z1", field: "rpmz1", headerFilter: "input", width: "60"},
                                {title: "RPM Z2", field: "rpmz2", align: "center", headerFilter: "input", width: "60"},
                                {title: "Z1 Cut Height", field: "z1cut", align: "center", sorter: "number", headerFilter: "input", width: "60"},
                                {title: "Z2 Cut Height", field: "z2cut", align: "center", headerFilter: "input", width: "60"}
                            ],
                        },
                        {title: "General Information", align: "center"},
                    ],
                    dataLoaded: function (data) { //freeze first row on data load
                        var firstRow = $("#blade-table-frozen-row").tabulator("getRows")[0];

                        if (firstRow) {
                            firstRow.freeze();
                        }
                    }
                });
            });

        </script>
    </body>
</html>