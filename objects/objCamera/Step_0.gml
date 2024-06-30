/// @description Move camera on keytsrocks and go to esc menu
// You can write your code in this editor

var _keyX = keyboard_check(vk_right) - keyboard_check(vk_left) + keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _keyY = keyboard_check(vk_down) - keyboard_check(vk_up) + keyboard_check(ord("S")) - keyboard_check(ord("W"))
var _zoom = mouse_wheel_down() - mouse_wheel_up()

var _changeX = camera_get_view_x(view_camera[0]) + _keyX*10
var _changeY = camera_get_view_y(view_camera[0]) + _keyY*10
var _changeW = camera_get_view_width(view_camera[0]) + _zoom*16*2
var _changeH = camera_get_view_height(view_camera[0]) + _zoom*9*2

var _cHeight = camera_get_view_height(view_camera[0])
var _cWidth = camera_get_view_width(view_camera[0])

_changeX = clamp(_changeX, 0, room_width - _cWidth)
_changeY = clamp(_changeY, 0, room_height -_cHeight) 
_changeH = clamp(_changeH, 320, 2160)
_changeW = clamp(_changeW, 640, 3840)


camera_set_view_pos(view_camera[0], _changeX, _changeY)
camera_set_view_size(view_camera[0], _changeW, _changeH)


// Go to esc menu
if keyboard_check(vk_escape)
	scrEscapeMenu()