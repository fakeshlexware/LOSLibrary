local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Library = {}
function Library:CreateWindow()
	if game.CoreGui:FindFirstChild("LOSLibrary") then
		game.CoreGui:FindFirstChild("LOSLibrary"):Destroy()
	end
	local LOSLibrary = Instance.new("ScreenGui")
	local MainHolder_1 = Instance.new("Frame")
	local Background_1 = Instance.new("ImageLabel")
	local UIStroke_1 = Instance.new("UIStroke")
	local Main_1 = Instance.new("Frame")
	local ElementsHolder_1 = Instance.new("Frame")
	local TopBar_1 = Instance.new("Frame")
	local TabsHolder_1 = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local TitleHolder_1 = Instance.new("Frame")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_6 = Instance.new("UIPadding")
	local CloseGUIBtn_1 = Instance.new("TextButton")
	local UIStroke_9 = Instance.new("UIStroke")
	local OpenGUI_1 = Instance.new("Frame")
	local OpenGUIBtn_1 = Instance.new("ImageButton")
	local UIStroke_10 = Instance.new("UIStroke")
	
	LOSLibrary.Name = "LOSLibrary"
	LOSLibrary.Parent = game.CoreGui
	LOSLibrary.Enabled = true
	
	MainHolder_1.Name = "MainHolder"
	MainHolder_1.Parent = LOSLibrary
	MainHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
	MainHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	MainHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	MainHolder_1.BorderSizePixel = 0
	MainHolder_1.Position = UDim2.new(0.5, 0,0.5, 0)
	MainHolder_1.Size = UDim2.new(0, 371,0, 492)
	MainHolder_1.Draggable = true
	
	local gui = MainHolder_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	Background_1.Name = "Background"
	Background_1.Parent = MainHolder_1
	Background_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Background_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Background_1.BorderSizePixel = 0
	Background_1.Position = UDim2.new(0.5, 0,0.5, 0)
	Background_1.Size = UDim2.new(0, 355,0, 477)
	Background_1.Image = "rbxassetid://14679055438"
	Background_1.ImageTransparency = 0.6000000238418579

	UIStroke_1.Parent = MainHolder_1
	UIStroke_1.Color = Color3.fromRGB(168,154,61)
	UIStroke_1.Thickness = 1

	Main_1.Name = "Main"
	Main_1.Parent = MainHolder_1
	Main_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Main_1.BackgroundTransparency = 1
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.0215633418, 0,0.0162601322, 0)
	Main_1.Size = UDim2.new(0, 355,0, 477)
	
	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0, 0,0.0440251566, 0)
	ElementsHolder_1.Size = UDim2.new(0, 355,0, 456)
	
	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BackgroundTransparency = 1
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Position = UDim2.new(0, 0,-0.00209643599, 0)
	TopBar_1.Size = UDim2.new(0, 69,0, 22)

	TabsHolder_1.Name = "TabsHolder"
	TabsHolder_1.Parent = TopBar_1
	TabsHolder_1.AutomaticSize = Enum.AutomaticSize.X
	TabsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	TabsHolder_1.BackgroundTransparency = 1
	TabsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabsHolder_1.BorderSizePixel = 0
	TabsHolder_1.Position = UDim2.new(0, 69,0, 0)
	TabsHolder_1.Size = UDim2.new(0, 260,0, 22)
	TabsHolder_1.ClipsDescendants = true

	UIListLayout_3.Parent = TabsHolder_1
	UIListLayout_3.Padding = UDim.new(0,2)
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	
	TitleHolder_1.Name = "TitleHolder"
	TitleHolder_1.Parent = TopBar_1
	TitleHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	TitleHolder_1.BackgroundTransparency = 1
	TitleHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TitleHolder_1.BorderSizePixel = 0
	TitleHolder_1.Size = UDim2.new(0, 74,0, 22)

	Title_1.Name = "Title"
	Title_1.Parent = TitleHolder_1
	Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0.466216207, 0,0.5, 0)
	Title_1.Size = UDim2.new(0, 69,0, 22)
	Title_1.Font = Enum.Font.Code
	Title_1.Text = "LOS Hub |"
	Title_1.TextColor3 = Color3.fromRGB(168,154,61)
	Title_1.TextSize = 14
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_6.Parent = Title_1
	UIPadding_6.PaddingLeft = UDim.new(0,5)
	
	CloseGUIBtn_1.Name = "CloseGUIBtn"
	CloseGUIBtn_1.Parent = TopBar_1
	CloseGUIBtn_1.Active = true
	CloseGUIBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseGUIBtn_1.BackgroundTransparency = 1
	CloseGUIBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseGUIBtn_1.BorderSizePixel = 0
	CloseGUIBtn_1.Position = UDim2.new(4.80050182, 0,0, 0)
	CloseGUIBtn_1.Size = UDim2.new(0, 22,0, 22)
	CloseGUIBtn_1.Font = Enum.Font.Code
	CloseGUIBtn_1.Text = "X"
	CloseGUIBtn_1.TextColor3 = Color3.fromRGB(168,154,61)
	CloseGUIBtn_1.TextSize = 18
	CloseGUIBtn_1.MouseButton1Click:Connect(function()
		MainHolder_1.Visible = false
		OpenGUI_1.Visible = true
	end)
	
	UIStroke_9.Parent = Main_1
	UIStroke_9.Color = Color3.fromRGB(168,154,61)
	UIStroke_9.Thickness = 1

	OpenGUI_1.Name = "OpenGUI"
	OpenGUI_1.Parent = LOSLibrary
	OpenGUI_1.AnchorPoint = Vector2.new(0.5, 0.5)
	OpenGUI_1.BackgroundColor3 = Color3.fromRGB(14,14,14)
	OpenGUI_1.BorderColor3 = Color3.fromRGB(0,0,0)
	OpenGUI_1.BorderSizePixel = 0
	OpenGUI_1.Position = UDim2.new(0.5, 0,0.100000001, 0)
	OpenGUI_1.Size = UDim2.new(0, 40,0, 40)
	OpenGUI_1.Visible = false
	
	OpenGUIBtn_1.Name = "OpenGUIBtn"
	OpenGUIBtn_1.Parent = OpenGUI_1
	OpenGUIBtn_1.Active = true
	OpenGUIBtn_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	OpenGUIBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	OpenGUIBtn_1.BorderSizePixel = 0
	OpenGUIBtn_1.Size = UDim2.new(0, 40,0, 40)
	OpenGUIBtn_1.Image = "rbxassetid://14679055438"
	OpenGUIBtn_1.ImageTransparency = 0.4000000059604645	
	OpenGUIBtn_1.MouseButton1Click:Connect(function()
		MainHolder_1.Visible = true
		OpenGUI_1.Visible = false
	end)
	
	UIStroke_10.Parent = OpenGUI_1
	UIStroke_10.Color = Color3.fromRGB(168,154,61)
	UIStroke_10.Thickness = 1
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	function Tabs:CreateTab(TabText)
		local targetTabColorOn = Color3.fromRGB(168,154,61)
		local targetTabColorOff = Color3.fromRGB(148,147,131)
		
		local TabBtn_1 = Instance.new("TextButton")
		local UIPadding_5 = Instance.new("UIPadding")
		local Elements_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		
		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = TabsHolder_1
		TabBtn_1.Active = true
		TabBtn_1.AutomaticSize = Enum.AutomaticSize.X
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Size = UDim2.new(0, 20,0, 22)
		TabBtn_1.SizeConstraint = Enum.SizeConstraint.RelativeXX
		TabBtn_1.Font = Enum.Font.Code
		TabBtn_1.Text = TabText
		TabBtn_1.TextColor3 = Color3.fromRGB(148,147,131)
		TabBtn_1.TextSize = 14

		UIPadding_5.Parent = TabBtn_1
		UIPadding_5.PaddingLeft = UDim.new(0,4)
		UIPadding_5.PaddingRight = UDim.new(0,4)
		
		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Elements_1.BackgroundTransparency = 1
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Size = UDim2.new(0, 355,0, 456)
		
		UIListLayout_2.Parent = Elements_1
		UIListLayout_2.Padding = UDim.new(0,9)
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		
		local tweenInfo = TweenInfo.new(0.1)

		local tweenton = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOff})

		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtn_1 -- Set the first tab as the current tab
			tweenton:Play()
		else
			Elements_1.Visible = false
		end

		TabBtn_1.MouseButton1Click:Connect(function()
			if currentTab then
				tweentoff:Play() -- Turn off color for the previous tab
			end
			tweenton:Play() -- Turn on color for the new tab
			if currentTab and currentTab ~= TabBtn_1 then
				currentTab.TextColor3 = targetTabColorOff -- Set the color of the previously selected tab to off
			end
			currentTab = TabBtn_1 -- Update the current tab
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end
			Elements_1.Visible = true
		end)
		
		local Section = {}
		function Section:CreateSection()
			local Items_1 = Instance.new("Frame")
			local UIPadding_1 = Instance.new("UIPadding")
			local UIListLayout_1 = Instance.new("UIListLayout")
			
			Items_1.Name = "Items"
			Items_1.Parent = Elements_1
			Items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Items_1.BackgroundTransparency = 1
			Items_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Items_1.BorderSizePixel = 0
			Items_1.Size = UDim2.new(0, 173,0, 456)

			UIPadding_1.Parent = Items_1
			UIPadding_1.PaddingLeft = UDim.new(0,6)
			UIPadding_1.PaddingTop = UDim.new(0,8)

			UIListLayout_1.Parent = Items_1
			UIListLayout_1.Padding = UDim.new(0,6)
			UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
			
			local Elements = {}
			function Elements:AddSection(SectionText)
				local Section_1 = Instance.new("Frame")
				local SectionText_1 = Instance.new("TextLabel")
				
				Section_1.Name = "Section"
				Section_1.Parent = Items_1
				Section_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				Section_1.BackgroundTransparency = 1
				Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Section_1.BorderSizePixel = 0
				Section_1.Size = UDim2.new(0, 161,0, 15)

				SectionText_1.Name = "SectionText"
				SectionText_1.Parent = Section_1
				SectionText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SectionText_1.BackgroundTransparency = 1
				SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SectionText_1.BorderSizePixel = 0
				SectionText_1.Position = UDim2.new(0.5, 0,0.5, 0)
				SectionText_1.Size = UDim2.new(0, 161,0, 15)
				SectionText_1.Font = Enum.Font.Code
				SectionText_1.Text = SectionText
				SectionText_1.TextColor3 = Color3.fromRGB(168,154,61)
				SectionText_1.TextSize = 14
			end
			function Elements:AddBox(BoxText,Callback)
				local Box_1 = Instance.new("Frame")
				local UIStroke_7 = Instance.new("UIStroke")
				local BoxText_1 = Instance.new("TextLabel")
				local BoxHolder_1 = Instance.new("Frame")
				local UIStroke_8 = Instance.new("UIStroke")
				local BoxBox_1 = Instance.new("TextBox")
				
				Box_1.Name = "Box"
				Box_1.Parent = Items_1
				Box_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
				Box_1.BackgroundTransparency = 0.800000011920929
				Box_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Box_1.BorderSizePixel = 0
				Box_1.Position = UDim2.new(0, 0,0.140625, 0)
				Box_1.Size = UDim2.new(0, 161,0, 35)

				UIStroke_7.Parent = Box_1
				UIStroke_7.Color = Color3.fromRGB(168,154,61)
				UIStroke_7.Thickness = 1

				BoxText_1.Name = "BoxText"
				BoxText_1.Parent = Box_1
				BoxText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				BoxText_1.BackgroundTransparency = 1
				BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				BoxText_1.BorderSizePixel = 0
				BoxText_1.Position = UDim2.new(0.5, 0,0.271428585, 0)
				BoxText_1.Size = UDim2.new(0, 161,0, 13)
				BoxText_1.Font = Enum.Font.Code
				BoxText_1.Text = BoxText
				BoxText_1.TextColor3 = Color3.fromRGB(168,154,61)
				BoxText_1.TextSize = 13

				BoxHolder_1.Name = "BoxHolder"
				BoxHolder_1.Parent = Box_1
				BoxHolder_1.BackgroundColor3 = Color3.fromRGB(113,107,58)
				BoxHolder_1.BackgroundTransparency = 0.800000011920929
				BoxHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				BoxHolder_1.BorderSizePixel = 0
				BoxHolder_1.Position = UDim2.new(0.0434782617, 0,0.514285743, 0)
				BoxHolder_1.Size = UDim2.new(0, 147,0, 11)

				UIStroke_8.Parent = BoxHolder_1
				UIStroke_8.Color = Color3.fromRGB(168,154,61)
				UIStroke_8.Thickness = 1

				BoxBox_1.Name = "BoxBox"
				BoxBox_1.Parent = BoxHolder_1
				BoxBox_1.Active = true
				BoxBox_1.AnchorPoint = Vector2.new(0.5, 0.5)
				BoxBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				BoxBox_1.BackgroundTransparency = 1
				BoxBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
				BoxBox_1.BorderSizePixel = 0
				BoxBox_1.CursorPosition = -1
				BoxBox_1.Position = UDim2.new(0.5, 0,0.5, 0)
				BoxBox_1.Size = UDim2.new(0, 147,0, 11)
				BoxBox_1.Font = Enum.Font.Code
				BoxBox_1.PlaceholderColor3 = Color3.fromRGB(168,154,61)
				BoxBox_1.PlaceholderText = ""
				BoxBox_1.Text = ""
				BoxBox_1.TextColor3 = Color3.fromRGB(168,154,61)
				BoxBox_1.TextSize = 10
				
				BoxBox_1.FocusLost:Connect(function()
					Callback(BoxBox_1.Text)
				end)
			end
			function Elements:AddButton(ButtonText,Callback)
				Callback = Callback or function()
				end

				local targetButtonColorOn = Color3.fromRGB(168,154,61)
				local targetButtonColorOff = Color3.fromRGB(0,0,0)
				
				local Button_1 = Instance.new("Frame")
				local ButtonBtn_1 = Instance.new("TextButton")
				local UIStroke_2 = Instance.new("UIStroke")
				
				Button_1.Name = "Button"
				Button_1.Parent = Items_1
				Button_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
				Button_1.BackgroundTransparency = 0.800000011920929
				Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Button_1.BorderSizePixel = 0
				Button_1.Size = UDim2.new(0, 161,0, 15)

				ButtonBtn_1.Name = "ButtonBtn"
				ButtonBtn_1.Parent = Button_1
				ButtonBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ButtonBtn_1.BackgroundTransparency = 1
				ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ButtonBtn_1.BorderSizePixel = 0
				ButtonBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ButtonBtn_1.Size = UDim2.new(0, 161,0, 15)
				ButtonBtn_1.Font = Enum.Font.Code
				ButtonBtn_1.Text = ButtonText
				ButtonBtn_1.TextColor3 = Color3.fromRGB(168,154,61)
				ButtonBtn_1.TextSize = 13

				UIStroke_2.Parent = Button_1
				UIStroke_2.Color = Color3.fromRGB(168,154,61)
				UIStroke_2.Thickness = 1
				
				local tweenInfo = TweenInfo.new(0.2)

				local tweenbon = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})
				local tweenboff = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})

				ButtonBtn_1.MouseButton1Click:Connect(function()
					tweenbon:Play()
					wait(0.1)
					tweenboff:Play()
					Callback()
				end)
			end
			function Elements:AddToggle(ToggleText,state,Callback)
				Callback = Callback or function()
				end

				local toggled = state or false
				local debounce = false

				local targetToggleTransOn = 0
				local targetToggleTransOff = 1
				
				local Toggle_1 = Instance.new("Frame")
				local ToggleBtn_1 = Instance.new("TextButton")
				local UIPadding_2 = Instance.new("UIPadding")
				local UIStroke_3 = Instance.new("UIStroke")
				local Toggler_1 = Instance.new("Frame")
				local UIStroke_4 = Instance.new("UIStroke")
				
				Toggle_1.Name = "Toggle"
				Toggle_1.Parent = Items_1
				Toggle_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
				Toggle_1.BackgroundTransparency = 0.800000011920929
				Toggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Toggle_1.BorderSizePixel = 0
				Toggle_1.Size = UDim2.new(0, 161,0, 15)

				ToggleBtn_1.Name = "ToggleBtn"
				ToggleBtn_1.Parent = Toggle_1
				ToggleBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
				ToggleBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				ToggleBtn_1.BackgroundTransparency = 1
				ToggleBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
				ToggleBtn_1.BorderSizePixel = 0
				ToggleBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
				ToggleBtn_1.Size = UDim2.new(0, 161,0, 15)
				ToggleBtn_1.Font = Enum.Font.Code
				ToggleBtn_1.Text = ToggleText
				ToggleBtn_1.TextColor3 = Color3.fromRGB(168,154,61)
				ToggleBtn_1.TextSize = 13
				ToggleBtn_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_2.Parent = ToggleBtn_1
				UIPadding_2.PaddingLeft = UDim.new(0,6)

				UIStroke_3.Parent = Toggle_1
				UIStroke_3.Color = Color3.fromRGB(168,154,61)
				UIStroke_3.Thickness = 1

				Toggler_1.Name = "Toggler"
				Toggler_1.Parent = Toggle_1
				Toggler_1.BackgroundColor3 = Color3.fromRGB(113,107,58)
				Toggler_1.BackgroundTransparency = 1
				Toggler_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Toggler_1.BorderSizePixel = 0
				Toggler_1.Position = UDim2.new(0.906832278, 0,0.200000003, 0)
				Toggler_1.Size = UDim2.new(0, 9,0, 9)

				UIStroke_4.Parent = Toggler_1
				UIStroke_4.Color = Color3.fromRGB(168,154,61)
				UIStroke_4.Thickness = 1
				
				local tweenInfo = TweenInfo.new(0.1)

				local tweentcon = TweenService:Create(Toggler_1, tweenInfo, {BackgroundTransparency = targetToggleTransOn})
				local tweentcoff = TweenService:Create(Toggler_1, tweenInfo, {BackgroundTransparency = targetToggleTransOff})
				
				if toggled then
					tweentcon:Play()
				else
					tweentcoff:Play()
				end
				
				ToggleBtn_1.MouseButton1Click:Connect(
					function()
						if debounce == false then
							if toggled == false then
								debounce = true
								tweentcon:Play()
								debounce = false
								toggled = true
								pcall(Callback, toggled)
							elseif toggled == true then
								debounce = true
								tweentcoff:Play()
								debounce = false
								toggled = false
								pcall(Callback, toggled)
							end
						end
					end)
			end
			function Elements:AddSlider(SliderText,max,Callback)
				local Slider_1 = Instance.new("Frame")
				local UIStroke_5 = Instance.new("UIStroke")
				local SliderText_1 = Instance.new("TextLabel")
				local UIPadding_3 = Instance.new("UIPadding")
				local SliderValue_1 = Instance.new("TextLabel")
				local UIPadding_4 = Instance.new("UIPadding")
				local SliderHolder_1 = Instance.new("Frame")
				local SliderBtn_1 = Instance.new("TextButton")
				local SliderInner_1 = Instance.new("Frame")
				local UIStroke_6 = Instance.new("UIStroke")
				
				Slider_1.Name = "Slider"
				Slider_1.Parent = Items_1
				Slider_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
				Slider_1.BackgroundTransparency = 0.800000011920929
				Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Slider_1.BorderSizePixel = 0
				Slider_1.Position = UDim2.new(0, 0,0.140625, 0)
				Slider_1.Size = UDim2.new(0, 161,0, 35)

				UIStroke_5.Parent = Slider_1
				UIStroke_5.Color = Color3.fromRGB(168,154,61)
				UIStroke_5.Thickness = 1

				SliderText_1.Name = "SliderText"
				SliderText_1.Parent = Slider_1
				SliderText_1.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderText_1.BackgroundTransparency = 1
				SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderText_1.BorderSizePixel = 0
				SliderText_1.Position = UDim2.new(0.33540374, 0,0.242857143, 0)
				SliderText_1.Size = UDim2.new(0, 108,0, 15)
				SliderText_1.Font = Enum.Font.Code
				SliderText_1.Text = SliderText
				SliderText_1.TextColor3 = Color3.fromRGB(168,154,61)
				SliderText_1.TextSize = 13
				SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_3.Parent = SliderText_1
				UIPadding_3.PaddingLeft = UDim.new(0,6)

				SliderValue_1.Name = "SliderValue"
				SliderValue_1.Parent = Slider_1
				SliderValue_1.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderValue_1.BackgroundTransparency = 1
				SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderValue_1.BorderSizePixel = 0
				SliderValue_1.Position = UDim2.new(0.785714269, 0,0.242857143, 0)
				SliderValue_1.Size = UDim2.new(0, 69,0, 15)
				SliderValue_1.Font = Enum.Font.Code
				SliderValue_1.Text = "0/"..max
				SliderValue_1.TextColor3 = Color3.fromRGB(168,154,61)
				SliderValue_1.TextSize = 13
				SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right

				UIPadding_4.Parent = SliderValue_1
				UIPadding_4.PaddingRight = UDim.new(0,6)

				SliderHolder_1.Name = "SliderHolder"
				SliderHolder_1.Parent = Slider_1
				SliderHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderHolder_1.BackgroundTransparency = 1
				SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderHolder_1.BorderSizePixel = 0
				SliderHolder_1.Position = UDim2.new(0, 0,0.45714286, 0)
				SliderHolder_1.Size = UDim2.new(0, 161,0, 18)

				SliderBtn_1.Name = "SliderBtn"
				SliderBtn_1.Parent = SliderHolder_1
				SliderBtn_1.Active = true
				SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				SliderBtn_1.BackgroundTransparency = 1
				SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderBtn_1.BorderSizePixel = 0
				SliderBtn_1.Position = UDim2.new(0.0309999995, 0,0.200000003, 0)
				SliderBtn_1.Size = UDim2.new(0, 151,0, 10)
				SliderBtn_1.Font = Enum.Font.SourceSans
				SliderBtn_1.Text = ""
				SliderBtn_1.TextSize = 14

				SliderInner_1.Name = "SliderInner"
				SliderInner_1.Parent = SliderBtn_1
				SliderInner_1.BackgroundColor3 = Color3.fromRGB(113,107,58)
				SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
				SliderInner_1.BorderSizePixel = 0
				SliderInner_1.Position = UDim2.new(-1.21261905e-06, 0,0, 0)
				SliderInner_1.Size = UDim2.new(0, 0,0, 10)

				UIStroke_6.Parent = SliderInner_1
				UIStroke_6.Color = Color3.fromRGB(168,154,61)
				UIStroke_6.Thickness = 1
				
				local isDragging = false

				SliderBtn_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = true
					end
				end)

				game:GetService("UserInputService").InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = false
					end
				end)

				game:GetService("RunService").RenderStepped:Connect(function()
					if isDragging then
						local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
						local sliderPosition = SliderBtn_1.AbsolutePosition
						local sliderWidth = SliderBtn_1.AbsoluteSize.X
						local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
						SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)

						-- Calculate and display value label
						local value = fillWidth / sliderWidth
						local minValue = 0
						local maxValue = max
						local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)
						SliderValue_1.Text = tostring(displayValue).."/"..tostring(maxValue)
						Callback(displayValue)
					end
				end)
			end
			return Elements
		end
		return Section
	end
	return Tabs
end
return Library
