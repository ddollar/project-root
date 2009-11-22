def set_project_root(path)
  relative_to    = caller.first.split(':').first
  $_project_root = File.join(File.dirname(relative_to), path)

  Dir[File.join($_project_root, 'vendor', '*')].sort.reverse.each do |vendor|
    $:.unshift File.join(vendor, 'lib')
  end

  $:.unshift File.join($_project_root, 'lib')
end

def libdir(path)
  $:.unshift File.join($_project_root, path)
end
