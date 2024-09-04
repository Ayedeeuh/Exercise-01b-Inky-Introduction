/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

It's late friday night, you take your kitty cat whiskers on a walk as you always do. Your neighbors are quite eccentric, and own a large overgrown maze that has not been taken care of for years. As you compliment whiskers on her whiskers, a mouse runs right by. Before you know it, whiskers has taken off after this mouse scoundrel. You see whiskers and the mouse run right through one of the overgrown hedges....
* [take off after them] -> opening_maze
+ [process what has happened] -> what_are_you_doing

== what_are_you_doing ==
Are you really going to let your cute kitty cat run off into the night and not go after her?
+ [go after whiskers] -> opening_maze
-> END

== opening_maze ==
The hedges seem to loom over you, it is eerily quiet... if you go in, you can't come back without whiskers.
+ [cautiously step inside the maze] -> first_part_maze

== first_part_maze == 
{turn_on_flashlight: |It is impossibly dark and humid.} { flashlight: You can go left or right.| Luckily, to the right of the entrance there is an old flashlight left behind from years before. You can go left or right }
* [ grab flashlight] -> flashlight
+ [Go right] -> First_right
+ [Go left] -> first_left

== flashlight == 
The Flashlight is weirdly sticky. -> first_part_maze
-> END

== First_right == 
You turn right into the maze, {turn_on_flashlight : you are able to go right and then right again into a large opening | but it is too dark for you to see any further.}
* {turn_on_flashlight} [look around] -> large_opening 
* [turn on the flashlight ] -> turn_on_flashlight
* [ go back ] -> first_part_maze
-> END

== turn_on_flashlight == 
You flick the flashlight on and give it a few smacks, the beam is weak but it works and you are able to see. ->first_part_maze

== Go_back_1 == 
->first_part_maze

== first_left == 
You turn left into the maze, { turn_on_flashlight: You are able to turn left and then left again into a large opening.|but it is too dark to see any further.}
* {flashlight } [turn on flashlight] -> turn_on_flashlight
* {turn_on_flashlight} [look around large opening] -> large_opening 
* [ Go back ] -> first_part_maze
-> END

== large_opening == 
You take a look around and realize that you were mistaken. It isnt a maze, it is just a square of hedges around a smaller square of hedges. Frustrated with the effort you put in to find your kitty cat, you take a closer look and call whiskers. You hear a little jingle as whiskers bounds towards you with a mouse in her mouth. Relieved yet annoyed with a sticky hand, you make your way back home with whiskers safe and sound. 
-> END
