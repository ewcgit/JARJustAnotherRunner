// Apple spawning at player's ground level.
instance_create_layer(room_width + 102, room_height - 78, "Instances", obj_apple);

alarm[2] = room_speed * 10;