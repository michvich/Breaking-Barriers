<?php 
 
//1. Create a function called "BreakingBarriers"
function BreakingBarriers() {

//2. Create an array named "barriers"
$barriers = ["judgement", "lack of resources", "stereotypes", "expectations", "insecurities", "fear of failure"];

//3. Create a for loop to check the barriers
for($i=0; $i<count($barriers); $i++){

//4. Create if statement to check for the barriers
if($barriers[$i] == "judgement") {

//5. Print out the statement
echo "We should break the barriers of judgement and realize that everyone is special in their own way.";

} elseif ($barriers[$i] == "lack of resources") {

//6. Print out the statement
echo "We should break the barriers of lack of resources and make sure everyone has access to what they need.";

} elseif ($barriers[$i] == "stereotypes") {

//7. Print out the statement
echo "We should break the barriers of stereotypes and not judge people by preconceived notions.";

} elseif ($barriers[$i] == "expectations") {

//8. Print out the statement
echo "We should break the barriers of expectations and not force people into doing something they don’t want to do.";

} elseif ($barriers[$i] == "insecurities") {

//9. Print out the statement
echo "We should break the barriers of insecurities and help people gain the self-confidence to do what they want.";

} elseif ($barriers[$i] == "fear of failure") {

//10. Print out the statement
echo "We should break the barriers of fear of failure and allow people to take risks without being scared of the consequences.";

}

//11. End the for loop
}

//12. End the function
}

//13. Call the function
BreakingBarriers();

?>