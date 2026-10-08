----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.load()

    mallow = {}
    mallow.x = 400 -- Xpos
    mallow.y = 400 -- Ypos
    mallow.v = 300 -- Velocity
    mallow.s = 50 -- Size

end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.update(dt)

    --player controller

            local dx = 0 -- delta_X
            local dy = 0 -- delta_Y

        --Input

            if love.keyboard.isDown('up') then
                dy = dy - 1
            end

            if love.keyboard.isDown('down') then
                dy = dy + 1
            end

            if love.keyboard.isDown('left') then
                dx = dx - 1
            end

            if love.keyboard.isDown('right') then
                dx = dx + 1
            end

        --Normalizing Vector

            local l = math.sqrt(dx * dx + dy * dy)

            if l > 0 then
                dx = dx / l
                dy = dy / l
            end

        --Applying vector to movement

            mallow.x = mallow.x + (dx * mallow.v * dt)
            mallow.y = mallow.y + (dy * mallow.v * dt)

end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.draw()

    love.graphics.circle('fill', mallow.x, mallow.y, mallow.s) -- mallow

end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
