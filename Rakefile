require "rake/testtask"

Rake::TestTask.new :ruby do |t|
  t.test_files = Dir.glob("ruby/test/**/*_test.rb")
end

desc "Run the Rust tests"
task :rust do
  system "cargo test --manifest-path rust/Cargo.toml"
end

desc "Run the Haskell tests"
task :haskell do
  fizzbuzz = "haskell/fizzbuzz"
  system "ghc #{fizzbuzz}.hs && #{fizzbuzz} && rm #{fizzbuzz}.hi && rm #{fizzbuzz} && rm #{fizzbuzz}.o"
end

desc "Run the python tests"
task :python do
  system "python -m unittest discover python"
end

desc "Run the Java tests"
task :java do
  system "gradle -b java/gradle.properties"
end

task :test => [:ruby, :rust, :haskell, :python, :java]
task :default => :test
