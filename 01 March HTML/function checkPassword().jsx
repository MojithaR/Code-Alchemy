function checkPassword()
{
    if(document.getElementById("Thor").value!=document
    .getElementById("cnfrmThor").value)
    {
        alert("Passweor Mismatched!");
        return false;
    }
    else{
        alert("success");
        return true;
    }
}
function enablebutton(){
    if(document.getElementById("checkbox").checked)
    {
        document.getElementById("Submitbtn").disabled=false;
    }
    else{
        document.getElementById("Submitbtn").disabled=true
}