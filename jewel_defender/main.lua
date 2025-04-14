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
    map(0, 0, 0, 0, 16, 16)
    frame = frame + 1;
    --log(frame)
    draw_example_rotated_sprites()
    draw_perf_overlay()
end
