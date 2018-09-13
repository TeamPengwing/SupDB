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

    <div class=" text-center col-md-12 "  >
        <h5>Pre bond Applications</h5>
        <h1>Dies Per Wafer Calculator</h1>
    </div>
    <div class="row" >
        <div  class="my-3 p-3 bg-white rounded shadow-sm col-sm-2"  >   
            <form id="data1" class="needs-validation" novalidate>
                <div> 
                    <h4>Enter wafer and die information </h4>
                </div> 
                <div class="form-group"  >

                    <label id="waf"  >Wafer diameter (mm)</label>

                    <input type = "number" id="waf1"  name = "waf" placeholder="Input wafer diameter in mm"  value = "">  
                </div>
                <div class="form-group ">
                    <label id="diex"  >Die Size X (mm)</label>

                    <input type = "number" id="diex1" name = "diex" placeholder="Input die size X in mm"   value = "">  
                </div> 
                <div class="form-group  ">
                    <label id="diey"  >Die Size Y (mm)</label>
                    <input id="diey1" type="number" placeholder="Input die size Y in mm"  value = ""> 

                </div>
                <div class="form-group ">
                    <label id="mpy"  >MPY %</label> 
                    <input  id="mpy1" type="number" placeholder="Input Multiprobe Yield percentage"    value = "">

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
                    <label id="dpw">Dies per wafer (units) </label>
                    <label id="dpw1" type="number"></label>
                </div>
                <div class="form-group">
                    <label  id="xlines"># of X lines</label>
                    <label id="xlines1" type="number" ></label>
                </div>
                <div class="form-group">
                    <label id="ylines"># of Y lines </label>
                    <label id="ylines1" type="number" ></label>
                </div>

            </form>
        </div>	

        <div class="my-3 p-3 bg-white rounded shadow-sm col-sm-8">
            <div>
                <h4>Related Peripheral</h4> 
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    <script type="text/javascript">
        function myFunction() {
            var x = document.getElementById("waf1").value;
            var y = document.getElementById("diex1").value;
            var z = document.getElementById("diey1").value;
            var mpyo = document.getElementById("mpy1").value;

            if ((isEmpty(x)) || (isEmpty(y)) || (isEmpty(z)) || (isEmpty(mpyo))) {
                alert("Kindly fill up the parameters.");
            } else {
                var area = (+3.1416 * +x * +x) / (+4 * +y * +z);
                var c = +3.1416 * +x;
                var d = Math.sqrt(((+y * +y) + (+z * +z)));
                var g = +c / +d;
                var diecount = Math.round((+area - +g) * (+mpyo / +100));
                var xlinya = Math.round(+x / +y);
                var ylinya = Math.round(+x / +z);

                document.getElementById("dpw1").innerHTML = diecount;
                document.getElementById("xlines1").innerHTML = xlinya;
                document.getElementById("ylines1").innerHTML = ylinya;
            }

        }

        function Clear() {
            document.getElementById("data1").reset();
            document.getElementById("dpw1").innerHTML = "";
            document.getElementById("xlines1").innerHTML = "";
            document.getElementById("ylines1").innerHTML = "";

        }

        function isEmpty(value) {
            if (!value) {
                return true;
            }
            return false;
        }
         

    </script>
</div>
