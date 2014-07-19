require "rake/testtask"

Rake::TestTask.new :ruby do |t|
  t.test_files = Dir.glob("ruby/test/**/*_test.rb")
end

task :rust do
  system "rustc --test rust/*.rs && ./fizzbuzz && rm fizzbuzz"
end

task :haskell do
  fizzbuzz = "haskell/fizzbuzz"
  system "ghc #{fizzbuzz}.hs && #{fizzbuzz} && rm #{fizzbuzz}.hi && rm #{fizzbuzz} && rm #{fizzbuzz}.o"
end

task :python do
  system "python -m unittest discover python"
end

task :test => [:ruby, :rust, :haskell, :python]
task :default => :test
