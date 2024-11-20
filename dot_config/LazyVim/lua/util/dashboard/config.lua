local M = {}
M.default = "halloween"
M.ns = vim.api.nvim_create_namespace("dashboard")

function M.get_theme(name)
  name = name or M.default
  local ret = {
    name = name,
    header = M.headers[name],
    statusline = M.statusline[name],
  }
  return ret
end

M.statusline = {
  halloween = "🧛👻👺🧟🎃",
  summer = "🌴🌊",
  winter = "🏂❄️ ⛷️",
  xmas = "🎅🎄🌟🎁",
}

M.headers = {
  xmas = [[
                                                        *                  
     *                                                          *          
                                  *                  *        .--.         
      \/ \/  \/  \/                                        ./   /=*        
        \/     \/      *            *                ...  (_____)          
         \ ^ ^/                                       \ \_((^o^))-.     *  
         (o)(O)--)--------\.                           \   (   ) \  \._.   
         |    |  ||================((~~~~~~~~~~~~~~~~~))|   ( )   |     \  
          \__/             ,|        \. * * * * * * ./  (~~~~~~~~~~~)    \ 
   *        ||^||\.____./|| |          \___________/     ~||~~~~|~'\____/ *
            || ||     || || A            ||    ||          ||    |   jurcy 
     *      <> <>     <> <>          (___||____||_____)   ((~~~~~|   *     
]],
  winter = [[
                     o       \
      o                     `.   o
 o            o            o  \                      `
-. .-.-. .---. .-.,-.,-. ..-. /
  )| |  `'____\' o _____\||  `
  `' |  |-._--.|  |----.| |        o
     |o ||-.| ||,-.    || |   o
o    |  ||_|| |/ oo\   || |
     |  || || C   ._)o || | o
    o|  || ||o|\`-/    || |      ,. o
     |  ||_|| ,'\,\    || |   _\('')
     |  ||o||/\ \ .:  o|| |    (;  .)
     |  || |(  \_\||___|| | _,.(|___)-.
     | o||_|||`-`,\)----' |   o
   o |  |   ||..|.|  o _  |-.       _.-.
 `.-.|._|_.-:|__|_|-.-' `-'.__    o
          o   '--`-`    o        -  SSt
  ]],
  summer = [[
                               _                         
                           ,--.\`-. __                   
                         _,.`. \:/,"  `-._               
                     ,-*" _,.-;-*`-.+"*._ )              
                    ( ,."* ,-" / `.  \.  `.              
                   ,"   ,;"  ,"\../\  \:   \             
                  (   ,"/   / \.,' :   ))  /             
                   \  |/   / \.,'  /  // ,'              
                    \_)\ ,' \.,'  (  / )/                
                        `  \._,'   `"                    
                           \../                          
                           \../                          
                 ~        ~\../           ~~             
          ~~          ~~   \../   ~~   ~      ~~         
     ~~    ~   ~~  __...---\../-...__ ~~~     ~~         
       ~~~~  ~_,--'        \../      `--.__ ~~    ~~     
   ~~~  __,--'              `"             `--.__   ~~~  
~~  ,--'                                         `--.    
   '------......______             ______......------` ~~
 ~~~   ~    ~~      ~ `````---"""""  ~~   ~     ~~       
        ~~~~    ~~  ~~~~       ~~~~~~  ~ ~~   ~~ ~~~  ~  
     ~~   ~   ~~~     ~~~ ~         ~~       ~~   SSt    
              ~        ~~       ~~~       ~              
]],
  halloween = [[
                                              ,           ^'^  _     
                                              )               (_) ^'^
         _/\_                    .---------. ((        ^'^           
         (('>                    )`'`'`'`'`( ||                 ^'^  
    _    /^|                    /`'`'`'`'`'`\||           ^'^        
    =>--/__|m---               /`'`'`'`'`'`'`\|                      
         ^^           ,,,,,,, /`'`'`'`'`'`'`'`\      ,               
                     .-------.`|`````````````|`  .   )               
                    / .^. .^. \|  ,^^, ,^^,  |  / \ ((               
                   /  |_| |_|  \  |__| |__|  | /,-,\||               
        _         /_____________\ |")| |  |  |/ |_| \|               
       (")         |  __   __  |  '==' '=='  /_______\     _         
      (' ')        | /  \ /  \ |   _______   |,^, ,^,|    (")        
       \  \        | |--| |--| |  ((--.--))  ||_| |_||   (' ')       
     _  ^^^ _      | |__| |("| |  ||  |  ||  |,-, ,-,|   /  /        
   ,' ',  ,' ',    |           |  ||  |  ||  ||_| |_||   ^^^         
.,,|RIP|,.|RIP|,.,,'==========='==''=='==''=='=======',,....,,,,.,ldb
]],
  bday = [[
                                          (
                           (
                   )                    )             (
                           )           (o)    )
                   (      (o)    )     ,|,            )
                  (o)     ,|,          |~\    (      (o)
                  ,|,     |~\    (     \ |   (o)     ,|,
                  \~|     \ |   (o)    |`\   ,|,     |~\
                  |`\     |`\@@@,|,@@@@\ |@@@\~|     \ |
                  \ | o@@@\ |@@@\~|@@@@|`\@@@|`\@@@o |`\
                 o|`\@@@@@|`\@@@|`\@@@@\ |@@@\ |@@@@@\ |o
               o@@\ |@@@@@\ |@@@\ |@@@@@@@@@@|`\@@@@@|`\@@o
              @@@@|`\@@@@@@@@@@@|`\@@@@@@@@@@\ |@@@@@\ |@@@@
              p@@@@@@@@@@@@@@@@@\ |@@@@@@@@@@|`\@@@@@@@@@@@q
              @@o@@@@@@@@@@@@@@@|`\@@@@@@@@@@@@@@@@@@@@@@o@@
              @:@@@o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o@@::@
              ::@@::@@o@@@@@@@@@@@@@@@@@@@@@@@@@@@@o@@:@@::@
              ::@@::@@@@::oo@@@@oo@@@@@ooo@@@@@o:::@@@::::::
              %::::::@::::::@@@@:::@@@:::::@@@@:::::@@:::::%
              %%::::::::::::@@::::::@:::::::@@::::::::::::%%
              ::%%%::::::::::@::::::::::::::@::::::::::%%%::
            .#::%::%%%%%%:::::::::::::::::::::::::%%%%%::%::#.
          .###::::::%%:::%:%%%%%%%%%%%%%%%%%%%%%:%:::%%:::::###.
        .#####::::::%:::::%%::::::%%%%:::::%%::::%::::::::::#####.
       .######`:::::::::::%:::::::%:::::::::%::::%:::::::::'######.
       .#########``::::::::::::::::::::::::::::::::::::''#########.
       `.#############```::::::::::::::::::::::::'''#############.'
        `.######################################################.'
          ` .###########,._.,,,. #######<_\##################. '
             ` .#######,;:      `,/____,__`\_____,_________,_____
                `  .###;;;`.   _,;>-,------,,--------,----------'
                    `  `,;' ~~~ ,'\######_/'#######  .  '
                        ''~`''''    -  .'/;  -    '
  ]],
}

return M
