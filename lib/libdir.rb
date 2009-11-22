def set_project_root(path)
  relative_to = File.dirname(caller.first.split(':').first)
  vendor_root = File.join(relative_to, path)

  Dir[File.join(vendor_root, 'vendor', '*')].sort.reverse.each do |vendor|
    $:.unshift File.join(vendor, 'lib')
  end
end
