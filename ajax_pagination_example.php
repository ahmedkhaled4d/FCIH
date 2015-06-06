<?php
// Connect to our database here
include_once("mysqli_connection.php");
// This first query is just to get the total count of rows
$sql = "SELECT COUNT(id) FROM testimonials";
$query = mysqli_query($db_conx, $sql);
$row = mysqli_fetch_row($query);
// Here we have the total row count
$total_rows = $row[0];
// Specify how many results per page
$rpp = 10;
// This tells us the page number of our last page
$last = ceil($total_rows/$rpp);
// This makes sure $last cannot be less than 1
if($last < 1){
  $last = 1;
}
// Close the database connection
mysqli_close($db_conx);
?><!DOCTYPE html>
<html>
<head>
<script>
var rpp = <?php echo $rpp; ?>; // results per page
var last = <?php echo $last; ?>; // last page number
function request_page(pn){
  var results_box = document.getElementById("results_box");
  var pagination_controls = document.getElementById("pagination_controls");
  results_box.innerHTML = "loading results ...";
  var hr = new XMLHttpRequest();
    hr.open("POST", "pagination_parser.php", true);
    hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    hr.onreadystatechange = function() {
      if(hr.readyState == 4 && hr.status == 200) {
      var dataArray = hr.responseText.split("||");
      var html_output = "";
        for(i = 0; i < dataArray.length - 1; i++){
        var itemArray = dataArray[i].split("|");
        html_output += "ID: "+itemArray[0]+" - Testimonial from <b>"+itemArray[1]+"</b><hr>";
      }
      results_box.innerHTML = html_output;
      }
    }
    hr.send("rpp="+rpp+"&last="+last+"&pn="+pn);
  // Change the pagination controls
  var paginationCtrls = "";
    // Only if there is more than 1 page worth of results give the user pagination controls
    if(last != 1){
    if (pn > 1) {
      paginationCtrls += '<button onclick="request_page('+(pn-1)+')">&lt;</button>';
      }
    paginationCtrls += ' &nbsp; &nbsp; <b>Page '+pn+' of '+last+'</b> &nbsp; &nbsp; ';
      if (pn != last) {
          paginationCtrls += '<button onclick="request_page('+(pn+1)+')">&gt;</button>';
      }
    }
  pagination_controls.innerHTML = paginationCtrls;
}
</script>
</head>
<body>
<div id="pagination_controls"></div>
<div id="results_box"></div>
<script> request_page(1); </script>
</body>
</html>
