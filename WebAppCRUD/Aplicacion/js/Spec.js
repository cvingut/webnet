function specActionClick(element, id) {
    var classElement = $(element).attr("class");
    classElement = "." + classElement.replace(' ', '.');
    $(".Spec_Selected").removeClass("Spec_Selected");
    $(classElement).addClass("Spec_Selected");
}