# SoapLibrary

Last updated for the Beta release

## Booting the Library
```lua
local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()
```

### Secure Mode
If your game crash or kick you when you boot the SoapLibrary , just replace the normal boot by this : 
```lua
local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true
```

### Enabling Configuration Saving
- Enable ConfigurationSaving in the CreateWindow function
- Choose an appropiate FileName in the CreateWindow function
- Choose an unique flag identifier for each supported element you create
- Place `SoapLibrary:LoadConfiguration()` at the bottom of all your code
- 
## Creating a Window
```lua
local Window = SoapLibrary:CreateWindow({
	Name = "Exemple",
	LoadingTitle = "Loading Text Here",
	LoadingSubtitle = "Text Here",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your script
		FileName = "Exemple"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = false -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use the key system
	KeySettings = {
		Title = "SoapLibrary",
		Subtitle = "Key System",
		Note = "Welcome",
		FileName = "Key",
		SaveKey = true,
		GrabKeyFromSite = false, -- This is experimental
		Key = "KeyHere"
	}
})
```

## Creating a Tab
```lua
local Tab = Window:CreateTab("Example Tab", 4483362458) -- Title and Image
```

## Creating a Section
```lua
local Section = Tab:CreateSection("Example Section")
```
### Updating a Section
```lua
Section:Set("Updated Section")
```

## Notifying the user
```lua
SoapLibrary:Notify({
    Title = "Title",
    Content = "Content",
    Duration = 2,
    Image = 4483362458,
    Actions = { -- Notification Actions
        Ignore = {
            Name = "Ok !",
            Callback = function()
                --Script to do when clicked here
            end
		},
	},
})
```

## Creating a Button
```lua
local Button = Tab:CreateButton({
	Name = "Example Button",
	Callback = function()
		-- The script that will be executed when pressing the button
	end,
})
```
### Updating a Button
```lua
Button:Set("Upadted Button")
```

## Creating a Toggle
```lua
local Toggle = Tab:CreateToggle({
	Name = "Example Toggle",
	CurrentValue = false,
	Flag = "MyFirstToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		--Script to execute when toggled
		--You can use 'Value' to set the toggle value (E.G. : _G.Example = Value)
	end,
})
```
### Updating a Toggle
```lua
Toggle:Set(false)
```

## Creating a Color Picker
Testing this feature

## Creating a Slider
```lua
local Slider = Tab:CreateSlider({
	Name = "Example Slider",
	Range = {0, 100},
	Increment = 1,
	Suffix = "Subscribers",
	CurrentValue = 50,
	Flag = "MyFirstSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		--Script to execute when changed
		--You can use 'Value' to set the slider value (E.G. : _G.Example = Value)
	end,
})
```
### Updating a Slider
```lua
Slider:Set(10) -- The new slider integer value
```

## Creating a Label
```lua
local Label = Tab:CreateLabel("Example Label")
```
### Updating a Label
```lua
Label:Set("Updated Label")
```

## Creating a Paragraph
```lua
local Paragraph = Tab:CreateParagraph({Title = "Title Here", Content = "Content Here"})
```
### Updating a Paragraph
```lua
Paragraph:Set({Title = "Updated Title", Content = "Updated Content"})
```

## Creating an Adaptive Input / TextBox
```lua
local Input = Tab:CreateInput({
	Name = "Example Input",
	PlaceholderText = "Placeholder",
	RemoveTextAfterFocusLost = false, --Set to true if you want the textbox / input to clear after used it
	Callback = function(Text)
		--Script to execute when changed
		--You can use 'Value' to set the input / textbox value (E.G. : _G.Example = Value)
	end,
})
```



## Creating a Keybind
```lua
local Keybind = Tab:CreateKeybind({
	Name = "Keybind Example",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "MyFirstKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The script to execute when the keybind is pressed
    		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})
```
### Updating a Keybind
```lua
Keybind:Set("RightCtrl") -- Keybind (string)
```

## Creating a Dropdown menu
```lua
local Dropdown = Tab:CreateDropdown({
	Name = "Example DropDown",
	Options = {"Option 1","Option 2"},
	CurrentOption = "Option 1",
	Flag = "MyFirstDropDown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		--Script to execute after choosing an option
    	  	-- The variable (Option) is a string for the value that the dropdown was changed to
	end,
})
```
### Updating a Dropdown
```lua
Dropdown:Set("Option 2") -- The new option value
```

## Check the value of an existing element
To check the current value of an existing element, using the variable, you can do `ElementName.CurrentValue`, if it's a keybind or dropdown, you will need to use `KeybindName.CurrentKeybind` or `DropdownName.CurrentOption`
You can also check it via the flags from `SoapLibrary.Flags`


## Destroying the Interface
```lua
SoapLibrary:Destroy()
```
