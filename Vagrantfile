$script = <<-'SCRIPT'
echo "These are my \"quotes\"! I am provisioning my guest."
sudo dnf -y install git ansible
cd /tmp
git clone https://github.com/stCarolas/plays-ansible.git
cd plays-ansible
ansible-galaxy collection install -r requirements.yml
ansible-playbook play.yml
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "generic/fedora35"
  config.vm.provision "shell", inline: $script
end
