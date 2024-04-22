/// @description Insert description here
// You can write your code in this editor
bullettimer -= 1
if bullettimer < 1{
	bullettimer = bulletinterval
	instance_create_layer(random_range(0,1600),750,"FrontInstances",Olightningbolt)
}