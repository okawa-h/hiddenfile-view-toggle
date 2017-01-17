try
	set state to do shell script "defaults read com.apple.finder AppleShowAllFiles" as string
	if state is "true" then
		do shell script "defaults write com.apple.finder AppleShowAllFiles false"
	else
		do shell script "defaults write com.apple.finder AppleShowAllFiles true"
	end if
end try
do shell script "killall Finder"