require 'mini_magick'

Dir["converted/*"].each do |path|
  img = MiniMagick::Image.open(path)
  img.combine_options do |c|
    c.gravity "West"
    c.crop "50%x100%"
    c.trim
  end

  img.write("split/male-#{File.basename(path)}")

  img = MiniMagick::Image.open(path)
  img.combine_options do |c|
    c.gravity "East"
    c.crop "50%x100%"
    c.trim
  end

  img.write("split/female-#{File.basename(path)}")
end