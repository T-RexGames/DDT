///grid_place_meeting(x,y) 

var xx = argument[0];
var yy = argument[1];

//remember our posistion
var xp = x;
var yp = y;

//update the position of the bounding box calculations
x = xx;
y = yy;

//Check for a x meeting
var x_meeting  = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR && Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != ICE ) ||
                 (Level.grid[# bbox_left  div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR && Level.grid[# bbox_left  div CELL_WIDTH, bbox_top div CELL_HEIGHT] != ICE) ;

//Check for a y meeting
var y_meeting  = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR && Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != ICE) ||
                 (Level.grid[# bbox_left  div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR && Level.grid[# bbox_left  div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != ICE) ;
                 
var center_meeting = Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR && Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != ICE;
//move to original position
x = xp;
y = yp;

//return if the player can move into the new tile.
if (global.canmoveanywhere == true){
    return false;
} else{
    return x_meeting || y_meeting || center_meeting;
}

