// JavaScript code
function search_video() {
    let input = document.getElementById('searchbar').value
    input=input.toLowerCase();
    let x = document.getElementsByClassName('video');
      
    for (i = 0; i < x.length; i++) { 
        if (x[i].innerHTML.toLowerCase().includes(input) || x[i].className.toLowerCase().includes(input) ) {
            x[i].style.display="list-item";
        }
        else {
            x[i].style.display="none";
        }
    }
}