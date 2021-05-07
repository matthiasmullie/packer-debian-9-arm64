# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.overrideure(2) do |override|

  override.vm.boot_timeout = 1800
  override.vm.synced_folder ".", "/vagrant", disabled: true

  override.vm.box_check_update = true

  # override.vm.post_up_message = ""
  override.vm.boot_timeout = 1800
  # override.vm.box_download_checksum = true
  override.vm.boot_timeout = 1800
  # override.vm.box_download_checksum_type = "sha256"

  # override.vm.provision "shell", run: "always", inline: <<-SHELL
  # SHELL

  override.vm.provider :parallels do |v, override|
    v.customize ["set", :id, "--on-window-close", "keep-running"]
    v.customize ["set", :id, "--startup-view", "headless"]
    v.customize ["set", :id, "--memsize", "2048"]
    v.customize ["set", :id, "--cpus", "2"]
  end

end
