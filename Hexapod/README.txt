1. Tripod gait - 	The tripod gait or alternating tripod gait is characterized as one middle leg on one side and two 
		non-adjacent legs on the other side of the body liftedand movedforward at the same time;while 
		the other threelegs remain on the ground tokeep the robot statically stable. This is the fastest 
		of the three gaits and converges in two steps, but also is the least stable

2. Wave Gait -	The wave gait can be characterized by lifting and moving only one leg at a time in a “wave-like” 
		fashion. This gait is the most stable of all thegaits since, at any given instance five legs are in 
		contact with the ground. However, this is a very slow walking pattern, since it converges in six
		steps, and is most typically used in  very rough terrain

3. Ripple Gait - 	The ripple gait is very similar to the wave gait. Each side of the hexapod performs its own wave 
		gait simultaneously, with one side being 180° out of phase with the other side. The ripple gait is 
		not as fast as the tripod gait since it converges in three steps, but it provides more stability with
		 four legs on the ground at any given time. The ripple gait is most commonly used with legged-robots
		 that have more than six leg.


Backwards.bas	 - making the hexapod move backwards
pansonar.bas 	 - Paning the on board sonar sensor
turn.bas 		 -  Making the hexapod to turn using gaits
obstacle.bas 	 -  Making the hexapod turn on the basis of sonar threshold