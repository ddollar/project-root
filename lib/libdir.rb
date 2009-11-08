def libdir(path)
  relative_to = caller.split(':').first
  $:.unshift(File.join(File.dirname(relative_to), path))
end
