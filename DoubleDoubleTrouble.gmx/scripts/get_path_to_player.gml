///get path to player 
if(instance_exists(obj_snowman)){
var xx = (obj_Player.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2;
var yy = (obj_Player.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;

if(mp_grid_path(grid_path, path, x, y, xx, yy, true)) {

path_start(path, 2, path_action_stop, false);
}

}
