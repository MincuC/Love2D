function love.load()
	x=20
	y=20
	vx=0
	vy=0
	r=10
	image={}
	show=0
	k=0
	for i=1,9 do
	image[i]=love.graphics.newImage("000"..i..".png")
	end
	for i=10,50 do
	image[i]=love.graphics.newImage("00"..i..".png")
	end
end
function love.update(dt)
	if k>50 then
		k=1
	elseif k<1 then
		k=50
	end
	if love.keyboard.isDown("up") then
		y=y-1
	elseif love.keyboard.isDown("down") then
		y=y+1
	elseif love.keyboard.isDown("left") then
		x=x-1
		show=image[k]
		k=k-1
	elseif love.keyboard.isDown("right") then
		x=x+1
		show=image[k]
		k=k+1
	else 
		show=image[1]
	end
	if(y<500)then
		vy=vy+10*dt
	end
	if(y>500)then
		y=500
		if love.keyboard.isDown("z") then
			vy=-5
		end
	end
	y=y+vy
end

function love.draw()
    love.graphics.draw(show,25,25)
end


