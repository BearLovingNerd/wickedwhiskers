
// Draws yellow diamond
draw_sprite(spr_inner_value, 0, x, y)
draw_set_alpha(1);

// Draws an invisible diamond for masking
draw_set_alpha(0);
draw_rectangle(x-75, y-75, x+75, y+75, false)
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);

// Renable color
draw_set_alpha(1);
draw_sprite(spr_inner_value, 0, x, y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);


gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext(spr_meter, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

draw_sprite(spr_frame_value, 0, x, y);