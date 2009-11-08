def libdir(path)
  $:.unshift(File.join(File.dirname(__FILE__), path))
end
