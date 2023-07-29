-- Ce script doit être placé dans un LocalScript sous StarterPlayerScripts
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Vérifiez si le joueur est sur le jeu Legends of Speed
if game.PlaceId ~= 606849621 then
    player:Kick("This GUI script is not compatible for any game other than JailBreak")
    return
end

local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "dank.pls - JailBreakGUI";
    Text = "An optimized GUI script for the game JailBreak.";
})

-- Fonction pour créer l'interface utilisateur graphique (GUI)
local function createGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.BackgroundColor3 = Color3.fromRGB(192, 192, 192) -- Gris clair
    frame.Parent = screenGui

    local topBar = Instance.new("Frame")
    topBar.Position = UDim2.new(0, 0, 0, 0)
    topBar.Size = UDim2.new(1, 0, 0, 25)
    topBar.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Gris foncé
    topBar.Parent = frame

    local textLabel = Instance.new("TextLabel")
    textLabel.Text = "dank.pls - JailBreakGUI"
    textLabel.Position = UDim2.new(0, 10, 0, 0)
    textLabel.Size = UDim2.new(1, -20, 1, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Blanc
    textLabel.Parent = topBar

    local hideButton = Instance.new("TextButton")
    hideButton.Text = "-"
    hideButton.Position = UDim2.new(1, -25, 0, 0)
    hideButton.Size = UDim2.new(0, 25, 1, 0)
    hideButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Rouge
    hideButton.TextColor3 = Color3.fromRGB(255, 255, 255)-- Blanc
    hideButton.Parent = topBar

    local showButton = Instance.new("TextButton")
    showButton.Text = "+"
    showButton.Position = UDim2.new(1, -25, 0.5, -12.5)
    showButton.Size = UDim2.new(0, 25, 0, 25)
    showButton.Visible = false
    showButton.Parent = screenGui

    -- Nouveau bouton pour exécuter un script spécifié
    local newButton = Instance.new("TextButton")
    newButton.Text = "Teleport - SnowIsland"
    newButton.Position = UDim2.new(0, 10, 0.1 ,35)
    newButton.Size = UDim2.new(0.5 , -20 , .15 , -10 )
    newButton.Style = Enum.ButtonStyle.Custom
    newButton.BackgroundColor3= Color3.fromRGB(44 ,47 ,51) -- Gris foncé (Discord)
    newButton.TextColor3= Color3.fromRGB(255 ,255 ,255) -- Blanc
    -- Nouveau bouton "Teleportation"
    local teleportButton = Instance.new("TextButton")
    teleportButton.Text = "Teleportation"
    teleportButton.Position = UDim2.new(0, 10, 0.5, 35)
    teleportButton.Size = UDim2.new(1, -20, 0.1, 0)
    teleportButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    teleportButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    teleportButton.Parent = frame

    local teleportButtonCorner = Instance.new("UICorner")
    teleportButtonCorner.CornerRadius = UDim.new(0, 10)
    teleportButtonCorner.Parent = teleportButton

    -- Sous-menu "Teleportation"
    local teleportFrame = Instance.new("Frame")
    teleportFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    teleportFrame.Size = UDim2.new(0, 300, 0, 200)
    teleportFrame.BackgroundColor3 = Color3.fromRGB(192, 192, 192) -- Gris clair
    teleportFrame.Visible = false
    teleportFrame.Parent = screenGui

    local topBar2 = Instance.new("Frame")
    topBar2.Position = UDim2.new(0, 0, 0, 0)
    topBar2.Size = UDim2.new(1, 0, 0, 25)
    topBar2.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Gris foncé
    topBar2.Parent = teleportFrame

    local textLabel2 = Instance.new("TextLabel")
    textLabel2.Text = "Teleportation"
    textLabel2.Position = UDim2.new(0, 10, 0, 0)
    textLabel2.Size = UDim2.new(1, -20, 1, 0)
    textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255) -- Blanc
    textLabel2.Parent = topBar2

    local hideButton2 = Instance.new("TextButton")
    hideButton2.Text = "x"
    hideButton2.Position = UDim2.new(1, -25, 0, 0)
    hideButton2.Size = UDim2.new(0, 25, 1, 0)
    hideButton2.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Rouge
    hideButton2.TextColor3 = Color3.fromRGB(255, 255, 255)-- Blanc
    hideButton2.Parent = topBar2

    local destinationButton = Instance.new("TextButton")
    destinationButton.Text = "Destination"
    destinationButton.Position = UDim2.new(0, 10, 0.1, 35)
    destinationButton.Size = UDim2.new(1, -20, 0.1, 0)
    destinationButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    destinationButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    destinationButton.Parent = teleportFrame

    local destinationButtonCorner = Instance.new("UICorner")
    destinationButtonCorner.CornerRadius = UDim.new(0, 10)
    destinationButtonCorner.Parent = destinationButton

    local playersButton = Instance.new("TextButton")
    playersButton.Text = "Players"
    playersButton.Position = UDim2.new(0, 10, 0.3, 35)
    playersButton.Size = UDim2.new(1, -20, 0.1, 0)
    playersButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    playersButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    playersButton.Parent = teleportFrame

    local playersButtonCorner = Instance.new("UICorner")
    playersButtonCorner.CornerRadius = UDim.new(0, 10)
    playersButtonCorner.Parent = playersButto    n

    -- Afficher le sous-menu "Teleportation" lorsque le bouton "Teleportation" est cliqué
    teleportButton.MouseButton1Click:Connect(function()
        teleportFrame.Visible = true
    end)

    -- Cacher le sous-menu "Teleportation" lorsque le bouton "x" est cliqué
    hideButton2.MouseButton1Click:Connect(function()
        teleportFrame.Visible = false
    end)

    -- Sous-menu "Destination"
    local destinationFrame = Instance.new("Frame")
    destinationFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    destinationFrame.Size = UDim2.new(0, 300, 0, 200)
    destinationFrame.BackgroundColor3 = Color3.fromRGB(192, 192, 192) -- Gris clair
    destinationFrame.Visible = false
    destinationFrame.Parent = screenGui

    local topBar3 = Instance.new("Frame")
    topBar3.Position = UDim2.new(0, 0, 0, 0)
    topBar3.Size = UDim2.new(1, 0, 0, 25)
    topBar3.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Gris foncé
    topBar3.Parent = destinationFrame

    local textLabel3 = Instance.new("TextLabel")
    textLabel3.Text = "Destination"
    textLabel3.Position = UDim2.new(0, 10, 0, 0)
    textLabel3.Size = UDim2.new(1, -20, 1, 0)
    textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255) -- Blanc
    textLabel3.Parent = topBar3

    local hideButton3 = Instance.new("TextButton")
    hideButton3.Text = "x"
    hideButton3.Position = UDim2.new(1, -25, 0, 0)
    hideButton3.Size = UDim2.new(0, 25, 1, 0)
    hideButton3.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Rouge
    hideButton3.TextColor3 = Color3.fromRGB(255,    255, 255)-- Blanc
    hideButton3.Parent = topBar3

    local bankButton = Instance.new("TextButton")
    bankButton.Text = "Bank"
    bankButton.Position = UDim2.new(0, 10, 0.1, 35)
    bankButton.Size = UDim2.new(1, -20, 0.1, 0)
    bankButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    bankButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    bankButton.Parent = destinationFrame

    local bankButtonCorner = Instance.new("UICorner")
    bankButtonCorner.CornerRadius = UDim.new(0, 10)
    bankButtonCorner.Parent = bankButton

    local jewelryStoreButton = Instance.new("TextButton")
    jewelryStoreButton.Text = "Jewelry store"
    jewelryStoreButton.Position = UDim2.new(0, 10, 0.3, 35)
    jewelryStoreButton.Size = UDim2.new(1, -20, 0.1, 0)
    jewelryStoreButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    jewelryStoreButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    jewelryStoreButton.Parent = destinationFrame

    local jewelryStoreButtonCorner = Instance.new("UICorner")
    jewelryStoreButtonCorner.CornerRadius = UDim.new(0, 10)
    jewelryStoreButtonCorner.Parent = jewelryStoreButton

    local criminalBaseButton = Instance.new("TextButton")
    criminalBaseButton.Text = "CriminalBase"
    criminalBaseButton.Position = UDim2.new(0, 10, 0.5, 35)
    criminalBaseButton.Size = UDim2.new(1, -20, 0.1, 0)
    criminalBaseButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    criminalBaseButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    criminalBaseButton.Parent = destinationFrame

    local criminalBaseButtonCorner = Instance.new("UICorner")
    criminalBaseButtonCorner.CornerRadius = UDim.new(0, 10)
    criminalBaseButtonCorner.Parent = criminalBaseButton

    local officePolice1Button = Instance.new("TextButton")
    officePolice1Button.Text = "OfficePolice - 1"
    officePolice1Button.Position = UDim2.new(0, 10, 0.7, 35)
    officePolice1Button.Size = UDim2.new(1, -20, 0.1, 0)
    officePolice1Button.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    officePolice1Button.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    officePolice1Button.Parent = destinationFrame

    local officePolice1ButtonCorner = Instance.new("UICorner")
    officePolice1ButtonCorner.CornerRadius = UDim.new(0, 10)
    officePolice1ButtonCorner.Parent = officePolice1Button

    local prisonButton = Instance.new("TextButton")
    prisonButton.Text = "Prison"
    prisonButton.Position = UDim2.new(0, 10, 0.9, 35)
    prisonButton.Size = UDim2.new(1, -20, 0.1, 0)
    prisonButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    prisonButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    prisonButton.Parent = destinationFrame

    local prisonButtonCorner = Instance.new("UICorner")
    prisonButtonCorner.CornerRadius = UDim.new(0, 10)
    prisonButtonCorner.Parent = prisonButton

    local officePolice2Button = Instance.new("TextButton")
    officePolice2Button.Text = "OfficePolice - 2"
    officePolice2Button.Position = UDim2.new(0, 10, 1.1, 35)
    officePolice2Button.Size = UDim2.new(1, -20, 0.1, 0)
    officePolice2Button.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    officePolice2Button.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    officePolice2Button.Parent = destinationFrame

    local officePolice2ButtonCorner = Instance.new("UICorner")
    officePolice2ButtonCorner.CornerRadius = UDim.new(0, 10)
    officePolice2ButtonCorner.Parent = officePolice2Button

    local button1 = Instance.new("TextButton")
    button1.Text = "Button1"
    button1.Position = UDim2.new(0, 10, 1.3, 35)
    button1.Size = UDim2.new(1, -20, 0.1, 0)
    button1.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    button1.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    button1.Parent = destinationFrame

    local button1Corner = Instance.new("UICorner")
    button1Corner.CornerRadius = UDim.new(0, 10)
    button1Corner.Parent = button1

    local button2 = Instance.new("TextButton")
    button2.Text = "Button2"
    button2.Position = UDim2.new(0, 10, 1.5, 35)
    button2.Size = UDim2.new(1, -20, 0.1, 0)
    button2.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    button2.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    button2.Parent = destinationFrame

    local button2Corner = Instance.new("UICorner")
    button2Corner.CornerRadius = UDim.new(0, 10)
    button2Corner.Parent = button2

    local button3 = Instance.new("TextButton")
    button3.Text = "Button3"
    button3.Position = UDim2.new(0, 10, 1.7, 35)
    button3.Size = UDim2.new(1, -20, 0.1, 0)
    button3.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    button3.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    button3.Parent = destinationFrame

    local button3Corner = Instance.new("UICorner")
    button3Corner.CornerRadius = UDim.new(0, 10)
    button3Corner.Parent = button3

    local button4 = Instance.new("TextButton")
    button4.Text = "Button4"
    button4.Position = UDim2.new(0, 10, 1.9, 35)
    button4.Size = UDim2.new(1, -20, 0.1, 0)
    button4.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
    button4.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
    button4.Parent = destinationFrame

    local button4Corner = Instance.new("UICorner")
    button4Corner.CornerRadius = UDim.new(0, 10)
    button4Corner.Parent = button4

    -- Afficher le sous-menu "Destination" lorsque le bouton "Destination" est cliqué
    destinationButton.MouseButton1Click:Connect(function()
        destinationFrame.Visible = true
    end)

    -- Cacher le sous-menu "Destination" lorsque le bouton "x" est cliqué
    hideButton3.MouseButton1Click:Connect(function()
        destinationFrame.Visible = false
    end)

    -- Sous-menu "Players"
    local playersFrame = Instance.new("Frame")
    playersFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    playersFrame.Size = UDim2.new(0, 300, 0, 200)
    playersFrame.BackgroundColor3 = Color3.fromRGB(192, 192, 192) -- Gris clair
    playersFrame.Visible = false
    playersFrame.Parent = screenGui

    local topBar4 = Instance.new("Frame")
    topBar4.Position = UDim2.new(0, 0, 0, 0)
    topBar4.Size = UDim2.new(1, 0, 0, 25)
    topBar4.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Gris foncé
    topBar4.Parent = playersFrame

    local textLabel4 = Instance.new("TextLabel")
    textLabel4.Text = "Players"
    textLabel4.Position = UDim2.new(0, 10, 0, 0)
    textLabel4.Size = UDim2.new(1, -20, 1, 0)
    textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255) -- Blanc
    textLabel4.Parent = topBar4

    local hideButton4 = Instance.new("TextButton")
    hideButton4.Text = "x"
    hideButton4.Position = UDim2.new(1, -25, 0, 0)
    hideButton4.Size = UDim2.new(0, 25, 1, 0)
    hideButton4.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Rouge
    hideButton4.TextColor3 = Color3.fromRGB(255, 255, 255)-- Blanc
    hideButton4.Parent = topBar4

    -- Liste des joueurs
    local playersList = Instance.new("ScrollingFrame")
    playersList.Position = UDim2.new(0, 10, 0.1, 35)
    playersList.Size = UDim2.new(1, -20, 0.9, -45)
    playersList.CanvasSize = UDim2.new(0, 0, #Players:GetPlayers(), 0)
    playersList.Parent = playersFrame

    for i, player in ipairs(Players:GetPlayers()) do
        local playerButton = Instance.new("TextButton")
        playerButton.Text = player.Name
        playerButton.Position = UDim2.new(0, 0, (i - 1) * 30, 0)
        playerButton.Size = UDim2.new(1, 0, 30, 0)
        playerButton.BackgroundColor3 = Color3.fromRGB(44,47,51) -- Gris foncé (Discord)
        playerButton.TextColor3 = Color3.fromRGB(255,255,255) -- Blanc
        playerButton.Parent = playersList

        playerButton.MouseButton1Click:Connect(function()
            local character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")

            -- Set the desired position
            local targetPosition = HumanoidRootPart.Position + Vector3.new(0, 0, 10000)

            -- Teleport the player
            player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
        end)
    end

    -- Afficher le sous-menu "Players" lorsque le bouton "Players" est cliqué
    playersButton.MouseButton1Click:Connect(function()
        playersFrame.Visible = true
    end)

    -- Cacher le sous-menu "Players" lorsque le bouton "x" est cliqué
    hideButton4.MouseButton1Click:Connect(function()
        playersFrame.Visible = false
    end)
end

-- Créer l'interface utilisateur graphique (GUI) lorsque le script est exécuté pour la première fois
createGUI()

-- Ajouter un gestionnaire d'événements pour détecter lorsque le joueur meurt et recréer l'interface utilisateur graphique (GUI)
player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Connect(function()
        wait(3)
        createGUI()
    end)
end)
