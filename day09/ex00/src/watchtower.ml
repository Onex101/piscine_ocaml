module Watchtower :
	sig
		type hour = int
		val zero : hour
		val add : hour -> hour -> hour
		val sub : hour -> hour -> hour
	end

(* module WatchTower:(WatchTower) =
	struct
		type hour = int
		let zero = 12
		let add x y = ((if (x + y) mod 12 = 0 then 12 e
										lse (x + y) mod 12):hour)
		let sub (x:hour) (y:hour) = ((if (x - y) mod 12 = 0 then
				12 
			else if (x - y) mod 12 < 0 then
				((x - y) mod 12) * -1
			else
				(x - y) mod 12):hour)
	end *)