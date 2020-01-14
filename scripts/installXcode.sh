if type xcode-select >&- && xpath=$( xcode-select --print-path ) && test -d "${xpath}" && test -x "${xpath}" ; then
	echo "Xcode installed"
	which -s brew
		if [[ $? != 0 ]] ; then
  			# Install Homebrew
  			echo "Installing brew"
			/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		else
			echo "Brew installed"
    		brew update
		fi
else
	xcode-select --install
	install.sh
fi