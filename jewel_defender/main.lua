function _init()
    -- Initialize the game
    -- Load the game assets, set up the game state, etc.
end

function _update()
    -- Update the game state
    -- Handle player input, update game objects, etc.
end

frame = 0;
function _draw()
    cls()
    map(0, 0, 0, 0, 16, 8)
    frame = frame + 1;
    sprite_id = get_sprite_animation_id(1, 2, 3, 4)
    log(sprite_id)
    -- draw sprite 1 rotated by 1/16 degree increments spaced 8 px apart
    -- row 1 would have 1/16, 2/16, 3/16, 4/16
    -- row 2 would have 5/16, 6/16, 7/16, 8/16 ...
    local increment_divisor = 32;
    local angle_increment = 1 / increment_divisor;
    local sprites_per_row = 5;
    local sprite_width = 16;
    local sprite_height = 16;
    local x = 0;
    local y = sprite_height;
    local angle = 0;
    local sprites_on_row = 0;
    for i = 0, increment_divisor - 1 do
        sprites_on_row = sprites_on_row + 1;
        if (sprites_on_row > sprites_per_row) then
            sprites_on_row = 1;
            y = y + sprite_height * 2;
            x = 0;
        end
        x = x + sprite_width + 8;
        angle = i * angle_increment;
        draw_colored_rotated_sprite(sprite_id, x, y, angle, 8, 9)
    end
end
