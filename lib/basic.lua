function log(msg)
    -- Log messages to the console
    printh(msg, 'log.txt', true)
end

log('== Initializing ==')
left = 0
right = 1
up = 2
down = 3
a = 4
b = 5
sw = 8 --sprite width

function get_sprite_animation_id(start, step, count, frames_per_cell)
    local index = flr(frame / frames_per_cell) % count
    return start + index * step
end
