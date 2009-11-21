def libdir(path)
  relative_to = caller.first.split(':').first
  $:.unshift(File.join(File.dirname(relative_to), path))
end

def vendor(path)
  relative_to = caller.first.split(':').first
  $:.unshift(File.join(File.dirname(relative_to), path, 'lib'))
end