$script = <<-'SCRIPT'
run_playbook () {
  su -c "git clone https://github.com/stCarolas/plays-ansible.git" vagrant
  cd plays-ansible
  su -c "ansible-galaxy collection install -r requirements.yml" vagrant
  su -c "ansible-playbook play.yml" vagrant
}

dnf -y install git ansible
cd /tmp
run_playbook
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "generic/fedora35"
  config.vm.provision "shell", inline: $script
end
