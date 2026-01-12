local ArrowKeys = {}

local keyMapping = {
  h = 'left',
  j = 'down',
  k = 'up',
  l = 'right'
}

local eventTap = nil

-- TODO: propagate other modifiers, e.g. fn + shift + j -> shift + down
function ArrowKeys:start()
  eventTap = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
    local key = hs.keycodes.map[event:getKeyCode()]
    local mapped = keyMapping[key]
    if mapped and event:getFlags()['fn'] then
      hs.eventtap.event.newKeyEvent({}, mapped, true):post()
      return true
    end
  end)
  eventTap:start()
end

return ArrowKeys
