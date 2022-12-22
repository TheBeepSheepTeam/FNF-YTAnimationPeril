function onCreate() --COMPOSER NAME
	makeLuaText('watermark', songName .. " | Maicon ", 0, -2, 540); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark', 15);
	addLuaText('watermark');
end
