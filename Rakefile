require 'rake'

desc "Install everything."
task "install" do
  Rake::Task["install:dotfiles"].invoke
  Rake::Task["install:vault"].invoke
end

desc "Hook our dotfiles into system-standard positions."
task "install:dotfiles" do
  link_dir
end

task "install:vault" do
  Rake::Task["install:vault:dotfiles"].invoke
  Rake::Task["install:vault:ssh"].invoke
end

desc "Link .symlink files from ~/.vault/.dotfiles into $HOME."
task "install:vault:dotfiles" do
  vault_dotfiles_dir = File.join(vault_dir, ".dotfiles")
  return unless dir_exists? vault_dorfiles_dir
  link_dir vault_dotfiles_dir
end

desc "Link .ssh directory from ~/.vault/.ssh into $HOME."
task "install:vault:ssh" do
  ssh_vault = File.join vault_dir, ".ssh"
  ssh_home = File.join(ENV["HOME"], ".ssh")
  
  if !File.directory? ssh_vault
    puts "#{ssh_vault} does not exist! You must create it first"
  elsif File.directory? ssh_home
    puts "#{ssh_home} is present! Move all desired items to #{ssh_vault} and remove this directory"
  else
    `ln -s "#{ssh_vault}" "#{ssh_home}"`
    puts "SSH directory linked!"
  end
end

task :default => "install"

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

def dir_exists? dir
  exists = !File.directory?(dir)
  puts "#{dir} does not exist! You must create it first" unless exists
  return exists
end

def vault_dir()
  File.join(ENV["HOME"], ".vault")
end
