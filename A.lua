-- ===== Area Hub BOOT (Delta Executor Safe) =====

repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("CoreGui")

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local lp = Players.LocalPlayer

-- 既存削除
pcall(function()
    CoreGui.AreaHub:Destroy()
end)

local gui = Instance.new("ScreenGui")
gui.Name = "AreaHub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = CoreGui

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(420,260)
main.Position = UDim2.fromScale(0.5,0.5)
main.AnchorPoint = Vector2.new(0.5,0.5)
main.BackgroundColor3 = Color3.fromRGB(60,70,90)
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0,18)

local grad = Instance.new("UIGradient", main)
grad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(140,170,210)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(70,80,100))
}

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-20,0,36)
title.Position = UDim2.fromOffset(10,6)
title.BackgroundTransparency = 1
title.Text = "Area Hub"
title.TextColor3 = Color3.fromRGB(230,240,255)
title.TextSize = 22
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = main

-- 出現アニメ
main.Size = UDim2.fromOffset(0,0)
TweenService:Create(
    main,
    TweenInfo.new(0.4, Enum.EasingStyle.Back),
    {Size = UDim2.fromOffset(420,260)}
):Play()
