require 'ruble'

with_defaults :scope => 'text.html - (source | string)' do |bundle|

snippet "csc jasmine html" do |snip|
  snip.trigger = "cscJasmineHtml"
  snip.expansion = "<!DOCTYPE html>
<html lang='en'>
    <head>
        <meta charset='utf-8' />

        <title>Test01</title>
        <meta name='description' content='Unit Test' />
        <meta name='author' content='Charlie' />

        <meta name='viewport' content='width=device-width, initial-scale=1.0' />
        <link href='http://cdn.jsdelivr.net/jasmine/1.3.1/jasmine.css' type='text/css' rel='stylesheet'>
        <script src='http://cdn.jsdelivr.net/jasmine/1.3.1/jasmine.js'></script>
        <script src='http://cdn.jsdelivr.net/jasmine/1.3.1/jasmine-html.js'></script>
        <script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.js'></script>
        <script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular-mocks.js'></script>
        <!-- script src='angular.js'></script -->
        <!-- script src='angular-mocks.js'></script -->
        <script src='index.js'></script>
        <script src='Test01.js'></script>
    </head>

    <body>
    
    </body>
</html>
"
end

end