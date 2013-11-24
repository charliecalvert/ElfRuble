require 'ruble'

with_defaults :scope => "source.js" do |bundle| 

snippet "csc jQuery CDN" do |snip|
  snip.trigger = "cscJQueryCDN"
  snip.expansion = "<script src='http://code.jquery.com/jquery.js'></script>"
end

snippet "csc jQueryMin CDN" do |snip|
  snip.trigger = "cscJQueryMinCDN"
  snip.expansion = "<script src='http://code.jquery.com/jquery.min.js'></script>"
end

snippet "csc Angular CDN" do |snip|
  snip.trigger = "cscAngular1.07CDN"
  snip.expansion = "<script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.js'></script>"
end

snippet "csc jQuery Document Ready" do |snip|
  snip.trigger = "cscJqDocReady"
  snip.expansion = '\$(document).ready(function() {
  "use strict";
});'
end

snippet "csc jshint basic" do |snip|
  snip.trigger = "cscjsHintBasics"
  snip.expansion = '/*jshint devel: true, browser: true, jquery: true, strict: true */'
end

snippet "csc RadioButtons" do |snip|
  snip.trigger = "cscRadioButtons"
  snip.expansion = '<section id="mainGroups">
<ul>
    <li>
        <input type="radio" name="mainGroup" id="rbPage01">
        <label for="walk">Page01</label></li>
    <li>
        <input type="radio" name="mainGroup" id="rbPage02">
        <label for="drive">Page02</label></li>
    <li>
        <input type="radio" name="mainGroup" id="rbPage03">
        <label for="fly">Page03</label></li>
</ul>
</section>'
end

snippet "csc checkFileSupprt" do |snip|
  snip.trigger = "cscCheckFileSupport"
  snip.expansion = '// Confirm File API support.
    function checkFileSupport() {
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            console.log("CSC: File APIs supported");
        } else {
            console.log("CSC: File APIs not fully supported.");
        }
    }'
end

snippet "csc HandleImage" do |snip|
  snip.trigger = "cscHandleImage"
  snip.expansion = 'function(fileObject) {
        console.log("csc: handleImage called: " + fileObject);

        handleFileSelect(fileObject);

        var reader = new FileReader();

        // Closure to capture the file information.
        reader.onload = (function(theFile) {
            return function(e) {
                console.log("csc: In onload function.");
                var span = document.createElement("span");
                span.innerHTML = "";
                document.getElementById("list").insertBefore(span, null);
            };
        })(fileObject);

        console.log("csc: about to call readAsDataURL");
        reader.readAsDataURL(fileObject);
        console.log("csc: reader call done.");
    };'
end

snippet "csc handleFileSelect" do |snip|
  snip.trigger = "cscHandleFileSelect"
  snip.expansion = "FileSupport.prototype.handleFileSelect = function(event) {
        // Handle to selected file objects
        var files = event.target.files;
        
        // Create array
        var displayTable = ['<tr><th>Name</th><th>Date</th><th>Type</th><th>Size</th>'];
        
        for (var i = 0; i < files.length; i++) {
            var fileObject = files[i];
            
            displayTable.push(
                '<tr><td>', encodeURIComponent(fileObject.name), '</td>',
                '<td>', fileObject.lastModifiedDate ? fileObject.lastModifiedDate.toLocaleDateString() : 'n/a', '</td>', 
                '<td>', fileObject.type || 'n/a', '</td>',                              
                '<td>', fileObject.size, '</td></tr>');
        }
        var table = '<table border=1>' + displayTable.join('') + '</table>';
        \$('#list').html(table);        
    };"
end

snippet "csc ajaxWritePost" do |snip|
  snip.trigger = "cscAjaxWritePost"
  snip.expansion = "var data = { details: 'presidents', data: JSON.stringify(presidentsList) };
    \$.ajax(
    {
      type: 'POST',
      url: '/savePresidents',
      dataType: 'json',
      cache: 'False',
      data: data, 
      success: function(data) {
        display.showDebug(data.result);
      },
      error: display.showError      
    });" 
end
    
snippet "csc ajaxWriteGet" do |snip|
  snip.trigger = "cscAjaxWriteGet"
  snip.expansion = "var data = { details: 'presidents', data: JSON.stringify(presidentsList) };
    \$.ajax(
    {
      type: 'GET',
      url: '/savePresidents',
      dataType: 'json',
      cache: 'False',
      data: data, 
      success: function(data) {
        display.showDebug(data.result);
      },
      error: display.showError      
    });" 
end    

  
snippet "csc Paragraph ID" do |snip|
  snip.trigger = "cscParagraphID"
  snip.expansion = "<p id=''> </p>"
end

snippet "csc Jasmine Boilerplate" do |snip|
	snip.trigger = "cscJasmineBoilderPlate"
	snip.expansion = "(function() {'use strict';
	var jasmineEnv = jasmine.getEnv();
	jasmineEnv.updateInterval = 1000;

	var reporter = new jasmine.HtmlReporter();

	jasmineEnv.addReporter(reporter);

	jasmineEnv.specFilter = function(spec) {
		return reporter.specFilter(spec);
	};

	var currentWindowOnload = window.onload;

	window.onload = function() {
		if (currentWindowOnload) {
			currentWindowOnload();
		}
		execJasmine();
	};
  
	function execJasmine() {
		jasmineEnv.execute();
	}

})();
"
end

snippet "csc Jasmine Describe Test" do |snip|
	snip.trigger = "cscJasmineDescribeTest"
	snip.expansion = "describe('calculator', function() {'use strict';
	var \\$myScope = null;
	var pc = null;
	
	beforeEach(inject(function(\\$rootScope, \\$controller) {
		\\$myScope = \\$rootScope.\\$new();
		pc = $controller('AddController', { \\$scope: \\$myScope }); 
	}));

	it('Sum two values', function() {
	    \\$myScope.operandA = 3;		
		expect(\\$myScope.square()).toEqual(9);
	});
});"
end

snippet "csc Angular Controller" do |snip|
	snip.trigger = "cscAngularController"
	snip.expansion = "function MyController(\\$scope) {
	\\$scope.visible = true;
	
	\\$scope.toggle = function() {
		\\$scope.visible = !\\$scope.visible;
	};
}"
end

end