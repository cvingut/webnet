function specActionClick(element, id) {
    var classElement = $(element).attr("class");
    classElement = "." + classElement.replace(' ', '.');
    $(".Spec_Selected").removeClass("Spec_Selected");
    $(classElement).addClass("Spec_Selected");
}


function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("id", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("id");
    if (data != null) {
        var element = document.getElementById(data);
        var relement = element.cloneNode(true);
        relement.draggable = false;
        ev.target.innerHTML = "";
        ev.target.appendChild(relement);

    }

}