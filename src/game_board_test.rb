system("clear")

space = " "
indent = " "*8
border_top = "$"*75
puts indent + border_top


vert = indent + "$$" + ( space*8 + "|")*7 + ( space*8 + "$$") + "\n"


vert_horizontal = indent + "$$" + ( "_"*8 + "|")*7 + ( "_"*8 + "$$") + "\n"

def grid_middle (a_vert, a_vert_h)
i = 0
    while i <=7
    puts a_vert*3
    puts a_vert_h
    i += 1
    end
end

grid_middle vert, vert_horizontal

border_bottom = indent + "$"*75
puts border_bottom

