require "rake/testtask"

Rake::TestTask.new :ruby do |t|
  t.test_files = Dir.glob("ruby/test/**/*_test.rb")
end

task :rust do
  system "rustc --test rust/*.rs && ./fizzbuzz && rm fizzbuzz"
end

task :test => [:ruby, :rust]
task :default => :test
