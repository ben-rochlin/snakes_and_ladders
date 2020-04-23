
p1 = "  "
p2 = "  "
p3 = "  "
p4 = "  "
z = "___"
l = "  "

p1_1 = "🧛"
p2_1 = "🧚"
p3_1 = "🤖"
p4_1 = "🤴"


#snake ladder wizrard trophy placeholders
s ="🐍"
s4 = "_🐍"
q = "🧬"
q4 = "_🧬"
e = "🧙"
w = "🏆"

game = <<-HEREDOC
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$ #{p1}    #{57}|#{p1}     #{58}|#{p1}     #{59}|#{p1}     #{60}|#{p1}     #{61}|#{p1}     #{62}|#{p1}     #{63}|#{p1}     #{w}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{w}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{w}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{w}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}    #{49}|#{p1}     #{50}|#{p1}     #{51}|#{p1}     #{52}|#{p1}     #{53}|#{p1}     #{54}|#{p1}     #{55}|#{p1}     #{56}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}    #{41}|#{p1}     #{42}|#{p1}     #{43}|#{p1}     #{44}|#{p1}     #{45}|#{p1}     #{46}|#{p1}     #{47}|#{p1}     #{48}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}    #{33}|#{p1}     #{34}|#{p1}     #{35}|#{p1}     #{36}|#{p1}     #{37}|#{p1}     #{38}|#{p1}     #{39}|#{p1}     #{40}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}    #{25}|#{p1}     #{26}|#{p1}     #{27}|#{p1}     #{28}|#{p1}     #{29}|#{p1}     #{30}|#{p1}     #{31}|#{p1}     #{32}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}    #{17}|#{p1}     #{18}|#{p1}     #{19}|#{p1}     #{20}|#{p1}     #{21}|#{p1}     #{22}|#{p1}     #{23}|#{p1}     #{24}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1}     #{9}|#{p1}     #{10}|#{p1}     #{11}|#{p1}     #{12}|#{p1}     #{13}|#{p1}     #{14}|#{p1}     #{15}|#{p1}     #{16}|$$
$$ #{p2}    #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{s}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3}    #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4}    #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$ #{p1_1}      |#{p1}      #{2}|#{p1}      #{3}|#{p1}      #{4}|#{p1}      #{5}|#{p1}      #{6}|#{p1}      #{7}|#{p1}      #{8}|$$
$$ #{p2_1}      |#{p2}     #{l}|#{p2}     #{e}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|#{p2}     #{l}|$$
$$ #{p3_1}      |#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|#{p3}     #{l}|$$
$$ #{p4_1}      |#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|#{p4}     #{l}|$$
$$_________|_________|_________|_________|_________|_________|_________|_________|$$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
HEREDOC

puts ""
puts "            MAGIC Snakes and Ladders... and the drunk wizard!"
puts ""
puts game