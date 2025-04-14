sprite_width = 16

function draw_colored_rotated_sprite(sprite_id, x, y, angle, from_color, to_color)
    local cx, cy = sprite_width / 2, sprite_width / 2
    local sin_a = sin(-angle)
    local cos_a = cos(-angle)

    -- sprite top-left on sheet
    local sx = (sprite_id % 16) * 8
    local sy = flr(sprite_id / 16) * 8

    local half = sprite_width / 2
    for i = -half, half - 1 do
        for j = -half, half - 1 do
            -- destination pixel offset from center
            local dx = i
            local dy = j

            -- inverse rotate into sprite space
            local sx_off = dx * cos_a - dy * sin_a + cx
            local sy_off = dx * sin_a + dy * cos_a + cy

            if sx_off >= 0 and sx_off < sprite_width and
                sy_off >= 0 and sy_off < sprite_width then
                local c = sget(sx + flr(sx_off), sy + flr(sy_off))
                if c ~= 0 then
                    -- swap color if it's the one we're replacing
                    if c == from_color then
                        c = to_color
                    end
                    pset(x + dx, y + dy, c)
                end
            end
        end
    end
end
