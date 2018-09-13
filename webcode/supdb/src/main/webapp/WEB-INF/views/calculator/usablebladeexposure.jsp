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
        <div  class="my-3 p-3 bg-light rounded shadow-sm col-sm-2" >   
            <form id="data1" class="needs-validation" novalidate>
                <div> 
                    <h4>Enter following information </h4>
                </div> 

                <div class="form-group"  >

                    <label class="form-label" id="waf"  >Select Dicing Cut Method</label>
                    <select id="cut" class="form-control" >
                        <option value="1">Single Pass</option>
                        <option value="2">Two Pass</option>
                        <option value="3">Step Cut</option>
                    </select> 
                </div>

                <div class="form-group"  >

                    <label class="form-label" id="exposure">Blade Exposure (um)</label>

                    <input class="form-control" id="exposure1" type="number" placeholder="Input minimum blade exposure in um"  value = "">  
                </div>
                <div class="form-group ">
                    <label  class="form-label" id="thick">Wafer or Die Thickness (um)</label>

                    <input class="form-control" id="thick1" type="number" placeholder="Wafer or Die Thickness (um)" value = "">  
                </div> 
                <div class="form-group  ">
                    <label  class="form-label" id="thru">Cut Thru Die (%)</label>
                    <input class="form-control" id="thru1" type="number" placeholder="% Cut thru Die Thickness - ignore if single pass" value = ""> 

                </div>
                <div class="form-group ">
                    <label class="form-label"  id="tape">Cut Thru Dicing Tape (um)</label> 
                    <input  class="form-control" id="tape1" type="number" placeholder="Input cut thru dicing tape in um (25um default)"   value = "">

                </div>

            </form>
            <button id="compute" class="btn btn-primary" onclick="myFunction()">Compute</button>
            <button class="btn btn-secondary" onclick="Clear()">Clear</button>

        </div>  

        <div class="my-3 p-3 bg-light rounded shadow-sm col-sm-2">
            <div>
                <h4>RESULTS</h4> 
            </div>

            <form id="output1">
                <div class="form-group">
                    <label id="ube"class="form-label" >Usable Blade Exposure (um)  </label>
                    <strong>  <label id="ube1" class="form-label"  type="number" ></label>
                    </strong>
                </div>

            </form>
        </div>

        <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-8 ">
            <div>
                <h4>Related Peripheral</h4> 
            </div>
            <table id="example" class="display">


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

                var x = document.getElementById("exposure1").value;


                document.getElementById("ube1").innerHTML = use;

                if (use >= 460) {
                    createtable(dataSet450);
                } else if (use >= 330) {
                    createtable(dataSet330);
                } else {
                    createtable(dataSet168);
                }


            }
            return false;
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

        var dataSet168 = [
            ["TI Clark", "Disco", "1031138-0309", "D3500-0-110 27HCEE  ", "711.00"],
            ["TIPI", "Disco", "1031138-0309", "ZH01-SD3500-0-110-N2392  EE", "690.00"],
            ["TI Clark", "Disco", "4679155-0001", "ZH05-SD3500-N1-90-N2392 DE", "654.00"],
            ["TI Clark", "Disco", "4707335-0001", "ZH05-SD3500-N1-70 DD (HCDD)", "635.00"],
            ["TI Clark", "Disco", "4677423-0001", "ZHT-SD3000-N1-70-N2413 EE", "628.00"],
            ["TIPI", "Disco", "4698771-0001", "ZH05-SD3500-N1-90 FE03 HCFE", "618.00"],
            ["TIPI", "Disco", "4671323-0001", "ZH05-SD2000-N1-90-N2409 HEFF1073", "546.30"],
            ["TIPI", "Disco", "5150000-0529", "ZHT-2408 1040-SE 27HDDD-Z11", "516.70"],
            ["TIPI", "Disco", "5267000-0010", "ZHT-2411  104F-SE  27HDCC-Z2", "490.00"],
            ["TIPI", "Disco", "4662369-0001", "ZH05-SD3000-N1-70-A2406 CC01-C402 ", "460.00"],
            ["A/T Site", "Blade Supplier", "Supplier Part # Z1", "Blade type  Z1", "Life time Z1"],
            ["TIPI", "Disco", "4662460-0001?", "ZH05-SD4500-N1-50-N2392 HBAB2003", "220.00"],
            ["TIPI", "Disco", "4652841-0001", "ZHT-2395 204F-SE HDCC1098", "280.00"],
            ["TIPI", "Disco", "4649848-0001", "ZHT-2392 1030-SE HCDC2039", "270.80"],
            ["TIPI", "Disco", "4068802-0002", "ZHT-2392 2050 HEFE1064", "330.80"],
            ["TI Clark", "Disco", "4652841-0001", "ZHT-1722 204F-SE 27HDCC", "265.00"],
            ["CDAT", "DISCO", "4716579-0001", "ZH05-SD3500-N1-90 CC-C444", "168.00"],
            ["CDAT", "DISCO", "1031138-0309", "ZH01-SD3500-0-110-N2392", "230.00"],
            ["CDAT", "DISCO", "4679155-0001", "ZH05-SD3500-N1-90-N2392 DE", "230.00"],
            ["CDAT", "DISCO", "4679157-0001", "ZH05-SD2000-N1-50-N2392 DC", "233.00"],
            ["TIM", "Disco", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"],
            ["TIM", "Disco", "5267000-0010", "HDCC2047 - ZHT-2411 104F-SE 27HDCC-Z2", "175.00"],
            ["TIM", "Disco", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"],
            ["TIM", "Disco ", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"]

        ];
        var dataSet450 = [
            ["TI Clark", "Disco", "1031138-0309", "D3500-0-110 27HCEE  ", "711.00"],
            ["TIPI", "Disco", "1031138-0309", "ZH01-SD3500-0-110-N2392  EE", "690.00"],
            ["TI Clark", "Disco", "4679155-0001", "ZH05-SD3500-N1-90-N2392 DE", "654.00"],
            ["TI Clark", "Disco", "4707335-0001", "ZH05-SD3500-N1-70 DD (HCDD)", "635.00"],
            ["TI Clark", "Disco", "4677423-0001", "ZHT-SD3000-N1-70-N2413 EE", "628.00"],
            ["TIPI", "Disco", "4698771-0001", "ZH05-SD3500-N1-90 FE03 HCFE", "618.00"],
            ["TIPI", "Disco", "4671323-0001", "ZH05-SD2000-N1-90-N2409 HEFF1073", "546.30"],
            ["TIPI", "Disco", "5150000-0529", "ZHT-2408 1040-SE 27HDDD-Z11", "516.70"],
            ["TIPI", "Disco", "5267000-0010", "ZHT-2411  104F-SE  27HDCC-Z2", "490.00"],
            ["TIPI", "Disco", "4662369-0001", "ZH05-SD3000-N1-70-A2406 CC01-C402 ", "460.00"],
            ["TIPI", "Disco", "4068802-0002", "ZHT-2392 2050 HEFE1064", "330.80"],
            ["TIM", "Disco", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"],
            ["TIM", "Disco", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"],
            ["TIM", "Disco ", "1031138-0309", "HCEE2027 - ZH01-SD3500-O-110-N2392", "350.00"]

        ];
        
         var dataSet330 = [
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
        $('#example').DataTable({
            data: dataSet330,
            columns: [
                {title: "A/T Site"},
                {title: "Supplier"},
                {title: "Supplier Part#"},
                {title: "Blade Type"},
                {title: "Life Time"}
            ]
        });
        function createtable(dsvale) {

            $('#example').DataTable().clear();
            $('#example').DataTable().destroy();
            $('#example').DataTable({
                data: dsvale
            });
        }
    </script>

</div>
