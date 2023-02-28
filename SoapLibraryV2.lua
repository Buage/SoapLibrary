local players = game:GetService("Players")
local uis = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game.CoreGui

local lp = players.LocalPlayer
local mouse = lp:GetMouse()
local viewport = workspace.CurrentCamera.ViewportSize
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local GUIOpened = true

local SoapLibrary = {}
GUI = {}

print('SoapSoapLibrary')

function SoapLibrary:validate(defaults, options)
	for i, v in pairs (defaults) do
		if options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function SoapLibrary:tween(object, goal, callback)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function SoapLibrary:Init(options)

	options = SoapLibrary:validate({
		name = "test",
		openKey = "RightControl"
	}, options or {})

	local GUI = {
		CurrentTab = nil
	}
	
	do
		--[[ MAIN FRAME ]]--

		-- StarterGui.SoapLibrary
		GUI["1"] = Instance.new("ScreenGui", coreGui);
		GUI["1"]["Name"] = [[SoapLibrary]];
		GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

		-- StarterGui.SoapLibrary.Main
		GUI["2"] = Instance.new("Frame", GUI["1"]);
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
		GUI["2"]["Size"] = UDim2.new(0, 412, 0, 464);
		GUI["2"]["Position"] = UDim2.new(0.37320592999458313, 0, 0.21072319149971008, 0);
		GUI["2"]["Name"] = [[Main]];

		-- StarterGui.GUI.Main.UICorner
		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGui.SoapLibrary.Main.DropShadowHolder
		GUI["4"] = Instance.new("Frame", GUI["2"]);
		GUI["4"]["ZIndex"] = 0;
		GUI["4"]["BorderSizePixel"] = 0;
		GUI["4"]["BackgroundTransparency"] = 1;
		GUI["4"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["4"]["Name"] = [[DropShadowHolder]];

		-- StarterGui.SoapLibrary.Main.DropShadowHolder.DropShadow
		GUI["5"] = Instance.new("ImageLabel", GUI["4"]);
		GUI["5"]["ZIndex"] = 0;
		GUI["5"]["BorderSizePixel"] = 0;
		GUI["5"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		GUI["5"]["ScaleType"] = Enum.ScaleType.Slice;
		GUI["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["5"]["ImageTransparency"] = 0.5;
		GUI["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["5"]["Image"] = [[rbxassetid://6014261993]];
		GUI["5"]["Size"] = UDim2.new(1, 47, 1, 47);
		GUI["5"]["Name"] = [[DropShadow]];
		GUI["5"]["BackgroundTransparency"] = 1;
		GUI["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- StarterGui.SoapLibrary.Main.TopBar
		GUI["6"] = Instance.new("Frame", GUI["2"]);
		GUI["6"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
		GUI["6"]["Size"] = UDim2.new(0, 412, 0, 43);
		GUI["6"]["Name"] = [[TopBar]];

		-- StarterGui.SoapLibrary.Main.TopBar.UICorner
		GUI["7"] = Instance.new("UICorner", GUI["6"]);


		-- StarterGui.SoapLibrary.Main.TopBar.Extension
		GUI["8"] = Instance.new("Frame", GUI["6"]);
		GUI["8"]["BorderSizePixel"] = 0;
		GUI["8"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
		GUI["8"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["8"]["Size"] = UDim2.new(0, 412, 0, 8);
		GUI["8"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["8"]["Name"] = [[Extension]];

		-- StarterGui.SoapLibrary.Main.TopBar.Title
		GUI["9"] = Instance.new("TextLabel", GUI["6"]);
		GUI["9"]["BackgroundColor3"] = Color3.fromRGB(192, 192, 192);
		GUI["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GUI["9"]["TextSize"] = 14;
		GUI["9"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
		GUI["9"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		GUI["9"]["Text"] = options["name"];
		GUI["9"]["Name"] = options["name"];
		GUI["9"]["BackgroundTransparency"] = 1;

		-- StarterGui.SoapLibrary.Main.TopBar.Title.UIPadding
		GUI["a"] = Instance.new("UIPadding", GUI["9"]);
		GUI["a"]["PaddingTop"] = UDim.new(0, 1);
		GUI["a"]["PaddingLeft"] = UDim.new(0, 8);

		-- StarterGui.SoapLibrary.Main.TopBar.Close
		GUI["b"] = Instance.new("ImageButton", GUI["6"]);
		GUI["b"]["ZIndex"] = 2;
		GUI["b"]["LayoutOrder"] = 3;
		GUI["b"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["b"]["Image"] = [[rbxassetid://3926305904]];
		GUI["b"]["ImageRectSize"] = Vector2.new(36, 36);
		GUI["b"]["Size"] = UDim2.new(0, 30, 0, 30);
		GUI["b"]["Name"] = [[Close]];
		GUI["b"]["ImageRectOffset"] = Vector2.new(924, 724);
		GUI["b"]["Position"] = UDim2.new(1, -4, 0, 6);
		GUI["b"]["BackgroundTransparency"] = 1;

		-- StarterGui.SoapLibrary.Main.TopBar.Line
		GUI["c"] = Instance.new("Frame", GUI["6"]);
		GUI["c"]["BackgroundColor3"] = Color3.fromRGB(44, 44, 44);
		GUI["c"]["AnchorPoint"] = Vector2.new(0, 1);
		GUI["c"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["c"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["c"]["Name"] = [[Line]]; 
		
		-- StarterGui.SoapLibrary.Notifications
		GUI["66"] = Instance.new("Frame", GUI["1"]);
		GUI["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["66"]["BackgroundTransparency"] = 1;
		GUI["66"]["Size"] = UDim2.new(0, 279, 0, 470);
		GUI["66"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
		GUI["66"]["Position"] = UDim2.new(0.8163265585899353, 0, 0.014962613582611084, 0);
		GUI["66"]["Name"] = [[Notifications]];
		GUI["66"]["BackgroundTransparency"] = 1;
		
		-- StarterGui.SoapLibrary.Notifications.UICorner
		GUI["6e"] = Instance.new("UICorner", GUI["66"]);


		-- StarterGui.SoapLibrary.Notifications.UIPadding
		GUI["6f"] = Instance.new("UIPadding", GUI["66"]);
		GUI["6f"]["PaddingTop"] = UDim.new(0, 1);
		GUI["6f"]["PaddingRight"] = UDim.new(0, 1);
		GUI["6f"]["PaddingBottom"] = UDim.new(0, 1);
		GUI["6f"]["PaddingLeft"] = UDim.new(0, 1);

		-- StarterGui.SoapLibrary.Notifications.UIListLayout
		GUI["70"] = Instance.new("UIListLayout", GUI["66"]);
		GUI["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	end

	do
		-- StarterGui.SoapLibrary.Main.Navigation
		GUI["d"] = Instance.new("Frame", GUI["2"]);
		GUI["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["d"]["Size"] = UDim2.new(0, 127, 0, 421);
		GUI["d"]["Position"] = UDim2.new(0, 0, 0.09267241507768631, 0);
		GUI["d"]["Name"] = [[Navigation]];

		-- StarterGui.SoapLibrary.Main.Navigation.UICorner
		GUI["e"] = Instance.new("UICorner", GUI["d"]);
		GUI["e"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGui.SoapLibrary.Main.Navigation.Hide
		GUI["f"] = Instance.new("Frame", GUI["d"]);
		GUI["f"]["BorderSizePixel"] = 0;
		GUI["f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["f"]["Size"] = UDim2.new(0, 127, 0, 25);
		GUI["f"]["Name"] = [[Hide]];

		-- StarterGui.SoapLibrary.Main.Navigation.Hide2
		GUI["10"] = Instance.new("Frame", GUI["d"]);
		GUI["10"]["BorderSizePixel"] = 0;
		GUI["10"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["10"]["AnchorPoint"] = Vector2.new(1, 0);
		GUI["10"]["Size"] = UDim2.new(0, 17, 0, 421);
		GUI["10"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["10"]["Name"] = [[Hide2]];

		-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder
		GUI["11"] = Instance.new("Frame", GUI["d"]);
		GUI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["11"]["BackgroundTransparency"] = 1;
		GUI["11"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
		GUI["11"]["Name"] = [[ButtonHolder]];

		-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder.UIPadding
		GUI["12"] = Instance.new("UIPadding", GUI["11"]);
		GUI["12"]["PaddingTop"] = UDim.new(0, 8);
		GUI["12"]["PaddingBottom"] = UDim.new(0, 8)

		-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder.UIListLayout
		GUI["13"] = Instance.new("UIListLayout", GUI["11"]);
		GUI["13"]["Padding"] = UDim.new(0, 1);
		GUI["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.SoapLibrary.Main.Navigation.Line
		GUI["1a"] = Instance.new("Frame", GUI["d"]);
		GUI["1a"]["BorderSizePixel"] = 0;
		GUI["1a"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
		GUI["1a"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["1a"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["1a"]["Name"] = [[Line]];
		
		
		GUI["b"].MouseButton1Down:Connect(function()
			GUIOpened = false
			GUI["2"].Visible = false

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame
			GUI["67"] = Instance.new("Frame", GUI["66"]);
			GUI["67"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
			GUI["67"]["Size"] = UDim2.new(0, 279, 0, 105);
			GUI["67"]["Name"] = [[NotificationFrame]];
			GUI["66"]["BackgroundTransparency"] = 1;

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.UICorner
			GUI["68"] = Instance.new("UICorner", GUI["67"]);


			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.UIPadding
			GUI["69"] = Instance.new("UIPadding", GUI["67"]);
			GUI["69"]["PaddingTop"] = UDim.new(0, 1);
			GUI["69"]["PaddingRight"] = UDim.new(0, 1);
			GUI["69"]["PaddingBottom"] = UDim.new(0, 1);
			GUI["69"]["PaddingLeft"] = UDim.new(0, 1);

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationTitle
			GUI["6a"] = Instance.new("TextLabel", GUI["67"]);
			GUI["6a"]["TextWrapped"] = true;
			GUI["6a"]["TextScaled"] = true;
			GUI["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			GUI["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			GUI["6a"]["TextSize"] = 14;
			GUI["6a"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
			GUI["6a"]["Size"] = UDim2.new(0, 278, 0, 22);
			GUI["6a"]["Text"] = [[Interface Closed]];
			GUI["6a"]["Name"] = [[NotificationTitle]];
			GUI["6a"]["BackgroundTransparency"] = 1;
			GUI["6a"]["Position"] = UDim2.new(3.725290298461914e-09, 0, -0.007936477661132812, 0);

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationTitle.UIPadding
			GUI["6b"] = Instance.new("UIPadding", GUI["6a"]);
			GUI["6b"]["PaddingTop"] = UDim.new(0, 1);
			GUI["6b"]["PaddingRight"] = UDim.new(0, 1);
			GUI["6b"]["PaddingBottom"] = UDim.new(0, 1);
			GUI["6b"]["PaddingLeft"] = UDim.new(0, 1);

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationText
			GUI["6c"] = Instance.new("TextLabel", GUI["67"]);
			GUI["6c"]["TextWrapped"] = true;
			GUI["6c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
			GUI["6c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			GUI["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			GUI["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			GUI["6c"]["TextSize"] = 14;
			GUI["6c"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
			GUI["6c"]["Size"] = UDim2.new(0, 278, 0, 77);
			GUI["6c"]["Text"] = [[Press RightControl to re open the Interface.]];
			GUI["6c"]["Name"] = [[NotificationText]];
			GUI["6c"]["BackgroundTransparency"] = 1;
			GUI["6c"]["Position"] = UDim2.new(0, 0, 0.2567422389984131, 0);

			-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationText.UIPadding
			GUI["6d"] = Instance.new("UIPadding", GUI["6c"]);
			GUI["6d"]["PaddingTop"] = UDim.new(0, 1);
			GUI["6d"]["PaddingRight"] = UDim.new(0, 1);
			GUI["6d"]["PaddingBottom"] = UDim.new(0, 1);
			GUI["6d"]["PaddingLeft"] = UDim.new(0, 1);

			SoapLibrary:tween(GUI["67"], {BackgroundTransparency = 0})

			wait(5)

			SoapLibrary:tween(GUI["67"], {BackgroundTransparency = 1})

			wait(0.5)

			GUI["67"]:Destroy()
		end)
		
		uis.InputBegan:Connect(function(key, gp)
			if key.KeyCode == Enum.KeyCode.RightControl then
				if GUIOpened == true then
					GUIOpened = false
					GUI["2"].Visible = false

					-- StarterGui.SoapLibrary.Notifications.NotificationFrame
					GUI["67"] = Instance.new("Frame", GUI["66"]);
					GUI["67"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
					GUI["67"]["Size"] = UDim2.new(0, 279, 0, 105);
					GUI["67"]["Name"] = [[NotificationFrame]];
					GUI["66"]["BackgroundTransparency"] = 1;
					
					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.UICorner
					GUI["68"] = Instance.new("UICorner", GUI["67"]);


					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.UIPadding
					GUI["69"] = Instance.new("UIPadding", GUI["67"]);
					GUI["69"]["PaddingTop"] = UDim.new(0, 1);
					GUI["69"]["PaddingRight"] = UDim.new(0, 1);
					GUI["69"]["PaddingBottom"] = UDim.new(0, 1);
					GUI["69"]["PaddingLeft"] = UDim.new(0, 1);
					
					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationTitle
					GUI["6a"] = Instance.new("TextLabel", GUI["67"]);
					GUI["6a"]["TextWrapped"] = true;
					GUI["6a"]["TextScaled"] = true;
					GUI["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					GUI["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					GUI["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
					GUI["6a"]["TextSize"] = 14;
					GUI["6a"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
					GUI["6a"]["Size"] = UDim2.new(0, 278, 0, 22);
					GUI["6a"]["Text"] = [[Interface Closed]];
					GUI["6a"]["Name"] = [[NotificationTitle]];
					GUI["6a"]["BackgroundTransparency"] = 1;
					GUI["6a"]["Position"] = UDim2.new(3.725290298461914e-09, 0, -0.007936477661132812, 0);

					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationTitle.UIPadding
					GUI["6b"] = Instance.new("UIPadding", GUI["6a"]);
					GUI["6b"]["PaddingTop"] = UDim.new(0, 1);
					GUI["6b"]["PaddingRight"] = UDim.new(0, 1);
					GUI["6b"]["PaddingBottom"] = UDim.new(0, 1);
					GUI["6b"]["PaddingLeft"] = UDim.new(0, 1);

					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationText
					GUI["6c"] = Instance.new("TextLabel", GUI["67"]);
					GUI["6c"]["TextWrapped"] = true;
					GUI["6c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
					GUI["6c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
					GUI["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					GUI["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					GUI["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
					GUI["6c"]["TextSize"] = 14;
					GUI["6c"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
					GUI["6c"]["Size"] = UDim2.new(0, 278, 0, 77);
					GUI["6c"]["Text"] = [[Press RightControl to re open the Interface.]];
					GUI["6c"]["Name"] = [[NotificationText]];
					GUI["6c"]["BackgroundTransparency"] = 1;
					GUI["6c"]["Position"] = UDim2.new(0, 0, 0.2567422389984131, 0);

					-- StarterGui.SoapLibrary.Notifications.NotificationFrame.NotificationText.UIPadding
					GUI["6d"] = Instance.new("UIPadding", GUI["6c"]);
					GUI["6d"]["PaddingTop"] = UDim.new(0, 1);
					GUI["6d"]["PaddingRight"] = UDim.new(0, 1);
					GUI["6d"]["PaddingBottom"] = UDim.new(0, 1);
					GUI["6d"]["PaddingLeft"] = UDim.new(0, 1);
					
					SoapLibrary:tween(GUI["67"], {BackgroundTransparency = 0})
					
					wait(5)
					
					SoapLibrary:tween(GUI["67"], {BackgroundTransparency = 1})
					
					wait(0.5)
					
					GUI["67"]:Destroy()
				elseif GUIOpened == false then
					if GUI["66"]:FindFirstChild("NotificationFrame") then
						GUI["67"]:Destroy()
						GUIOpened = true
						GUI["2"].Visible = true
					end
					end
			end
		end)
		
		local frame = GUI["2"]
		local dragToggle = nil
		local dragSpeed = 1
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		uis.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
		
	end

	function GUI:CreateTab(options)
		options = SoapLibrary:validate({
			name = "tablol",
			icon = "rbxassetid://3926305904"
		}, options or {})

		local Tab = {
			Hover = false,
			Active = false
		}

		do

			-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder.Inactive
			Tab["17"] = Instance.new("TextLabel", GUI["11"]);
			Tab["17"]["BorderSizePixel"] = 0;
			Tab["17"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
			Tab["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Tab["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Tab["17"]["TextSize"] = 12;
			Tab["17"]["TextColor3"] = Color3.fromRGB(109, 109, 109);
			Tab["17"]["Size"] = UDim2.new(1, 0, 0, 24);
			Tab["17"]["Text"] = options.name;
			Tab["17"]["Name"] = [[Inactive]];
			Tab["17"]["BackgroundTransparency"] = 1;
			Tab["17"]["Position"] = UDim2.new(4.133858680725098, 0, 0.5358024835586548, 0);

			-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder.Inactive.UIPadding
			Tab["18"] = Instance.new("UIPadding", Tab["17"]);
			Tab["18"]["PaddingLeft"] = UDim.new(0, 28);

			-- StarterGui.SoapLibrary.Main.Navigation.ButtonHolder.Inactive.Icon
			Tab["19"] = Instance.new("ImageLabel", Tab["17"]);
			Tab["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["19"]["ImageColor3"] = Color3.fromRGB(109, 109, 109);
			Tab["19"]["AnchorPoint"] = Vector2.new(0, 0.5);
			Tab["19"]["Image"] = options.icon;
			Tab["19"]["Size"] = UDim2.new(0, 20, 0, 20);
			Tab["19"]["Name"] = [[Icon]];
			Tab["19"]["BackgroundTransparency"] = 1;
			Tab["19"]["Position"] = UDim2.new(0, -24, 0.5, 0);

			-- StarterGui.SoapLibrary.Main.ConetentContainer
			Tab["1b"] = Instance.new("Frame", GUI["2"]);
			Tab["1b"]["BorderSizePixel"] = 0;
			Tab["1b"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
			Tab["1b"]["BackgroundTransparency"] = 1;
			Tab["1b"]["Size"] = UDim2.new(0, 268, 0, 403);
			Tab["1b"]["Position"] = UDim2.new(0, 137, 0, 52);
			Tab["1b"]["Name"] = [[ConetentContainer]];
			Tab["1b"]["Visible"] = false;

			-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab
			Tab["1c"] = Instance.new("ScrollingFrame", Tab["1b"]);
			Tab["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["1c"]["BackgroundTransparency"] = 1;
			Tab["1c"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["1c"]["Selectable"] = false;
			Tab["1c"]["ScrollBarThickness"] = 0;
			Tab["1c"]["Name"] = [[HomeTab]];
			Tab["1c"]["SelectionGroup"] = false;

			-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.UIPadding
			Tab["23"] = Instance.new("UIPadding", Tab["1c"]);
			Tab["23"]["PaddingTop"] = UDim.new(0, 1);
			Tab["23"]["PaddingRight"] = UDim.new(0, 1);
			Tab["23"]["PaddingBottom"] = UDim.new(0, 1);
			Tab["23"]["PaddingLeft"] = UDim.new(0, 1);


			-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.UIListLayout
			GUI["2a"] = Instance.new("UIListLayout", Tab["1c"]);
			GUI["2a"]["Padding"] = UDim.new(0, 6);
			GUI["2a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		end

		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()	
				end

				Tab.Active = true
				SoapLibrary:tween(Tab["17"], {TextColor3 = Color3.fromRGB(167, 167, 167)})
				--SoapLibrary:tween(Tab["17"], {BackgroundColor3 = Color3.fromRGB(86, 86, 86)})
				SoapLibrary:tween(Tab["17"], {BackgroundTransparency = 0})
				GUI.CurrentTab = Tab
				Tab["1b"].Visible = true
			end
		end

		do
			function Tab:Deactivate()
				if Tab.Active then
					Tab.Active = false
					Tab.Hover = false
					SoapLibrary:tween(Tab["17"], {TextColor3 = Color3.fromRGB(108, 108, 108)})
					SoapLibrary:tween(Tab["17"], {BackgroundTransparency = 1})
					Tab["1b"].Visible = false
				end
			end

			Tab["17"].MouseEnter:Connect(function()
				Tab.Hover = true

				if not Tab.Active then
					SoapLibrary:tween(Tab["17"], {TextColor3 = Color3.fromRGB(167, 167, 167)})
				end
			end)

			Tab["17"].MouseLeave:Connect(function()
				Tab.Hover = false
				SoapLibrary:tween(Tab["17"], {TextColor3 = Color3.fromRGB(108, 108, 108)})
			end)

			uis.InputBegan:Connect(function(input,gpe)
				if gpe then return end

				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Tab.Hover then
						Tab:Activate()
					end
				end
			end)
			if GUI.CurrentTab == nil then
				Tab:Activate()
			end
		end

		function Tab:CreateButton(options)
			options = SoapLibrary:validate({
				name = "Button Name",
				callback = function() end
			}, options or {})

			local Button = {
				Hover = false,
				MouseDown = false
			}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button
				Button["1d"] = Instance.new("Frame", Tab["1c"]);
				Button["1d"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
				Button["1d"]["Size"] = UDim2.new(0.9887217879295349, 0, 0, 32);
				Button["1d"]["Name"] = [[Button]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button.UICorner
				Button["1e"] = Instance.new("UICorner", Button["1d"]);
				Button["1e"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button.UIStroke
				Button["1f"] = Instance.new("UIStroke", Button["1d"]);
				Button["1f"]["Color"] = Color3.fromRGB(71, 71, 71);
				Button["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button.Title
				Button["20"] = Instance.new("TextLabel", Button["1d"]);
				Button["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Button["20"]["TextSize"] = 14;
				Button["20"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Button["20"]["Size"] = UDim2.new(1, -20, 1, 0);
				Button["20"]["Text"] = options.name;
				Button["20"]["Name"] = [[Title]];
				Button["20"]["BackgroundTransparency"] = 1;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button.UIPadding
				Button["21"] = Instance.new("UIPadding", Button["1d"]);
				Button["21"]["PaddingTop"] = UDim.new(0, 6);
				Button["21"]["PaddingRight"] = UDim.new(0, 6);
				Button["21"]["PaddingBottom"] = UDim.new(0, 6);
				Button["21"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Button.Icon
				Button["22"] = Instance.new("ImageLabel", Button["1d"]);
				Button["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["22"]["AnchorPoint"] = Vector2.new(1, 0);
				Button["22"]["Image"] = [[rbxassetid://12606696881]];
				Button["22"]["Size"] = UDim2.new(0, 20, 0, 20);
				Button["22"]["Name"] = [[Icon]];
				Button["22"]["BackgroundTransparency"] = 1;
				Button["22"]["Position"] = UDim2.new(1, 0, 0, 0);
			end

			-- Methods

			function Button:SetText(text)
				Button["20"].Text = text
				options.name = text
			end

			function Button:SetCallback(fn)
				options.callback = fn
			end

			-- Logic

			do
				Button["1d"].MouseEnter:Connect(function()
					Button.Hover = true

					SoapLibrary:tween(Button["1f"], {Color = Color3.fromRGB(191, 191, 191)})
					SoapLibrary:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(61, 61, 61)})
				end)

				Button["1d"].MouseLeave:Connect(function()
					Button.Hover = false

					SoapLibrary:tween(Button["1f"], {Color = Color3.fromRGB(70, 70, 70)})
					SoapLibrary:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
						SoapLibrary:tween(Button["1f"], {Color = Color3.fromRGB(255, 255, 255)})
						SoapLibrary:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						options.callback()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Button.MouseDown = false
						if Button.Hover then
							SoapLibrary:tween(Button["1f"], {Color = Color3.fromRGB(255, 255, 255)})
							SoapLibrary:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						else
							SoapLibrary:tween(Button["1f"], {Color = Color3.fromRGB(70, 70, 70)})
							SoapLibrary:tween(Button["1d"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
						end
					end
				end)
			end

			return Button

		end

		function Tab:CreateWarning(options)
			options = SoapLibrary:validate({
				message = "Warning Subject"
			}, options or {})

			local Warning = {}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning
				Warning["24"] = Instance.new("Frame", Tab["1c"]);
				Warning["24"]["BackgroundColor3"] = Color3.fromRGB(44, 37, 4);
				Warning["24"]["Size"] = UDim2.new(0.9890000224113464, 0, 0, 32);
				Warning["24"]["Name"] = [[Warning]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning.UICorner
				Warning["25"] = Instance.new("UICorner", Warning["24"]);
				Warning["25"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning.UIStroke
				Warning["26"] = Instance.new("UIStroke", Warning["24"]);
				Warning["26"]["Color"] = Color3.fromRGB(166, 138, 12);
				Warning["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning.Title
				Warning["27"] = Instance.new("TextLabel", Warning["24"]);
				Warning["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Warning["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Warning["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Warning["27"]["TextSize"] = 14;
				Warning["27"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Warning["27"]["Size"] = UDim2.new(1, -20, 1, 0);
				Warning["27"]["Text"] = options.message;
				Warning["27"]["Name"] = [[Title]];
				Warning["27"]["BackgroundTransparency"] = 1;
				Warning["27"].TextWrapped = true
				Warning["27"]["TextYAlignment"] = Enum.TextYAlignment.Top

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning.UIPadding
				Warning["28"] = Instance.new("UIPadding", Warning["24"]);
				Warning["28"]["PaddingTop"] = UDim.new(0, 6);
				Warning["28"]["PaddingRight"] = UDim.new(0, 6);
				Warning["28"]["PaddingBottom"] = UDim.new(0, 6);
				Warning["28"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Warning.Icon
				Warning["29"] = Instance.new("ImageLabel", Warning["24"]);
				Warning["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Warning["29"]["ImageColor3"] = Color3.fromRGB(255, 214, 48);
				Warning["29"]["AnchorPoint"] = Vector2.new(1, 0);
				Warning["29"]["Image"] = [[rbxassetid://12606841025]];
				Warning["29"]["Size"] = UDim2.new(0, 20, 0, 20);
				Warning["29"]["Name"] = [[Icon]];
				Warning["29"]["BackgroundTransparency"] = 1;
				Warning["29"]["Position"] = UDim2.new(1, 0, 0, 0);
			end

			-- Methods

			function Warning:SetText(text)
				options.message = text
				Warning:Update()
			end

			function Warning:Update()
				Warning["27"].Text = options.message

				Warning["27"].Size = UDim2.new(Warning["27"].Size.X.Scale, Warning["27"].Size.X.Offset, 0, math.huge)
				Warning["27"].Size = UDim2.new(Warning["27"].Size.X.Scale, Warning["27"].Size.X.Offset, 0, Warning["27"].TextBounds.Y)
				SoapLibrary:tween(Warning["24"], {Size = UDim2.new(Warning["24"].Size.X.Scale, Warning["24"].Size.X.Offset, 0, Warning["27"].TextBounds.Y + 12)})
			end

			Warning:Update()

			return Warning
		end

		function Tab:CreateInfo(options)
			options = SoapLibrary:validate({
				message = "Info Subject"
			}, options or {})

			local Info = {}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info
				Info["2b"] = Instance.new("Frame", Tab["1c"]);
				Info["2b"]["BackgroundColor3"] = Color3.fromRGB(6, 27, 44);
				Info["2b"]["Size"] = UDim2.new(0.9890000224113464, 0, 0, 32);
				Info["2b"]["Name"] = [[Info]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info.UICorner
				Info["2c"] = Instance.new("UICorner", Info["2b"]);
				Info["2c"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info.UIStroke
				Info["2d"] = Instance.new("UIStroke", Info["2b"]);
				Info["2d"]["Color"] = Color3.fromRGB(31, 92, 166);
				Info["2d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info.Title
				Info["2e"] = Instance.new("TextLabel", Info["2b"]);
				Info["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Info["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Info["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Info["2e"]["TextSize"] = 14;
				Info["2e"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Info["2e"]["Size"] = UDim2.new(1, -20, 1, 0);
				Info["2e"]["Text"] = options.message;
				Info["2e"]["Name"] = [[Title]];
				Info["2e"]["BackgroundTransparency"] = 1;
				Info["2e"].TextWrapped = true
				Info["2e"]["TextYAlignment"] = Enum.TextYAlignment.Top

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info.UIPadding
				Info["2f"] = Instance.new("UIPadding", Info["2b"]);
				Info["2f"]["PaddingTop"] = UDim.new(0, 6);
				Info["2f"]["PaddingRight"] = UDim.new(0, 6);
				Info["2f"]["PaddingBottom"] = UDim.new(0, 6);
				Info["2f"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Info.Icon
				Info["30"] = Instance.new("ImageLabel", Info["2b"]);
				Info["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Info["30"]["ImageColor3"] = Color3.fromRGB(54, 98, 255);
				Info["30"]["AnchorPoint"] = Vector2.new(1, 0);
				Info["30"]["Image"] = [[rbxassetid://12607275117]];
				Info["30"]["Size"] = UDim2.new(0, 20, 0, 20);
				Info["30"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
				Info["30"]["Name"] = [[Icon]];
				Info["30"]["BackgroundTransparency"] = 1;
				Info["30"]["Position"] = UDim2.new(1, 0, 0, 0);
			end

			-- Methods

			function Info:SetText(text)
				options.message = text
				Info:Update()
			end

			function Info:Update()
				Info["2e"].Text = options.message

				Info["2e"].Size = UDim2.new(Info["2e"].Size.X.Scale, Info["2e"].Size.X.Offset, 0, math.huge)
				Info["2e"].Size = UDim2.new(Info["2e"].Size.X.Scale, Info["2e"].Size.X.Offset, 0, Info["2e"].TextBounds.Y)
				SoapLibrary:tween(Info["2b"], {Size = UDim2.new(Info["2b"].Size.X.Scale, Info["2b"].Size.X.Offset, 0, Info["2e"].TextBounds.Y + 12)})
			end

			Info:Update()

			return Info
		end

		function Tab:CreateLabel(options)
			options = SoapLibrary:validate({
				message = "Label Text"
			}, options or {})

			local Label = {}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Label
				Label["31"] = Instance.new("Frame", Tab["1c"]);
				Label["31"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
				Label["31"]["Size"] = UDim2.new(0.9890000224113464, 0, 0, 32);
				Label["31"]["Name"] = [[Label]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Label.UICorner
				Label["32"] = Instance.new("UICorner", Label["31"]);
				Label["32"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Label.UIStroke
				Label["33"] = Instance.new("UIStroke", Label["31"]);
				Label["33"]["Color"] = Color3.fromRGB(71, 71, 71);
				Label["33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Label.Title
				Label["34"] = Instance.new("TextLabel", Label["31"]);
				Label["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Label["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Label["34"]["TextSize"] = 14;
				Label["34"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Label["34"]["Size"] = UDim2.new(1, 0, 1, 0);
				Label["34"]["Name"] = [[Title]];
				Label["34"]["BackgroundTransparency"] = 1;
				Label["34"].TextWrapped = true
				Label["34"]["TextYAlignment"] = Enum.TextYAlignment.Top

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Label.UIPadding
				Label["35"] = Instance.new("UIPadding", Label["31"]);
				Label["35"]["PaddingTop"] = UDim.new(0, 6);
				Label["35"]["PaddingRight"] = UDim.new(0, 6);
				Label["35"]["PaddingBottom"] = UDim.new(0, 6);
				Label["35"]["PaddingLeft"] = UDim.new(0, 6);
			end

			-- Methods

			function Label:SetText(text)
				options.message = text
				Label:Update()
			end

			function Label:Update()
				Label["34"].Text = options.message

				Label["34"].Size = UDim2.new(Label["34"].Size.X.Scale, Label["34"].Size.X.Offset, 0, math.huge)
				Label["34"].Size = UDim2.new(Label["34"].Size.X.Scale, Label["34"].Size.X.Offset, 0, Label["34"].TextBounds.Y)
				SoapLibrary:tween(Label["31"], {Size = UDim2.new(Label["31"].Size.X.Scale, Label["31"].Size.X.Offset, 0, Label["34"].TextBounds.Y + 12)})
			end

			Label:Update()

			return Label
		end

		function Tab:CreateToggle(options)
			options = SoapLibrary:validate({
				title = "Toggle Name",
				callabck = function() end
			}, options or {})

			local Toggle = {
				Hover = false,
				MouseDown = false,
				State = false
			}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive
				Toggle["5a"] = Instance.new("Frame", Tab["1c"]);
				Toggle["5a"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
				Toggle["5a"]["Size"] = UDim2.new(0.9887217879295349, 0, 0, 32);
				Toggle["5a"]["Name"] = [[ToggleInactive]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.UICorner
				Toggle["5b"] = Instance.new("UICorner", Toggle["5a"]);
				Toggle["5b"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.UIStroke
				Toggle["5c"] = Instance.new("UIStroke", Toggle["5a"]);
				Toggle["5c"]["Color"] = Color3.fromRGB(71, 71, 71);
				Toggle["5c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.Title
				Toggle["5d"] = Instance.new("TextLabel", Toggle["5a"]);
				Toggle["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["5d"]["TextSize"] = 14;
				Toggle["5d"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Toggle["5d"]["Size"] = UDim2.new(1, -26, 1, 0);
				Toggle["5d"]["Text"] = options.title;
				Toggle["5d"]["Name"] = [[Title]];
				Toggle["5d"]["BackgroundTransparency"] = 1;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.UIPadding
				Toggle["5e"] = Instance.new("UIPadding", Toggle["5a"]);
				Toggle["5e"]["PaddingTop"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingRight"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingBottom"] = UDim.new(0, 6);
				Toggle["5e"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.CheckmarkHolder
				Toggle["5f"] = Instance.new("Frame", Toggle["5a"]);
				Toggle["5f"]["BackgroundColor3"] = Color3.fromRGB(84, 84, 84);
				Toggle["5f"]["BackgroundTransparency"] = 0;
				Toggle["5f"]["AnchorPoint"] = Vector2.new(1, 0.5);
				Toggle["5f"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["5f"]["Position"] = UDim2.new(1, -3, 0.5, 0);
				Toggle["5f"]["Name"] = [[CheckmarkHolder]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.CheckmarkHolder.UICorner
				Toggle["60"] = Instance.new("UICorner", Toggle["5f"]);
				Toggle["60"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.CheckmarkHolder.Checkmark
				Toggle["61"] = Instance.new("ImageLabel", Toggle["5f"]);
				Toggle["61"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["61"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["61"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["61"]["Image"] = [[rbxassetid://12607793460]];
				Toggle["61"]["Size"] = UDim2.new(1, -2, 1, -2);
				Toggle["61"]["Name"] = [[Checkmark]];
				Toggle["61"]["BackgroundTransparency"] = 1;
				Toggle["61"]["ImageTransparency"] = 1;
				Toggle["61"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.CheckmarkHolder.UIStroke
				Toggle["62"] = Instance.new("UIStroke", Toggle["5f"]);
				Toggle["62"]["Color"] = Color3.fromRGB(25, 25, 25);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.ToggleInactive.UIStroke
				Toggle["63"] = Instance.new("UIStroke", Toggle["5a"]);
				Toggle["63"]["Color"] = Color3.fromRGB(99, 99, 99);
			end

			do
				function Toggle:Toggle(b)
					if b == nil then
						Toggle.State = not Toggle.State
					else
						Toggle.State = b
					end

					if Toggle.State then

						SoapLibrary:tween(Toggle["5f"], {BackgroundColor3 = Color3.fromRGB(22, 255, 116)})
						SoapLibrary:tween(Toggle["61"], {ImageTransparency = 0})
					else

						SoapLibrary:tween(Toggle["5f"], {BackgroundColor3 = Color3.fromRGB(84, 84, 84)})
						SoapLibrary:tween(Toggle["61"], {ImageTransparency = 1})
					end

					options.callback(Toggle.State)
				end
			end


			-- Logic

			do
				Toggle["5a"].MouseEnter:Connect(function()
					Toggle.Hover = true

					SoapLibrary:tween(Toggle["5c"], {Color = Color3.fromRGB(191, 191, 191)})
					SoapLibrary:tween(Toggle["5a"], {BackgroundColor3 = Color3.fromRGB(97, 97, 97)})
				end)

				Toggle["5a"].MouseLeave:Connect(function()
					Toggle.Hover = false

					SoapLibrary:tween(Toggle["5c"], {Color = Color3.fromRGB(24, 24, 24)})
					SoapLibrary:tween(Toggle["5a"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
						Toggle.MouseDown = true
						SoapLibrary:tween(Toggle["5c"], {Color = Color3.fromRGB(255, 255, 255)})
						SoapLibrary:tween(Toggle["5a"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						Toggle:Toggle()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.MouseDown = false
						if Toggle.Hover then
							SoapLibrary:tween(Toggle["5c"], {Color = Color3.fromRGB(158, 158, 158)})
							SoapLibrary:tween(Toggle["5a"], {BackgroundColor3 = Color3.fromRGB(11, 11, 11)})
						else
							SoapLibrary:tween(Toggle["5c"], {Color = Color3.fromRGB(24, 24, 24)})
							SoapLibrary:tween(Toggle["5a"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
						end
					end
				end)
			end

			return Toggle
		end

		function Tab:CreateSlider(options)
			options = SoapLibrary:validate({
				title = "Slider Name",
				min = 0,
				max = 100,
				default = 50,
				callback = function(Value) end
			}, options or {})

			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil,
				Options = options
			}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider
				Slider["36"] = Instance.new("Frame", Tab["1c"]);
				Slider["36"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
				Slider["36"]["Size"] = UDim2.new(0.9890000224113464, 0, 0, 38);
				Slider["36"]["Name"] = [[Slider]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.UICorner
				Slider["37"] = Instance.new("UICorner", Slider["36"]);
				Slider["37"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.UIStroke
				Slider["38"] = Instance.new("UIStroke", Slider["36"]);
				Slider["38"]["Color"] = Color3.fromRGB(71, 71, 71);
				Slider["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.Title
				Slider["39"] = Instance.new("TextLabel", Slider["36"]);
				Slider["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["39"]["TextSize"] = 14;
				Slider["39"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Slider["39"]["Size"] = UDim2.new(1, -24, 1, -13);
				Slider["39"]["Text"] = options.title;
				Slider["39"]["Name"] = [[Title]];
				Slider["39"]["BackgroundTransparency"] = 1;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.UIPadding
				Slider["3a"] = Instance.new("UIPadding", Slider["36"]);
				Slider["3a"]["PaddingTop"] = UDim.new(0, 6);
				Slider["3a"]["PaddingRight"] = UDim.new(0, 6);
				Slider["3a"]["PaddingBottom"] = UDim.new(0, 6);
				Slider["3a"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.Value
				Slider["3b"] = Instance.new("TextLabel", Slider["36"]);
				Slider["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["3b"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["3b"]["TextSize"] = 14;
				Slider["3b"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Slider["3b"]["AnchorPoint"] = Vector2.new(1, 0);
				Slider["3b"]["Size"] = UDim2.new(0, 24, 1, -10);
				Slider["3b"]["Text"] = tostring(options.default);
				Slider["3b"]["Name"] = [[Value]];
				Slider["3b"]["BackgroundTransparency"] = 1;
				Slider["3b"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.SliderBack
				Slider["3c"] = Instance.new("Frame", Slider["36"]);
				Slider["3c"]["BackgroundColor3"] = Color3.fromRGB(58, 58, 58);
				Slider["3c"]["AnchorPoint"] = Vector2.new(0, 1);
				Slider["3c"]["Size"] = UDim2.new(1, 0, 0, 4);
				Slider["3c"]["Position"] = UDim2.new(0, 0, 1, 0);
				Slider["3c"]["Name"] = [[SliderBack]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.SliderBack.UICorner
				Slider["3d"] = Instance.new("UICorner", Slider["3c"]);


				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.SliderBack.UIStroke
				Slider["3e"] = Instance.new("UIStroke", Slider["3c"]);
				Slider["3e"]["Color"] = Color3.fromRGB(132, 132, 132);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.SliderBack.Draggable
				Slider["3f"] = Instance.new("Frame", Slider["3c"]);
				Slider["3f"]["BackgroundColor3"] = Color3.fromRGB(178, 178, 178);
				Slider["3f"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["3f"]["Name"] = [[Draggable]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Slider.SliderBack.Draggable.UICorner
				Slider["40"] = Instance.new("UICorner", Slider["3f"]);
			end

			-- Methods

			function Slider:SetValue(Value)
				if Value == nil then
					local percentage = math.clamp((mouse.X - Slider["36"].AbsolutePosition.X) / (Slider["36"].AbsoluteSize.X), 0, 1)
					local value = math.floor((options.max - options.min) * percentage) + options.min
					Slider["3b"].Text = tostring(value)
					Slider["3f"].Size = UDim2.fromScale(percentage, 1)
				else
					Slider["3b"].Text = tostring(Value)
					Slider["3f"].Size = UDim2.fromScale(((Value - options.min) / (options.max - options.min)), 1)
				end
				options.callback(Slider:GetValue())
			end

			function Slider:GetValue()
				return tonumber(Slider["3b"].Text)
			end

			-- Logic

			do

				Slider["36"].MouseEnter:Connect(function()
					Slider.Hover = true

					SoapLibrary:tween(Slider["38"], {Color = Color3.fromRGB(191, 191, 191)})
				end)

				Slider["36"].MouseLeave:Connect(function()
					Slider.Hover = false

					SoapLibrary:tween(Slider["38"], {Color = Color3.fromRGB(70, 70, 70)})
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover then
						Slider.MouseDown = true
						SoapLibrary:tween(Slider["38"], {Color = Color3.fromRGB(255, 255, 255)})

						if not Slider.Connection then
							Slider.Connection = runService.RenderStepped:Connect(function()
								Slider:SetValue()
							end)
						end
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = false
						if Slider.Hover then
							SoapLibrary:tween(Slider["38"], {Color = Color3.fromRGB(255, 255, 255)})
						else
							SoapLibrary:tween(Slider["38"], {Color = Color3.fromRGB(70, 70, 70)})
						end
						if Slider.Connection then Slider.Connection:Disconnect() end
						Slider.Connection = nil
					end
				end)
			end

			return Slider
		end

		function Tab:CreateDropdown(options)
			options = SoapLibrary:validate({
				title = "Dropdown Name",
				items = {},
				callback = function() end
			}, options or {})

			local Dropdown = {
				Items = {
					["id"] = {
						"value"
					}
				},
				Open = false,
				MouseDown = false,
				Hover = false
			}

			-- Render

			do
				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown
				Dropdown["41"] = Instance.new("Frame", Tab["1c"]);
				Dropdown["41"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
				Dropdown["41"]["Size"] = UDim2.new(0.9890000224113464, 0, 0, 32);
				Dropdown["41"]["ClipsDescendants"] = true;
				Dropdown["41"]["Name"] = [[Dropdown]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.UICorner
				Dropdown["42"] = Instance.new("UICorner", Dropdown["41"]);
				Dropdown["42"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.UIStroke
				Dropdown["43"] = Instance.new("UIStroke", Dropdown["41"]);
				Dropdown["43"]["Color"] = Color3.fromRGB(71, 71, 71);
				Dropdown["43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.Title
				Dropdown["44"] = Instance.new("TextLabel", Dropdown["41"]);
				Dropdown["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["44"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Dropdown["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Dropdown["44"]["TextSize"] = 14;
				Dropdown["44"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Dropdown["44"]["Size"] = UDim2.new(1, -20, 0, 20);
				Dropdown["44"]["Text"] = options.title;
				Dropdown["44"]["Name"] = [[Title]];
				Dropdown["44"]["BackgroundTransparency"] = 1;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.UIPadding
				Dropdown["45"] = Instance.new("UIPadding", Dropdown["41"]);
				Dropdown["45"]["PaddingTop"] = UDim.new(0, 6);
				Dropdown["45"]["PaddingRight"] = UDim.new(0, 6);
				Dropdown["45"]["PaddingBottom"] = UDim.new(0, 6);
				Dropdown["45"]["PaddingLeft"] = UDim.new(0, 6);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.Icon
				Dropdown["46"] = Instance.new("ImageLabel", Dropdown["41"]);
				Dropdown["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["46"]["AnchorPoint"] = Vector2.new(1, 0);
				Dropdown["46"]["Image"] = [[rbxassetid://12607419249]];
				Dropdown["46"]["Size"] = UDim2.new(0, 20, 0, 20);
				Dropdown["46"]["Name"] = [[Icon]];
				Dropdown["46"]["BackgroundTransparency"] = 1;
				Dropdown["46"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.OptionHolder
				Dropdown["47"] = Instance.new("Frame", Dropdown["41"]);
				Dropdown["47"]["BorderSizePixel"] = 0;
				Dropdown["47"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
				Dropdown["47"]["BackgroundTransparency"] = 1;
				Dropdown["47"]["Size"] = UDim2.new(1, 0, 1, -24);
				Dropdown["47"]["Position"] = UDim2.new(0, 0, 0, 26);
				Dropdown["47"]["Visible"] = false;
				Dropdown["47"]["Name"] = [[OptionHolder]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.OptionHolder.UIListLayout
				Dropdown["48"] = Instance.new("UIListLayout", Dropdown["47"]);
				Dropdown["48"]["Padding"] = UDim.new(0, 8);
				Dropdown["48"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			end

			function Dropdown:Add(id, value)
				local Item = {
					Hover = false,
					MouseDown = false
				}
				
				if Dropdown.Items[id] ~= nil then
					return
				end
				
				Dropdown.Items[id] = {
					instance = {},
					value = value
				}

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option
				Dropdown.Items[id].instance["49"] = Instance.new("TextLabel", Dropdown["47"]);
				Dropdown.Items[id].instance["49"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
				Dropdown.Items[id].instance["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Dropdown.Items[id].instance["49"]["TextSize"] = 14;
				Dropdown.Items[id].instance["49"]["TextColor3"] = Color3.fromRGB(192, 192, 192);
				Dropdown.Items[id].instance["49"]["Size"] = UDim2.new(1, 0, 0, 16);
				Dropdown.Items[id].instance["49"]["Text"] = id;

				Dropdown.Items[id].instance["49"]["Name"] = [[Inactive Option]];

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option.UIStroke
				Dropdown.Items[id].instance["4a"] = Instance.new("UIStroke", Dropdown.Items[id].instance["49"]);
				Dropdown.Items[id].instance["4a"]["Color"] = Color3.fromRGB(99, 99, 99);
				Dropdown.Items[id].instance["4a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.SoapLibrary.Main.ConetentContainer.HomeTab.Dropdown.OptionHolder.Inactive Option.UICorner
				Dropdown.Items[id].instance["4b"] = Instance.new("UICorner", Dropdown.Items[id].instance["49"]);
				Dropdown.Items[id].instance["4b"]["CornerRadius"] = UDim.new(0, 2);
				
				Dropdown.Items[id].instance["49"].MouseEnter:Connect(function()
					Item.Hover = true

					SoapLibrary:tween(Dropdown.Items[id].instance["4a"], {Color = Color3.fromRGB(0, 0, 0)})
					--SoapLibrary:tween(Dropdown.Items[id].instance["49"], {BackgroundColor3 = Color3.fromRGB(61, 61, 61)})
				end)

				Dropdown.Items[id].instance["49"].MouseLeave:Connect(function()
					Item.Hover = false
					if not Dropdown.MouseDown then
						--SoapLibrary:tween(Dropdown.Items[id].instance["4a"], {Color = Color3.fromRGB(70, 70, 70)})
					SoapLibrary:tween(Dropdown.Items[id].instance["49"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
					end	
					end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Item.Hover then
						Dropdown.Open = true
						--SoapLibrary:tween(Dropdown.Items[id].instance["4a"], {Color = Color3.fromRGB(255, 255, 255)})
						SoapLibrary:tween(Dropdown.Items[id].instance["49"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						options.callback(value)
						Dropdown:Toggle()
						Dropdown.Open = true
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Item.MouseDown = false
						if Dropdown.Hover then
							--SoapLibrary:tween(Dropdown.Items[id].instance["4a"], {Color = Color3.fromRGB(255, 255, 255)})
							SoapLibrary:tween(Dropdown.Items[id].instance["49"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						else
							--SoapLibrary:tween(Dropdown.Items[id].instance["4a"], {Color = Color3.fromRGB(0, 0, 0)})
						SoapLibrary:tween(Dropdown.Items[id].instance["49"], {BackgroundColor3 = Color3.fromRGB(50, 50, 50)})
						end
					end
				end)
			end

			do
				function Dropdown:Remove(id)
					if Dropdown.Items[id] ~= nil then
						for i, v in pairs(Dropdown.Items[id].instance) do
							v:Destroy()
						end
						Dropdown.Items[id] = nil
					end
				end

				function Dropdown:Clear()
					for i, v in pairs(Dropdown.Items) do
						Dropdown:Remove(i)
					end
				end

				function Dropdown:Toggle()
					if Dropdown.Open then
						SoapLibrary:tween(Dropdown["41"], {Size = UDim2.new(1, 0, 0, 30)}, function()
							Dropdown["47"].Visible = false
						end)
					else
						local count = 0
						for i, v in pairs(Dropdown.Items) do
							if v ~= nil then
								count += 1
							end
						end

						Dropdown["47"].Visible = true

						SoapLibrary:tween(Dropdown["41"], {Size = UDim2.new(1, 0, 0, 30 + (count * 24) + 4)})
					end
					Dropdown.Open = not Dropdown.Open
				end
			end

			-- Logic

			do
				Dropdown["41"].MouseEnter:Connect(function()
					Dropdown.Hover = true

					SoapLibrary:tween(Dropdown["43"], {Color = Color3.fromRGB(0, 0, 0)})
					SoapLibrary:tween(Dropdown["41"], {BackgroundColor3 = Color3.fromRGB(61, 61, 61)})
				end)

				Dropdown["41"].MouseLeave:Connect(function()
					Dropdown.Hover = false

					SoapLibrary:tween(Dropdown["43"], {Color = Color3.fromRGB(70, 70, 70)})
					SoapLibrary:tween(Dropdown["41"], {BackgroundColor3 = Color3.fromRGB(10, 10, 10)})
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.Hover then
						SoapLibrary:tween(Dropdown["43"], {Color = Color3.fromRGB(255, 255, 255)})
						SoapLibrary:tween(Dropdown["41"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						Dropdown:Toggle()
					end
				end)

				uis.InputEnded:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Dropdown.MouseDown = false
						if Dropdown.Hover then
							SoapLibrary:tween(Dropdown["43"], {Color = Color3.fromRGB(255, 255, 255)})
							SoapLibrary:tween(Dropdown["41"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
						else
							SoapLibrary:tween(Dropdown["43"], {Color = Color3.fromRGB(0, 0, 0)})
							SoapLibrary:tween(Dropdown["41"], {BackgroundColor3 = Color3.fromRGB(50, 50, 50)})
						end
					end
				end)
			end

			return Dropdown
		end

		return Tab
	end

	return GUI
end

return SoapLibrary
