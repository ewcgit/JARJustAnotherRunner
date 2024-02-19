/// @description Insert description here
// You can write your code in this editor


// Successful opening of video.
var videoData = video_draw();
var videoStatus = videoData[0];
if(videoStatus == 0){
	draw_surface(videoData[1], 50, 50);
}