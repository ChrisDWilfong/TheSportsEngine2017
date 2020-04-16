(function (global, undefined) {
    var demo = {};

    function populateValue() {
        $get(demo.label).innerHTML = $get(demo.textBox).value;
        $find(demo.contentTemplateID).close();
    }

    function openWinContentTemplate() {
        $find(demo.templateWindowID).show();
    }
    
    function openWinNavigateUrl() {
        $find(demo.urlWindowID).show();
    }

    global.$windowContentDemo = demo;
    global.populateValue = populateValue;
    global.openWinContentTemplate = openWinContentTemplate;
    global.openWinNavigateUrl = openWinNavigateUrl;
})(window);