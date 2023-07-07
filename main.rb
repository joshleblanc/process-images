Dir["images/*"].each do |path|
  `python3 /home/cereal/.local/bin/backgroundremover -i "#{path}" -o "converted/#{File.basename(path)}"`
end