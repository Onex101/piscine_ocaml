class doctor name age sidekick =
    object (self)
        inherit People.people name
        val mutable _age:int = age
        val mutable _sidekick:People.people = sidekick

        method! talk = print_string "Hi! I’m the Doctor!\n"
        method travel_in_time (start:int) (arrival:int) = 
                                    print_string "
                                                        ___\n
                                                _______(_@_)_______\n
                                                | POLICE      BOX |\n
                                                |_________________|\n
                                                 | _____ | _____ |\n
                                                 | |###| | |###| |\n
                                                 | |###| | |###| |\n
                                                 | _____ | _____ |\n
                                                 | || || | || || |\n
                                                 | ||_|| | ||_|| |\n
                                                 | _____ |$_____ |\n
                                                 | || || | || || |\n
                                                 | ||_|| | ||_|| |\n
                                                 | _____ | _____ |\n
                                                 | || || | || || |\n
                                                 | ||_|| | ||_|| |\n
                                                 |       |       |\n
                                                 *****************\n";
                                              if start > arrival then 
                                                print_string "The Docter traveled back in time\n"
                                              else if start < arrival then 
                                                print_string "The Docter traveled to the future\n"
                                              else 
                                                print_string "The Tardis is broken!\n"

        method use_sonic_screwdriver = print_string "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii\n"
        method private regenerate = _hp <- 100
        method attack_dalek (dalek:Dalek.dalek) = self#use_sonic_screwdriver; if (dalek#get_shield_status) then print_string "Doctor couldn't hit Dalek" else dalek#die
        initializer print_string ("The Doctor has arrived!\n")
    end