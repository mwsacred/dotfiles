echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# After Sierra, HostName is not set by default. Whenever calling api requesting hostname, there are some delays
scutil --set HostName $(scutil --get LocalHostName)

"$(dirname $0)"/set-defaults.sh

/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
