class galifrey dalek_lst person_lst doctor_lst=
    object (self)
        val mutable _dalek_lst:Dalek.dalek list = dalek_lst
        val mutable _person_lst:People.people list = person_lst
        val mutable _doctor_lst:Doctor.doctor list = doctor_lst

        method do_time_war =
            match (_dalek_lst, _person_lst, _doctor_lst) with
            | [], _, _ -> "All the Dalecks have been destroyed\n"
            | _, [], _ -> "All the people are dead\n"
            | _, _, [] -> "Doctor, who?\n"
            | (h1::t1), (h2::t2), (h3::t3) -> h1#exterminate h2;
                                       _person_lst <- t2;
                                       h3#attack_dalek h1;
                                       _dalek_lst <- t1;
                                        "Welcome to... the... where are we?/n"
    end