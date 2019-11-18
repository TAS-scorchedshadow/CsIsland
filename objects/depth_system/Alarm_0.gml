if time = 1
{
	if PM == 1 minutes ++
	if PM == 0 minutes --

	hours = minutes/60;
	darkness = hours/12;

	//Cycle Check
	if hours >= 12 PM= 0
	if hours <= 0 PM= 1
}


alarm[0] = minutespeed
