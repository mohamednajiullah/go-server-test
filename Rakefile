require 'rake'

task default: %w[test]

task :test do
  ruby '-Ilib -Ispec -rrspec/autorun spec/unit/*.rb'
end