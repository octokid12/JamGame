extends Node

var selectedtile: int = 3
var Dudecoords: Vector2
var Payloadpos = Vector2(0, 0)
var Internal_Value = 2
var StartCoords = Vector2i(0, 0)
var CurrentBallvalue = 0
var CurrentPayload
var balls = preload("res://guy.tscn").instantiate()

var Ballorder = [3, 2, 3, 2, 1, 2, 3]
var Ballnum = 0
