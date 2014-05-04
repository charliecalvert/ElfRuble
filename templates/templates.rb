require 'ruble'

#ELFJS_TEMPLATES = {
#  'Factory.js' => "Factory"  
#} unless defined?(ELFJS_TEMPLATES)

#ELFJS_TEMPLATES.each do |filename, name|
#  filetypes = ["*.js"]  
#  filetypes.each do |filetype|
#    template t("%{name} Template (%{filetype})", :name => name, :filetype => filetype) do |t|
#      t.filetype = filetype
#      t.location = "templates/#{filename}"
#    end
#  end
#end

template "CSCFactory" do |t|
  t.filetype = "*.js"
  t.location = "templates/Factory.js"
end

template "Sample File Template" do |t|
  t.filetype = "*.txt"
  t.invoke do |context|
    raw_contents = IO.read("#{ENV['TM_BUNDLE_PATH']}/templates/sample_file_template.txt")
    raw_contents.gsub(/\$\{([^}]*)\}/) {|match| ENV[match[2..-2]] }
  end
end

project_template "Sample Project Template" do |t|
  t.type = :web
  t.location = "templates/sample_project_template.zip"
  t.description = "A basic template which includes only a default index.html file"
  t.replace_parameters = true
end

# Use Commands > Bundle Development > Insert Bundle Section > File Template and Project Template
# to easily add new sections

project_template 'AngularMongoBootstrapTest' do |t|
  t.type = :web
  t.tags = ['Web']
  t.location = 'templates/AngularMongoBootstrapTest.zip'
  t.description = 'description'
  t.icon = "templates/Elf64.png"
  t.replace_parameters = true
end

project_template 'AngularKarma' do |t|
  t.type = :web
  t.tags = ['Web']
  t.location = 'templates/AngularKarma.zip'
  t.description = 'description'
  t.icon = "templates/Elf64.png"
  t.replace_parameters = true
end

project_template 'AngularCalculator' do |t|
  t.type = :web
  t.tags = ['Web']
  t.location = 'templates/AngularCalculator.zip'
  t.description = 'description'
  t.icon = "templates/Elf64.png"
  t.replace_parameters = true
end

project_template 'JsonFromServer' do |t|
  t.type = :web
  t.tags = ['Web']
  t.location = 'templates/JsonFromServer.zip'
  t.description = 'description'
  t.icon = "templates/Elf64.png"
  t.replace_parameters = true
end

project_template 'QUnitSample04' do |t|
  t.type = :web
  t.tags = ['Web']
  t.location = 'templates/QUnitTestSimple04.zip'
  t.description = 'description'
  t.icon = "templates/Elf64.png"
  t.replace_parameters = true
end

