function love.load()
    canvas = love.graphics.newCanvas(800, 600)
 
    -- Rectangle is drawn to the canvas with the regular alpha blend mode.
    love.graphics.setCanvas(canvas)
        love.graphics.clear()
        love.graphics.setBlendMode("alpha")
        love.graphics.setColor(255, 0, 0, 128)
        love.graphics.rectangle('fill', 0, 0, 100, 100)
    love.graphics.setCanvas()
end
 
function love.draw()
    love.graphics.setColor(255, 255, 255, 255)
 
    -- The rectangle from the Canvas was already alpha blended.
    -- Use the premultiplied alpha blend mode when drawing the Canvas itself to prevent improper blending.
    love.graphics.setBlendMode("alpha", "premultiplied")
    love.graphics.draw(canvas)
    -- Observe the difference if the Canvas is drawn with the regular alpha blend mode instead.
    love.graphics.setBlendMode("alpha")
    love.graphics.draw(canvas, 100, 0)
 
    -- Rectangle is drawn directly to the screen with the regular alpha blend mode.
    --love.graphics.setBlendMode("alpha")
    --love.graphics.setColor(255, 0, 0, 128)
    --love.graphics.rectangle('fill', 200, 0, 100, 100)
end