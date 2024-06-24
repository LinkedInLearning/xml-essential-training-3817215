// remove the first <book> element from the loaded xml:

var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        myFunction(this);
    }
}
xhttp.open("GET", "books.xml", true);
xhttp.send();

function myFunction(xml) {
    var text ="";
    var xmlDoc = xml.responseXML;
    var x = xmlDoc.getElementsByTagName("book");
    var xLen = x.length;
    var child = xmlDoc.documentElement.childNodes[1];
    var childRemoved = child.parentNode.removeChild(child);
    var nxLen = x.length;
    console.log(childRemoved);
    // document.getElementById("demo").innerHTML = ;

}

