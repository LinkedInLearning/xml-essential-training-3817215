//  copies the first <book> node and appends it to the root node of the document:

var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        myFunction(this)
    }
}
xhttp.open("GET", "books.xml",true);
xhttp.send();

function myFunction(xml) {
    var text = "";
    var xmlDoc = xml.responseXML;
    var x = xmlDoc.documentElement;
    var y = xmlDoc.getElementsByTagName("book")[0];
    var newNode = y.cloneNode(true);
    x.appendChild(newNode);
    var z = xmlDoc.getElementsByTagName("title");
    var zLen = z.length;
    for (let i = 0; i < zLen; i++) {
        text += `${z[i].childNodes[0].nodeValue}<br>`;
        
    }


    console.log(text);
    document.getElementById("demo").innerHTML = text;


    
    
}




