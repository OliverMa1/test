;; Here the goal specifies a set of undesired configurations 
(define (problem navigation_problem)
        (:domain robot_navigation)        
	(:requirements :strips :conditional-effects :negative-preconditions :disjunctive-preconditions)
        (:objects  store lab NE_room SW_room dep)
	(:init (robot_E_position NE_room ) 
	       (robot_S_position SW_room )
	)
        (:goal (or
     		   (and (robot_E_position NE_room ) (robot_S_position NE_room )
     		   	(not (robot_S_position store )) (not (robot_S_position lab )) (not (robot_S_position SW_room )) (not (robot_S_position dep )) 
     		   	(not (robot_E_position store )) (not (robot_E_position lab )) (not (robot_E_position SW_room )) (not (robot_E_position dep ))      		   	
     		   )
     		   (and  (robot_E_position SW_room ) (robot_S_position SW_room )     		   
		        (not (robot_S_position store )) (not (robot_S_position lab )) (not (robot_S_position NE_room )) (not (robot_S_position dep )) 
     		   	(not (robot_E_position store )) (not (robot_E_position lab )) (not (robot_E_position NE_room )) (not (robot_E_position dep ))      
     		   )
     		   (and  (robot_E_position lab ) (robot_S_position lab )
     		   	(not (robot_S_position store )) (not (robot_S_position SW_room )) (not (robot_S_position NE_room )) (not (robot_S_position dep )) 
		        (not (robot_E_position store )) (not (robot_E_position SW_room )) (not (robot_E_position NE_room )) (not (robot_E_position dep ))           		   
     		   )
     		   (and  (robot_E_position store ) (robot_S_position store )
     		   	(not (robot_S_position SW_room )) (not (robot_S_position lab )) (not (robot_S_position NE_room )) (not (robot_S_position dep )) 
		     	(not (robot_E_position SW_room )) (not (robot_E_position lab )) (not (robot_E_position NE_room )) (not (robot_E_position dep ))      
     		   
     		   )
     		   (and  (robot_E_position dep ) (robot_S_position dep )
     		   	(not (robot_S_position store )) (not (robot_S_position lab )) (not (robot_S_position NE_room )) (not (robot_S_position SW_room )) 
		        (not (robot_E_position store )) (not (robot_E_position lab )) (not (robot_E_position NE_room )) (not (robot_E_position SW_room ))      
     		   
     		   )
               )
        )
)
  
