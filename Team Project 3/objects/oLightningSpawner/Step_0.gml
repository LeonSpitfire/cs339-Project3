/// @description Insert description here
// You can write your code in this editor
bulletinterval -= 1

if bulletinterval < 1{
	bulletinterval = bullettimer
	instance_create_layer(random_range(0,1600),750,"FrontInstances",Olightningbolt)
}