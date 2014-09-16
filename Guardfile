# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard 'minitest' do
  watch(%r|^test/(.*)\/?test_(.*)\.rb|)
  watch(%r|^test/test_helper\.rb|)             { "test" }
  watch(%r|^lib/(.*)\.rb|)                     { |m| "test/test_#{m[1]}.rb" }
  watch(%r|^lib/dependency_analyser/(.*)\.rb|) { |m| "test/dependency_analyser/test_#{m[1]}.rb" }
  watch(%r|^lib/(.*)([^/]+)\.rb|)              { |m| "test/#{m[1]}test_#{m[2]}.rb" }
end
