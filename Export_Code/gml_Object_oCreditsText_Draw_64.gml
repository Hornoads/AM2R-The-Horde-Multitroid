display_set_gui_size(320, 240)
draw_set_alpha(image_alpha)
draw_set_font(global.fontGUI2)
draw_set_halign(fa_right)
draw_cool_text((X_POS - 12), (y + 17), textLeft, c_black, c_white, c_white, image_alpha)
draw_set_halign(fa_left)
draw_cool_text((X_POS + 12), (y + 17), textRight, c_black, c_white, c_white, image_alpha)
draw_set_halign(fa_center)
draw_cool_text(X_POS, (y + 17), textCenter, c_black, c_white, c_white, image_alpha)
draw_cool_text(X_POS, (y + 17), textHeader, c_black, c_yellow, c_green, image_alpha)
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle((0 - WIDE_SPACE), 0, (330 + WIDE_SPACE), (120 - yoffset), false)
draw_rectangle((0 - WIDE_SPACE), (120 + yoffset), (330 + WIDE_SPACE), 250, false)
