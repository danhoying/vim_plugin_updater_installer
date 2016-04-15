#!/usr/bin/ruby

# Updates plugin_list.txt with current plugin URLs.
plugin_url = []
Dir.chdir ".."
Dir.chdir "bundle"
Dir.foreach("#{Dir.home}/.vim/bundle") do |dir|
  if File.directory?("#{dir}")
    next if dir == "." or dir == ".."
    Dir.chdir "#{dir}/.git"
    line = IO.readlines("config")[6].match(/(?<== ).+/)
    plugin_url.push(line.to_s)
    Dir.chdir "../.."
  end
end

Dir.chdir ".."
Dir.chdir "vim_plugin_updater_installer"
filename = "plugin_list.txt"
File.open(filename, 'w') do |file|
  plugin_url.each do |url|
    file.puts url
  end
end