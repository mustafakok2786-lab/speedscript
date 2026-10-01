-- HERE IS THE DISCORD LINK:https://discord.gg/t7Cyms8HZ
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("LoadedGui") then playerGui.LoadedGui:Destroy() end
if playerGui:FindFirstChild("ScriptSatisMenu") then playerGui.ScriptSatisMenu:Destroy() end

local loadedGui = Instance.new("ScreenGui")
loadedGui.Name = "LoadedGui"
loadedGui.Parent = playerGui

local label = Instance.new("TextLabel")
label.Name = "LoadedText"
label.Parent = loadedGui
label.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
label.BackgroundTransparency = 0.25
label.AnchorPoint = Vector2.new(0.5, 0) 
label.Position = UDim2.new(0.5, 0, 0.1, 0)
label.AutomaticSize = Enum.AutomaticSize.XY

label.Text = "⚡ HSYN64🇹🇷 ON TOP! ⚡"
label.TextColor3 = Color3.fromRGB(0, 240, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 24

local labelCorner = Instance.new("UICorner")
labelCorner.CornerRadius = UDim.new(0, 8)
labelCorner.Parent = label

local stroke = Instance.new("UIStroke")
stroke.Parent = label
stroke.Color = Color3.fromRGB(0, 255, 200)
stroke.Thickness = 2
stroke.Transparency = 0.1

local padding = Instance.new("UIPadding")
padding.PaddingLeft = UDim.new(0, 20)
padding.PaddingRight = UDim.new(0, 20)
padding.PaddingTop = UDim.new(0, 12)
padding.PaddingBottom = UDim.new(0, 12)
padding.Parent = label

task.wait(5)
loadedGui:Destroy()

local lang = "TR"
local texts = {
    TR = {
        KeyTitle = "🔑 Key Sistemi",
        KeyPlaceholder = "Key gir...",
        CheckKey = "KONTROL ET",
        GetKey = "Copy Get Key Link",
        InvalidKey = "❌ Geçersiz Key!",
        ValidKey = "✅ Key Doğru!",
        MenuTitle = "  🔥 HSYN64🇹🇷 MENU",
        SpeedLabel = "Hız (WalkSpeed):",
        SpeedPlaceholder = "Örn: 16, 50...",
        JumpLabel = "Zıplama (JumpPower):",
        JumpPlaceholder = "Örn: 50, 100...",
        ApplyBtn = "UYGULA",
        AppliedNotif = "✅ Hız ve Zıplama başarıyla uygulandı!"
    },
    EN = {
        KeyTitle = "🔑 Key System",
        KeyPlaceholder = "Enter key...",
        CheckKey = "VERIFY",
        GetKey = "Copy Get Key Link",
        InvalidKey = "❌ Invalid Key!",
        ValidKey = "✅ Valid Key!",
        MenuTitle = "  🔥 HSYN64🇹🇷 MENU",
        SpeedLabel = "Speed (WalkSpeed):",
        SpeedPlaceholder = "Ex: 16, 50...",
        JumpLabel = "Jump (JumpPower):",
        JumpPlaceholder = "Ex: 50, 100...",
        ApplyBtn = "APPLY",
        AppliedNotif = "✅ Speed and Jump applied successfully!"
    }
}

local mainGui = Instance.new("ScreenGui")
mainGui.Name = "ScriptSatisMenu"
mainGui.ResetOnSpawn = false
mainGui.Parent = playerGui

local createKeySystem, createMainMenu

local langFrame = Instance.new("Frame")
langFrame.Parent = mainGui
langFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
langFrame.Position = UDim2.new(0.5, -125, 0.4, -90)
langFrame.Size = UDim2.new(0, 250, 0, 150)
langFrame.Active = true
langFrame.Draggable = true

local lCorner = Instance.new("UICorner")
lCorner.CornerRadius = UDim.new(0, 10)
lCorner.Parent = langFrame

local lTitle = Instance.new("TextLabel")
lTitle.Parent = langFrame
lTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
lTitle.Size = UDim2.new(1, 0, 0, 40)
lTitle.Font = Enum.Font.GothamBold
lTitle.Text = "  🌐 Dil Seçimi / Language"
lTitle.TextColor3 = Color3.fromRGB(0, 240, 255)
lTitle.TextSize = 14
lTitle.TextXAlignment = Enum.TextXAlignment.Left

local ltCorner = Instance.new("UICorner")
ltCorner.CornerRadius = UDim.new(0, 10)
ltCorner.Parent = lTitle

local btnTR = Instance.new("TextButton")
btnTR.Parent = langFrame
btnTR.BackgroundColor3 = Color3.fromRGB(0, 160, 90)
btnTR.Position = UDim2.new(0, 15, 0, 55)
btnTR.Size = UDim2.new(1, -30, 0, 35)
btnTR.Font = Enum.Font.GothamBold
btnTR.Text = "Türkçe (TR)"
btnTR.TextColor3 = Color3.fromRGB(255, 255, 255)
btnTR.TextSize = 14
local btnTRCorner = Instance.new("UICorner")
btnTRCorner.CornerRadius = UDim.new(0, 6)
btnTRCorner.Parent = btnTR

local btnEN = Instance.new("TextButton")
btnEN.Parent = langFrame
btnEN.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
btnEN.Position = UDim2.new(0, 15, 0, 100)
btnEN.Size = UDim2.new(1, -30, 0, 35)
btnEN.Font = Enum.Font.GothamBold
btnEN.Text = "English (EN)"
btnEN.TextColor3 = Color3.fromRGB(255, 255, 255)
btnEN.TextSize = 14
local btnENCorner = Instance.new("UICorner")
btnENCorner.CornerRadius = UDim.new(0, 6)
btnENCorner.Parent = btnEN

btnTR.MouseButton1Click:Connect(function()
    lang = "TR"
    langFrame:Destroy()
    createKeySystem()
end)

btnEN.MouseButton1Click:Connect(function()
    lang = "EN"
    langFrame:Destroy()
    createKeySystem()
end)

function createKeySystem()
    local t = texts[lang]
    
    local keyFrame = Instance.new("Frame")
    keyFrame.Parent = mainGui
    keyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    keyFrame.Position = UDim2.new(0.5, -125, 0.4, -90)
    keyFrame.Size = UDim2.new(0, 250, 0, 180)
    keyFrame.Active = true
    keyFrame.Draggable = true

    local kCorner = Instance.new("UICorner")
    kCorner.CornerRadius = UDim.new(0, 10)
    kCorner.Parent = keyFrame

    local kTitle = Instance.new("TextLabel")
    kTitle.Parent = keyFrame
    kTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    kTitle.Size = UDim2.new(1, 0, 0, 40)
    kTitle.Font = Enum.Font.GothamBold
    kTitle.Text = "  " .. t.KeyTitle
    kTitle.TextColor3 = Color3.fromRGB(0, 240, 255)
    kTitle.TextSize = 15
    kTitle.TextXAlignment = Enum.TextXAlignment.Left

    local ktCorner = Instance.new("UICorner")
    ktCorner.CornerRadius = UDim.new(0, 10)
    ktCorner.Parent = kTitle

    local keyBox = Instance.new("TextBox")
    keyBox.Parent = keyFrame
    keyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    keyBox.Position = UDim2.new(0, 15, 0, 55)
    keyBox.Size = UDim2.new(1, -30, 0, 32)
    keyBox.Font = Enum.Font.Gotham
    keyBox.PlaceholderText = t.KeyPlaceholder
    keyBox.Text = ""
    keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyBox.TextSize = 14
    local kbCorner = Instance.new("UICorner")
    kbCorner.CornerRadius = UDim.new(0, 6)
    kbCorner.Parent = keyBox

    local verifyBtn = Instance.new("TextButton")
    verifyBtn.Parent = keyFrame
    verifyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 110)
    verifyBtn.Position = UDim2.new(0, 15, 0, 95)
    verifyBtn.Size = UDim2.new(1, -30, 0, 32)
    verifyBtn.Font = Enum.Font.GothamBold
    verifyBtn.Text = t.CheckKey
    verifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    verifyBtn.TextSize = 14
    local vbCorner = Instance.new("UICorner")
    vbCorner.CornerRadius = UDim.new(0, 6)
    vbCorner.Parent = verifyBtn

    local getKeyBtn = Instance.new("TextButton")
    getKeyBtn.Parent = keyFrame
    getKeyBtn.BackgroundColor3 = Color3.fromRGB(60, 100, 200)
    getKeyBtn.Position = UDim2.new(0, 15, 0, 135)
    getKeyBtn.Size = UDim2.new(1, -30, 0, 30)
    getKeyBtn.Font = Enum.Font.GothamBold
    getKeyBtn.Text = t.GetKey
    getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    getKeyBtn.TextSize = 13
    local gkbCorner = Instance.new("UICorner")
    gkbCorner.CornerRadius = UDim.new(0, 6)
    gkbCorner.Parent = getKeyBtn

    local VALID_KEYS = {
        ["apoyabasayim31"] = true,
        ["fuckapo31"] = true
    }

    verifyBtn.MouseButton1Click:Connect(function()
        local enteredKey = string.match(keyBox.Text, "^%s*(.-)%s*$")
        
        if VALID_KEYS[enteredKey] then
            game.StarterGui:SetCore("SendNotification", {
                Title = "HSYN64",
                Text = t.ValidKey,
                Duration = 2
            })
            keyFrame:Destroy()
            createMainMenu()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "HSYN64",
                Text = t.InvalidKey,
                Duration = 2
            })
        end
    end)

    getKeyBtn.MouseButton1Click:Connect(function()
        pcall(function()
            setclipboard("https://discord.gg/t7Cyms8HZ")
        end)
        game.StarterGui:SetCore("SendNotification", {
            Title = "HSYN64",
            Text = "Link kopyalandı! / Link copied!",
            Duration = 2
        })
    end)
end

function createMainMenu()
    local t = texts[lang]
    local scriptActive = true
    local lastSpeed = nil
    local lastJump = nil

   
    task.spawn(function()
        while scriptActive do
            task.wait(0.1)
            local char = player.Character
            if char and scriptActive then
                local humanoid = char:FindFirstChild("Humanoid")
                if humanoid then
                    if lastSpeed then
                        humanoid.WalkSpeed = lastSpeed
                    end
                    if lastJump then
                        humanoid.UseJumpPower = true
                        humanoid.JumpPower = lastJump
                    end
                end
            end
        end
    end)

    local mainFrame = Instance.new("Frame")
    mainFrame.Parent = mainGui
    mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    mainFrame.Position = UDim2.new(0.5, -125, 0.4, -110)
    mainFrame.Size = UDim2.new(0, 250, 0, 215)
    mainFrame.Active = true
    mainFrame.Draggable = true

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = mainFrame

    local title = Instance.new("TextLabel")
    title.Parent = mainFrame
    title.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Font = Enum.Font.GothamBold
    title.Text = t.MenuTitle
    title.TextColor3 = Color3.fromRGB(0, 240, 255)
    title.TextSize = 15
    title.TextXAlignment = Enum.TextXAlignment.Left

    local titleCorner = Instance.new("UICorner")
    titleCorner.CornerRadius = UDim.new(0, 10)
    titleCorner.Parent = title

    local closeButton = Instance.new("TextButton")
    closeButton.Parent = title
    closeButton.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Font = Enum.Font.GothamBold
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextSize = 16

    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 6)
    closeCorner.Parent = closeButton

    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Parent = title
    minimizeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
    minimizeButton.Position = UDim2.new(1, -70, 0, 5)
    minimizeButton.Size = UDim2.new(0, 30, 0, 30)
    minimizeButton.Font = Enum.Font.GothamBold
    minimizeButton.Text = "-"
    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeButton.TextSize = 18

    local minCorner = Instance.new("UICorner")
    minCorner.CornerRadius = UDim.new(0, 6)
    minCorner.Parent = minimizeButton

    local speedLabel = Instance.new("TextLabel")
    speedLabel.Parent = mainFrame
    speedLabel.BackgroundTransparency = 1
    speedLabel.Position = UDim2.new(0, 15, 0, 48)
    speedLabel.Size = UDim2.new(1, -30, 0, 20)
    speedLabel.Font = Enum.Font.GothamBold
    speedLabel.Text = t.SpeedLabel
    speedLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
    speedLabel.TextSize = 12
    speedLabel.TextXAlignment = Enum.TextXAlignment.Left

    local speedBox = Instance.new("TextBox")
    speedBox.Parent = mainFrame
    speedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    speedBox.Position = UDim2.new(0, 15, 0, 70)
    speedBox.Size = UDim2.new(1, -30, 0, 26)
    speedBox.Font = Enum.Font.Gotham
    speedBox.PlaceholderText = t.SpeedPlaceholder
    speedBox.Text = ""
    speedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedBox.TextSize = 14

    local speedBoxCorner = Instance.new("UICorner")
    speedBoxCorner.CornerRadius = UDim.new(0, 6)
    speedBoxCorner.Parent = speedBox

    local jumpLabel = Instance.new("TextLabel")
    jumpLabel.Parent = mainFrame
    jumpLabel.BackgroundTransparency = 1
    jumpLabel.Position = UDim2.new(0, 15, 0, 100)
    jumpLabel.Size = UDim2.new(1, -30, 0, 20)
    jumpLabel.Font = Enum.Font.GothamBold
    jumpLabel.Text = t.JumpLabel
    jumpLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
    jumpLabel.TextSize = 12
    jumpLabel.TextXAlignment = Enum.TextXAlignment.Left

    local jumpBox = Instance.new("TextBox")
    jumpBox.Parent = mainFrame
    jumpBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    jumpBox.Position = UDim2.new(0, 15, 0, 122)
    jumpBox.Size = UDim2.new(1, -30, 0, 26)
    jumpBox.Font = Enum.Font.Gotham
    jumpBox.PlaceholderText = t.JumpPlaceholder
    jumpBox.Text = ""
    jumpBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    jumpBox.TextSize = 14

    local jumpBoxCorner = Instance.new("UICorner")
    jumpBoxCorner.CornerRadius = UDim.new(0, 6)
    jumpBoxCorner.Parent = jumpBox

    local applyButton = Instance.new("TextButton")
    applyButton.Parent = mainFrame
    applyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 110)
    applyButton.Position = UDim2.new(0, 15, 0, 160)
    applyButton.Size = UDim2.new(1, -30, 0, 32)
    applyButton.Font = Enum.Font.GothamBold
    applyButton.Text = t.ApplyBtn
    applyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    applyButton.TextSize = 15

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = applyButton

    local isMinimized = false
    minimizeButton.MouseButton1Click:Connect(function()
        isMinimized = not isMinimized
        if isMinimized then
            minimizeButton.Text = "+"
            speedLabel.Visible = false
            speedBox.Visible = false
            jumpLabel.Visible = false
            jumpBox.Visible = false
            applyButton.Visible = false
            mainFrame.Size = UDim2.new(0, 250, 0, 40)
        else
            minimizeButton.Text = "-"
            speedLabel.Visible = true
            speedBox.Visible = true
            jumpLabel.Visible = true
            jumpBox.Visible = true
            applyButton.Visible = true
            mainFrame.Size = UDim2.new(0, 250, 0, 215)
        end
    end)

    
    closeButton.MouseButton1Click:Connect(function()
        scriptActive = false
        local char = player.Character
        if char then
            local humanoid = char:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16
                humanoid.JumpPower = 50
            end
        end
        mainGui:Destroy()
    end)

    applyButton.MouseButton1Click:Connect(function()
        local speedVal = tonumber(speedBox.Text)
        local jumpVal = tonumber(jumpBox.Text)
        
        if speedVal then
            lastSpeed = speedVal
        end

        if jumpVal then
            lastJump = jumpVal
        end

        game.StarterGui:SetCore("SendNotification", {
            Title = "HSYN64🇹🇷",
            Text = t.AppliedNotif,
            Duration = 2
        })
    end)
end
