// Draws the actual shape itself
draw_set_alpha(1)
draw_sprite(spr_inner_value, 0, x, y)
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);

// Creates the mask around the shape
draw_set_alpha(1);
draw_sprite_ext(spr_inner_value, 0, x, y, 1, 1, 0, c_white, 1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

// Draw meter rectangle
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
draw_sprite_ext(spr_meter, 0, x, y+57, 1.5, current_yscale, 0, c_white, 1)
gpu_set_blendmode(bm_normal);

// Draw frame around value
draw_sprite(spr_frame_value, 0, x, y);