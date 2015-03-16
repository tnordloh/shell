
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
    text = <<-EOS
      task :console do
        #add your 'lib require statements here'
        require 'irb'
        require 'irb/completion'
        ARGV.clear
        IRB.start
      end
    EOS
  f.write(text)
  end
end

task :skel => [:skel_dirs, :skel_rake_file] 

