require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install do
  link_dir
end

desc "Link .symlink files from $DROPBOX/.dotfiles into $HOME."
task :dropbox do
  link_dir File.join(ENV["DROPBOX"], ".dotfiles")
end

desc "Link .ssh directory from $DROPBOX/.dotfiles into $HOME."
task :ssh do
  ssh_dropbox = File.join(ENV["DROPBOX"], ".dotfiles", ".ssh")
  ssh_home = File.join(ENV["HOME"], ".ssh")
  
  if !File.directory? ssh_dropbox
    puts "#{ssh_dropbox} does not exist! You must create it first"
  elsif File.directory? ssh_home
    puts "#{ssh_home} is present! Move all desired items to #{ssh_dropbox} and remove this directory"
  else
    `ln -s "#{ssh_dropbox}" "#{ssh_home}"`
    puts "SSH directory linked!"
  end
end

task :default => 'install'

private

def link_dir(dir = Dir.pwd)
  symlinks = File.join(dir, "**", "*{.symlink}")
  linkables = Dir.glob(symlinks)

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split('.')[0..-2].join('.')
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -s "#{linkable}" "#{target}"`
  end  
end
