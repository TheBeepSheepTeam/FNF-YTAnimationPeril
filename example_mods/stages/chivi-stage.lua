function onCreate()
	makeLuaSprite('ChiVi sky', 'ChiVi sky', -90, -150);
	setScrollFactor('ChiVi sky', 0.9, 0.9);

	makeLuaSprite('ChiVi clouds', 'ChiVi clouds', -0, -150);
	setScrollFactor('ChiVi clouds', 0.9, 0.9);
	
	makeLuaSprite('ChiVi bg', 'ChiVi bg', -90, -150);
	setScrollFactor('ChiVi bg', 0.9, 0.9);

	makeLuaSprite('ChiVi tree', 'ChiVi tree', -135, -150);
	setScrollFactor('ChiVi tree', 1.3, 1.3);

	addLuaSprite('ChiVi sky', false);
	addLuaSprite('ChiVi clouds', false);
	addLuaSprite('ChiVi bg', false);
	addLuaSprite('ChiVi tree', false);
end