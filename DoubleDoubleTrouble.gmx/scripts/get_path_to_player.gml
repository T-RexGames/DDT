///get path to player 
if(instance_exists(obj_Player)){
var xx = (obj_Player.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2;
var yy = (obj_Player.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;

if(mp_grid_path(Level.grid_path, path, x, y, xx, yy, true)) {

//if(distance_to_object(obj_Player) < view_hview/2 + 20){
path_start(path, 5, path_action_stop, false);
//}

}

}
