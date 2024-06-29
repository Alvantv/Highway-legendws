
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/ui%20libs2", true))()
local example = library:CreateWindow({
  text = "Highway Legends by Henclin"
})
example:AddLabel("Vehicle Speed", function()
end)
example:AddBox("Enter Vehicle Speed", function(object, focus)
	if focus then
		getfenv().speed = tonumber(object.Text)
	end
end)
example:AddLabel("Vehicle Teleport Delay", function()
end)
example:AddBox("Enter Tp Delay", function(object, focus)
	if focus then
		getfenv().delay = tonumber(object.Text)
	end
end)
example:AddToggle("Auto Farm", function(state)
    getfenv().auto = (state and true or false)
if  workspace.Camera.CameraSubject ~= nil and  workspace.Camera.CameraSubject.Name == "DriveSeat" then
local car = workspace.Camera.CameraSubject.Parent
car.PrimaryPart = car.Body["#Weight"]
local tpback = car.PrimaryPart.CFrame
while getfenv().auto do
local speed = getfenv().speed or 500
local delay = getfenv().delay or 0.1
task.wait()
if  workspace.Camera.CameraSubject ~= nil and  workspace.Camera.CameraSubject.Name == "DriveSeat" then
local car = workspace.Camera.CameraSubject.Parent
car.PrimaryPart = car.Body["#Weight"]
car.PrimaryPart.Velocity = car.PrimaryPart.CFrame.LookVector*speed
task.wait(delay)
car:PivotTo(tpback)
end
end
end
end)
        end
    end
    workspace.Client_Traffic_Actors:Destroy()
  end)
