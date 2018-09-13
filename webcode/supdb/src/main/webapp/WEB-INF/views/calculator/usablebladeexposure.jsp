<%-- 
    Document   : diesperwafer
    Created on : Aug 30, 2018, 1:13:01 PM
    Author     : a0282565
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<div class="container-fluid"  style="padding-left: 50px; padding-right: 50px;" >


    <div class="text-center col-md-12">
        <h5>Pre bond Applications</h5>
        <h1>Usable Blade Exposure Calculator</h1>
    </div>
    <div class="row">
        <div  class="my-3 p-3 bg-white rounded shadow-sm col-sm-2" >   
            <form id="data1" class="needs-validation" novalidate>
                <div> 
                    <h4>Enter following information </h4>
                </div> 

                <div class="form-group"  >

                    <label id="waf"  >Select Dicing Cut Method</label>
                    <select id="cut">
                        <option value="1">Single Pass</option>
                        <option value="2">Two Pass</option>
                        <option value="3">Step Cut</option>
                    </select><br>
                </div>

                <div class="form-group"  >

                    <label id="exposure">Blade Exposure (um)</label>

                    <input id="exposure1" type="number" placeholder="Input minimum blade exposure in um"  value = "">  
                </div>
                <div class="form-group ">
                    <label  id="thick">Wafer or Die Thickness (um)</label>

                    <input id="thick1" type="number" placeholder="Wafer or Die Thickness (um)" value = "">  
                </div> 
                <div class="form-group  ">
                    <label  id="thru">Cut Thru Die (%)</label>
                    <input id="thru1" type="number" placeholder="% Cut thru Die Thickness - ignore if single pass" value = ""> 

                </div>
                <div class="form-group ">
                    <label  id="tape">Cut Thru Dicing Tape (um)</label> 
                    <input  id="tape1" type="number" placeholder="Input cut thru dicing tape in um (25um default)"   value = "">

                </div>

            </form>
            <button id="compute" class="btn btn-primary" onclick="myFunction()">Compute</button>
            <button class="btn btn-secondary" onclick="Clear()">Clear</button>

        </div>  

        <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-2">
            <div>
                <h4>RESULTS</h4> 
            </div>

            <form id="output1">
                <div class="form-group">
                    <label id="ube">Usable Blade Exposure (um)  </label>
                    <label id="ube1" type="number" ></label>
                </div>

            </form>
        </div>

        <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-8 ">
            <div>
                <h4>Related Peripheral</h4> 
            </div>
            <table id="bladeresult" class="display">

             
            </table>
        </div>
    </div>



    <script type="text/javascript">
        function myFunction() {

            var x = document.getElementById("exposure1").value;
            var y = document.getElementById("thick1").value;
            var z = document.getElementById("thru1").value;
            var t = document.getElementById("tape1").value;
            var use = "";


            if ((isEmpty(x)) || (isEmpty(y)) || (isEmpty(z)) || (isEmpty(t))) {
                alert("Kindly fill up the parameters.");
            } else {
                if (document.getElementById("cut").value == "1")
                {
                    use = x - y - t - 25;


                } else if (document.getElementById("cut").value == "2")
                {
                    if (z == 0) {
                        var z = 100;
                    } else if (z == "") {
                        var z = 100;
                    } else if (z >= 100) {
                        var z = 100;
                    }

                    use = +x - ((+z / 100) * +y) - +t - 25;

                } else if (document.getElementById("cut").value == "3")
                {
                    if (z == 0) {
                        var z = 100;
                    } else if (z == "") {
                        var z = 100;
                    } else if (z >= 100) {
                        var z = 100;
                    }

                    use = +x - ((+z / 100) * +y) - +t - 25;

                }

                document.getElementById("ube1").innerHTML = use;


            }

        }

        function Clear() {
            document.getElementById("data1").reset();
            document.getElementById("ube1").innerHTML = "";

        }

        function isEmpty(value) {
            if (!value) {
                return true;
            }
            return false;
        }
        var dataSet = [
            ["TI Clark", "Disco", "1031138-0309", "D3500-0-110 27HCEE  ", "711.00"],
            ["TIPI", "Disco", "1031138-0309", "ZH01-SD3500-0-110-N2392  EE", "690.00"],
            ["TI Clark", "Disco", "4679155-0001", "ZH05-SD3500-N1-90-N2392 DE", "654.00"],
            ["TI Clark", "Disco", "4707335-0001", "ZH05-SD3500-N1-70 DD (HCDD)", "635.00"],
            ["TI Clark", "Disco", "4677423-0001", "ZHT-SD3000-N1-70-N2413 EE", "628.00"],
            ["TIPI", "Disco", "4698771-0001", "ZH05-SD3500-N1-90 FE03 HCFE", "618.00"],
            ["TIPI", "Disco", "4671323-0001", "ZH05-SD2000-N1-90-N2409 HEFF1073", "546.30"],
            ["TIPI", "Disco", "5150000-0529", "ZHT-2408 1040-SE 27HDDD-Z11", "516.70"],
            ["TIPI", "Disco", "5267000-0010", "ZHT-2411  104F-SE  27HDCC-Z2", "490.00"],
            ["TIPI", "Disco", "4662369-0001", "ZH05-SD3000-N1-70-A2406 CC01-C402 ", "460.00"]
        ];
/*
        function createtable() {
            document.getElementById('#bladeresult').DataTable({
                data: dataSet,
                columns: [
                    {title: "Name"},
                    {title: "Position"},
                    {title: "Office"},
                    {title: "Extn."},
                    {title: "Start date"},
                    {title: "Salary"}
                ]
            });
        }
        ;
*/
        $(document).ready(function () {
            $('#bladeresult').DataTable({
                data: dataSet,
                columns: [
                    {title: "Name"},
                    {title: "Position"},
                    {title: "Office"},
                    {title: "Extn."},
                    {title: "Start date"},
                    {title: "Salary"}
                ]
            });
        });
 <script src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
          <script src="https://code.jquery.com/jquery-3.3.1.js">

    </script>
</div>
