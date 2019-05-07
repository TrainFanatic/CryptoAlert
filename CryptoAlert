--Attempting to create a more user-friendly version of CryptoAlert--
--CryptoAlert 0.1.0-dev, AppleScript--
--do shell script "lolee=lol; echo $lolee"--
--As seen in the example above, all shell scripts must be in one line of osascript (AppleScript)--

--Functions here--
--Editing files (from https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ReadandWriteFiles.html)--
on writeTextToFile(theText, theFile, overwriteExistingContent)
	try
		
		-- Convert the file to a string
		set theFile to theFile as string
		
		-- Open the file for writing
		set theOpenedFile to open for access file theFile with write permission
		
		-- Clear the file if content should be overwritten
		if overwriteExistingContent is true then set eof of theOpenedFile to 0
		
		-- Write the new content to the file
		write theText to theOpenedFile starting at eof
		
		-- Close the file
		close access theOpenedFile
		
		-- Return a boolean indicating that writing was successful
		return true
		
		-- Handle a write error
	on error
		
		-- Close the file
		try
			close access file theFile
		end try
		
		-- Return a boolean indicating that writing failed
		return false
	end try
end writeTextToFile

--Replace patterns of text. From https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateText.html#//apple_ref/doc/uid/TP40016239-CH33-SW1--

on replaceText(theText, theSearchString, theReplacementString)
	set AppleScript's text item delimiters to theSearchString
	set theTextItems to every text item of theText
	set AppleScript's text item delimiters to theReplacementString
	set theText to theTextItems as string
	set AppleScript's text item delimiters to ""
	return theText
end replaceText

--Does the user have an API ID?--
to isAPIPresent()
	set apiIDPresence to display dialog "Do you have a coinmarketcap API ID?" buttons {"Yes", "No", "What is an API ID?"}
	if (apiIDPresence = {button returned:"Yes"}) then
		return true
	else if (apiIDPresence = {button returned:"No"}) then
		tell application "Google Chrome"
			activate
			open location "https://coinmarketcap.com/api/pricing/"
		end tell
		quit
		return false
	else if (apiIDPresence = {button returned:"What is an API ID?"}) then
		tell application "Google Chrome"
			activate
			open location "https://coinmarketcap.com/api/pricing/"
		end tell
		quit
	end if
end isAPIPresent

--Once all has been done, does the user have a saved key? If not, do you want to save the key?--
to detectKey()
	set keyPresence to do shell script "if [ -e ./.Key ]; then echo 'There is a Key'; else echo 'There is no key'; fi"
	if (keyPresence = "There is a Key") then
		return true
	else if (keyPresence = "There is no Key") then
		return false
	else
		error number -50
		--error -2742 produces error "Way too long, dude."--
	end if
end detectKey
--Asks user for API ID key--
to getKey()
	set theKey to display dialog "Please paste your coinmarketcap API ID" default answer "" buttons {"Cancel", "Continue"} default button "Continue" with hidden answer
	set filtered1 to replaceText(theKey, "{", "")
	return replaceText(filtered1, "Continue", "") --returns password only--
end getKey
to saveKey(theKey)
	do shell script "touch .Key"
	writeTextToFile(theKey, ".Key", true)
end saveKey
--What crypto do you want?--
to askCrypto()
	set theCrypto to display dialog "What Cryptocurrency do you want to view?" default answer "" buttons {"Cancel", "Continue"} default button "Continue"
	set filtered1 to replaceText(theCrypto, "{", "")
	return replaceText(filtered1, "Continue", "") --returns password only--
end askCrypto
--Code Here--
detectKey()
if (isAPIPresent() = true) then
	set theKey to getKey()
	set theCrypto to askCrypto()
	display alert "May take a long time" message "This process may take a long time. Anywhere between 10 and 30 seconds. Please do not exit the application until another text box appears" as critical buttons {"Continue", "Cancel"} default button "Continue" cancel button "Cancel"
	set theAddress to do shell script "find / -iname 'cryptoname-fetcher' 2>/dev/null | head -1 "
	set dirnameAddress to do shell script "dirname " & theAddress
	set fetcherAddress to dirnameAddress & "/cryptoname-fetcher"
	display dialog fetcherAddress
	set cryptoNameFiltered to do shell script fetcherAddress & " " & theCrypto
	display dialog "The ID of " & theCrypto & " is " & cryptoNameFiltered -- (This prints inputted crypto and it's corresponding ID)
	
	--display dialog theCommand
	set theData to do shell script dirnameAddress & "/get-crypto " & theKey & " " & cryptoNameFiltered
	display dialog theData
end if

