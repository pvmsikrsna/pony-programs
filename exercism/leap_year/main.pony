
primitive LeapYear
    fun is_leap_year(year : U32) : Bool =>
        match (year % 4, year % 100, year % 400)
        | (_ , 0, 0) =>
            true
        | (0, 0, _) =>
            false
        | (0, _, _) =>
            true
        else 
            false
        end


actor Main
    new create(env : Env) =>
        env.out.print("!!! Hello !!!")
        env.out.print("Is leap year 400 ? : " + LeapYear.is_leap_year(400).string())
        env.out.print("Is leap year 100 ? : " + LeapYear.is_leap_year(100).string())
        env.out.print("Is leap year 200 ? : " + LeapYear.is_leap_year(200).string())
        env.out.print("Is leap year 304 ? : " + LeapYear.is_leap_year(304).string())
        env.out.print("Is leap year 302 ? : " + LeapYear.is_leap_year(302).string())