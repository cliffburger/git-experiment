=begin
rake default['cow','pickle']
rake default['cow','pickle','nada']
=end

task :default, [:branch,:version] do |t, args|
   puts "Considering ... #{args.branch} "
   puts "Considering ... #{args.version} "
   puts "##teamcity[buildNumber #{args.version} #{args.branch}]"
end