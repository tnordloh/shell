TEXT = <<-EOS
task :console do
  #add your 'lib require statements here'
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end
                                                                                 
Rake::TestTask.new do |t|                                                        
  t.libs << "test"                                                               
  t.test_files = FileList['spec/*_spec.rb']                                      
  t.verbose = true                                                               
end
EOS

desc "set up base console"
task :console do
#put your specific requirements here.
  Rake::Task[:base_console].invoke
end

task :skel_dirs do
  basedir = ENV["BASE"] || "skel"
  mkdir basedir
  %w[lib bin spec].each {|dir| mkdir File.join(basedir,dir) } 
end

task :skel_rake_file do
  File.open(File.join(ENV["BASE"],'Rakefile'), 'w') do |f|
    f.write(TEXT)
  end
end

task :skel => [:skel_dirs, :skel_rake_file] 

