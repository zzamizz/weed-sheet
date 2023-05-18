-- Cycle Camera Focus (Sly 2)
-- Author: TheOnlyZac
-- Date: 6/17/2020
-- Version: 1.0

-- INSTRUCTIONS
-- Press "Execute Script" below.
-- Use RIGHT and LEFT arrow keys to focus the camera on the
-- next or previous entity, starting with the current entity.
-- Press END when you are finished to stop the script.

-- If you hit a null pointer, it will reset back to Sly.
-- Also, some entities crash the game for some reason.

-- sets the camera focus to the given entity
local function SetFocus(entity_ptr)
    -- set the active entity to the given entity
    writeInteger(0x203e138c, entity_ptr) -- set active entt
    writeInteger(0x202de240, 1) -- reset camera
end

-- cycles the camera to either the next or prev entity
local function CycleCamera(direction)
    -- get the current focused entity from the cam struct
    curr_focus = readPointer(0x203E138C) -- get active entt
    curr_focus = curr_focus + 0x20000000 -- offset pointer

    -- get physics struct
    --physics_struct = readPointer(0x20275710)
    --physics_struct = physics_struct + 0x20000000

    entitylist_head_ptr = readPointer(0x202DE2F0) + 0x24

    -- get the next or prev entity
    next_focus = 0x0

    if direction == 1 then
       next_focus = readInteger(curr_focus + 0x24)
    elseif direction == -1 then
       next_focus = readInteger(curr_focus + 0x28)
    end

    -- if hit a null ptr, restart from beginning of list
    if next_focus == 0x0 then
       next_focus = readInteger(entitylist_head_ptr)
    end

    SetFocus(next_focus)
end

-- cycles the camera to the next entity
local function CycleNext()
      CycleCamera(1)
end

-- cycles the camera to the previous entity
local function CyclePrev()
      CycleCamera(-1)
end

-- ctops the script and resets the camera to Sly
local function StopScript()
      createTimer(nil).OnTimer =
      function(t)
         next_hk.destroy()
         prev_hk.destroy()
         stop_hk.destroy()
         t.destroy()
      end

      sly_ptr = readPointer(0x202e1e40)
      sly_ptr = sly_ptr + 0x20000000

      SetFocus(sly_ptr)
end

next_hk = createHotkey(CycleNext, VK_RIGHT)
prev_hk = createHotkey(CyclePrev, VK_LEFT)
stop_hk = createHotkey(StopScript, VK_END)
