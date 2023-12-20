require 'rake'

VAULT = File.expand_path("~/Cryptomator/vault")

desc "Hook our dotfiles into system-standard positions."
task install: %w[vault:install] do
  link_dir
  puts "done"
end

namespace :vault do 
  desc "Hook files from the vault to the system."
  task :install do
    link_dir File.join(VAULT, ".dotfiles")
    puts "done"
  end
end

task :default => 'install'

private

def link_dir(dir = Dir.pwd)
  symlinks = File.join(dir, "**", "*.symlink")
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
