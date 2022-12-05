(define (problem RoversSuministrosPersonal) (:domain BasesMarte_extension2)

    (:objects
        rover0 rover1 - rover
        p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 - personal
        s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128 s129 s130 s131 s132 s133 s134 s135 s136 s137 s138 s139 s140 s141 s142 s143 s144 s145 s146 s147 s148 s149 s150 s151 s152 s153 s154 s155 s156 s157 s158 s159 s160 s161 s162 s163 s164 s165 s166 s167 s168 s169 s170 s171 s172 s173 s174 s175 s176 s177 s178 s179 s180 s181 s182 s183 s184 s185 s186 s187 s188 s189 s190 s191 s192 s193 s194 s195 s196 s197 s198 s199 s200 s201 s202 s203 s204 s205 s206 s207 s208 s209 s210 s211 s212 s213 s214 s215 s216 s217 s218 s219 s220 s221 s222 s223 s224 - suministro
        al1 al2 al5 al6 - almacen
        as3 as4 - asentamiento
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (CombustibleTotal) 0)
        (= (DecrecimientoCombusitible) 0)
        (conectado al1 al2)
        (conectado al2 al1)
        (conectado al2 as3)
        (conectado as3 al2)
        (conectado al1 as3)
        (conectado as3 al1)
        (conectado as3 as4)
        (conectado as4 as3)
        (conectado as4 al5)
        (conectado al5 as4)
        (conectado as4 al6)
        (conectado al6 as4)
        (conectado al5 al6)
        (conectado al6 al5)
        (aparcado rover0 al6)
        (= (PersonalCargado rover0) 0)
        (= (SuministroCargado rover0) 0)
        (= (CombustibleRestante rover0) 100000)
        (aparcado rover1 as3)
        (= (PersonalCargado rover1) 0)
        (= (SuministroCargado rover1) 0)
        (= (CombustibleRestante rover1) 100000)
        (en_base p0 as4)
        (pedido p0 as3)
        (en_base p1 as3)
        (pedido p1 as4)
        (en_base p2 as4)
        (pedido p2 as3)
        (en_base p3 as4)
        (pedido p3 as3)
        (en_base p4 as4)
        (pedido p4 as3)
        (en_base p5 as3)
        (pedido p5 as4)
        (en_base p6 as3)
        (pedido p6 as4)
        (en_base p7 as4)
        (pedido p7 as3)
        (en_base p8 as3)
        (pedido p8 as4)
        (en_base p9 as3)
        (pedido p9 as4)
        (en_base p10 as3)
        (pedido p10 as4)
        (en_base p11 as4)
        (pedido p11 as3)
        (en_base p12 as4)
        (pedido p12 as3)
        (en_base p13 as4)
        (pedido p13 as3)
        (en_base p14 as4)
        (pedido p14 as3)
        (en_base p15 as3)
        (pedido p15 as4)
        (en_base p16 as3)
        (pedido p16 as4)
        (en_base p17 as4)
        (pedido p17 as3)
        (en_base p18 as3)
        (pedido p18 as4)
        (en_base p19 as3)
        (pedido p19 as4)
        (en_base p20 as3)
        (pedido p20 as4)
        (en_base p21 as4)
        (pedido p21 as3)
        (en_base p22 as3)
        (pedido p22 as4)
        (en_base p23 as3)
        (pedido p23 as4)
        (en_base p24 as3)
        (pedido p24 as4)
        (en_base p25 as3)
        (pedido p25 as4)
        (en_base p26 as4)
        (pedido p26 as3)
        (en_base p27 as3)
        (pedido p27 as4)
        (en_base p28 as3)
        (pedido p28 as4)
        (en_base p29 as4)
        (pedido p29 as3)
        (en_base p30 as3)
        (pedido p30 as4)
        (en_base p31 as4)
        (pedido p31 as3)
        (en_base p32 as4)
        (pedido p32 as3)
        (en_base p33 as4)
        (pedido p33 as3)
        (en_base p34 as4)
        (pedido p34 as3)
        (en_base p35 as4)
        (pedido p35 as3)
        (en_base p36 as3)
        (pedido p36 as4)
        (en_base p37 as3)
        (pedido p37 as4)
        (en_base p38 as3)
        (pedido p38 as4)
        (en_base p39 as4)
        (pedido p39 as3)
        (en_base p40 as4)
        (pedido p40 as3)
        (en_base p41 as4)
        (pedido p41 as3)
        (en_base p42 as3)
        (pedido p42 as4)
        (en_base p43 as4)
        (pedido p43 as3)
        (en_base p44 as4)
        (pedido p44 as3)
        (en_base p45 as4)
        (pedido p45 as3)
        (en_base p46 as3)
        (pedido p46 as4)
        (en_base p47 as3)
        (pedido p47 as4)
        (en_base p48 as3)
        (pedido p48 as4)
        (en_base p49 as4)
        (pedido p49 as3)
        (en_base p50 as4)
        (pedido p50 as3)
        (en_base p51 as4)
        (pedido p51 as3)
        (en_base p52 as4)
        (pedido p52 as3)
        (en_base p53 as3)
        (pedido p53 as4)
        (en_base p54 as4)
        (pedido p54 as3)
        (en_base p55 as3)
        (pedido p55 as4)
        (en_base p56 as4)
        (pedido p56 as3)
        (en_base p57 as3)
        (pedido p57 as4)
        (en_base p58 as4)
        (pedido p58 as3)
        (en_base p59 as4)
        (pedido p59 as3)
        (en_base p60 as4)
        (pedido p60 as3)
        (en_base p61 as3)
        (pedido p61 as4)
        (en_base p62 as3)
        (pedido p62 as4)
        (en_base p63 as3)
        (pedido p63 as4)
        (en_base p64 as4)
        (pedido p64 as3)
        (en_base p65 as4)
        (pedido p65 as3)
        (en_base p66 as4)
        (pedido p66 as3)
        (en_base p67 as4)
        (pedido p67 as3)
        (en_base p68 as3)
        (pedido p68 as4)
        (en_base p69 as3)
        (pedido p69 as4)
        (en_base p70 as3)
        (pedido p70 as4)
        (en_base p71 as4)
        (pedido p71 as3)
        (en_base p72 as3)
        (pedido p72 as4)
        (en_base p73 as3)
        (pedido p73 as4)
        (en_base p74 as4)
        (pedido p74 as3)
        (en_base p75 as3)
        (pedido p75 as4)
        (en_base p76 as3)
        (pedido p76 as4)
        (en_base p77 as3)
        (pedido p77 as4)
        (en_base p78 as3)
        (pedido p78 as4)
        (en_base p79 as4)
        (pedido p79 as3)
        (en_base p80 as4)
        (pedido p80 as3)
        (en_base p81 as4)
        (pedido p81 as3)
        (en_base p82 as4)
        (pedido p82 as3)
        (en_base p83 as3)
        (pedido p83 as4)
        (en_base p84 as4)
        (pedido p84 as3)
        (en_base p85 as4)
        (pedido p85 as3)
        (en_base p86 as4)
        (pedido p86 as3)
        (en_base p87 as4)
        (pedido p87 as3)
        (en_base p88 as3)
        (pedido p88 as4)
        (en_base p89 as3)
        (pedido p89 as4)
        (en_base p90 as3)
        (pedido p90 as4)
        (en_base p91 as4)
        (pedido p91 as3)
        (en_base p92 as4)
        (pedido p92 as3)
        (en_base p93 as3)
        (pedido p93 as4)
        (en_base p94 as4)
        (pedido p94 as3)
        (en_base p95 as4)
        (pedido p95 as3)
        (en_base p96 as3)
        (pedido p96 as4)
        (en_base p97 as4)
        (pedido p97 as3)
        (en_base p98 as3)
        (pedido p98 as4)
        (en_base p99 as3)
        (pedido p99 as4)
        (en_base p100 as3)
        (pedido p100 as4)
        (en_base p101 as3)
        (pedido p101 as4)
        (en_base p102 as3)
        (pedido p102 as4)
        (en_base p103 as4)
        (pedido p103 as3)
        (en_base p104 as4)
        (pedido p104 as3)
        (en_base p105 as3)
        (pedido p105 as4)
        (en_base p106 as4)
        (pedido p106 as3)
        (en_base p107 as3)
        (pedido p107 as4)
        (en_base p108 as3)
        (pedido p108 as4)
        (en_base p109 as4)
        (pedido p109 as3)
        (en_base p110 as4)
        (pedido p110 as3)
        (en_base p111 as4)
        (pedido p111 as3)
        (en_base p112 as4)
        (pedido p112 as3)
        (en_base p113 as4)
        (pedido p113 as3)
        (en_base p114 as3)
        (pedido p114 as4)
        (en_base p115 as3)
        (pedido p115 as4)
        (en_base p116 as4)
        (pedido p116 as3)
        (en_base p117 as4)
        (pedido p117 as3)
        (en_base p118 as4)
        (pedido p118 as3)
        (en_base p119 as4)
        (pedido p119 as3)
        (en_base p120 as3)
        (pedido p120 as4)
        (en_base p121 as3)
        (pedido p121 as4)
        (en_base p122 as4)
        (pedido p122 as3)
        (en_base p123 as4)
        (pedido p123 as3)
        (en_base p124 as4)
        (pedido p124 as3)
        (en_base p125 as4)
        (pedido p125 as3)
        (en_base p126 as4)
        (pedido p126 as3)
        (en_base p127 as4)
        (pedido p127 as3)
        (en_base p128 as3)
        (pedido p128 as4)
        (en_base p129 as4)
        (pedido p129 as3)
        (en_base p130 as3)
        (pedido p130 as4)
        (en_base p131 as4)
        (pedido p131 as3)
        (en_base p132 as3)
        (pedido p132 as4)
        (en_base p133 as3)
        (pedido p133 as4)
        (en_base p134 as4)
        (pedido p134 as3)
        (en_base p135 as4)
        (pedido p135 as3)
        (en_base p136 as3)
        (pedido p136 as4)
        (en_base p137 as3)
        (pedido p137 as4)
        (en_base p138 as4)
        (pedido p138 as3)
        (en_base p139 as3)
        (pedido p139 as4)
        (en_base p140 as3)
        (pedido p140 as4)
        (en_base p141 as4)
        (pedido p141 as3)
        (en_base p142 as3)
        (pedido p142 as4)
        (en_base p143 as3)
        (pedido p143 as4)
        (en_base p144 as4)
        (pedido p144 as3)
        (en_base p145 as3)
        (pedido p145 as4)
        (en_base p146 as4)
        (pedido p146 as3)
        (en_base p147 as3)
        (pedido p147 as4)
        (en_base p148 as3)
        (pedido p148 as4)
        (en_base p149 as3)
        (pedido p149 as4)
        (en_base p150 as3)
        (pedido p150 as4)
        (en_base p151 as3)
        (pedido p151 as4)
        (en_base p152 as4)
        (pedido p152 as3)
        (en_base p153 as3)
        (pedido p153 as4)
        (en_base p154 as3)
        (pedido p154 as4)
        (en_base p155 as4)
        (pedido p155 as3)
        (en_base p156 as4)
        (pedido p156 as3)
        (en_base p157 as3)
        (pedido p157 as4)
        (en_base p158 as4)
        (pedido p158 as3)
        (en_base p159 as4)
        (pedido p159 as3)
        (en_base p160 as3)
        (pedido p160 as4)
        (en_base p161 as4)
        (pedido p161 as3)
        (en_base p162 as4)
        (pedido p162 as3)
        (en_base p163 as3)
        (pedido p163 as4)
        (en_base p164 as3)
        (pedido p164 as4)
        (en_base p165 as3)
        (pedido p165 as4)
        (en_base p166 as3)
        (pedido p166 as4)
        (en_base p167 as4)
        (pedido p167 as3)
        (en_base p168 as3)
        (pedido p168 as4)
        (en_base p169 as3)
        (pedido p169 as4)
        (en_base p170 as4)
        (pedido p170 as3)
        (en_base p171 as3)
        (pedido p171 as4)
        (en_base p172 as4)
        (pedido p172 as3)
        (en_base p173 as3)
        (pedido p173 as4)
        (en_base p174 as4)
        (pedido p174 as3)
        (en_base p175 as4)
        (pedido p175 as3)
        (en_base p176 as4)
        (pedido p176 as3)
        (en_base p177 as4)
        (pedido p177 as3)
        (en_base p178 as3)
        (pedido p178 as4)
        (en_base p179 as3)
        (pedido p179 as4)
        (en_base p180 as3)
        (pedido p180 as4)
        (en_base p181 as4)
        (pedido p181 as3)
        (en_base p182 as4)
        (pedido p182 as3)
        (en_base p183 as4)
        (pedido p183 as3)
        (en_base p184 as3)
        (pedido p184 as4)
        (en_base p185 as3)
        (pedido p185 as4)
        (en_base p186 as4)
        (pedido p186 as3)
        (en_base p187 as4)
        (pedido p187 as3)
        (en_base p188 as3)
        (pedido p188 as4)
        (en_base p189 as3)
        (pedido p189 as4)
        (en_base p190 as3)
        (pedido p190 as4)
        (en_base p191 as4)
        (pedido p191 as3)
        (en_base p192 as4)
        (pedido p192 as3)
        (en_base p193 as4)
        (pedido p193 as3)
        (en_base p194 as4)
        (pedido p194 as3)
        (en_base p195 as4)
        (pedido p195 as3)
        (en_base p196 as4)
        (pedido p196 as3)
        (en_base p197 as4)
        (pedido p197 as3)
        (en_base p198 as3)
        (pedido p198 as4)
        (en_base p199 as3)
        (pedido p199 as4)
        (en_base p200 as3)
        (pedido p200 as4)
        (en_base p201 as3)
        (pedido p201 as4)
        (en_base p202 as4)
        (pedido p202 as3)
        (en_base p203 as3)
        (pedido p203 as4)
        (en_base p204 as3)
        (pedido p204 as4)
        (en_base p205 as4)
        (pedido p205 as3)
        (en_base p206 as3)
        (pedido p206 as4)
        (en_base p207 as4)
        (pedido p207 as3)
        (en_base p208 as3)
        (pedido p208 as4)
        (en_base p209 as3)
        (pedido p209 as4)
        (en_base p210 as4)
        (pedido p210 as3)
        (en_base p211 as4)
        (pedido p211 as3)
        (en_base p212 as4)
        (pedido p212 as3)
        (en_base p213 as4)
        (pedido p213 as3)
        (en_base p214 as4)
        (pedido p214 as3)
        (en_base p215 as4)
        (pedido p215 as3)
        (en_base p216 as4)
        (pedido p216 as3)
        (en_base p217 as4)
        (pedido p217 as3)
        (en_base p218 as3)
        (pedido p218 as4)
        (en_base p219 as3)
        (pedido p219 as4)
        (en_base p220 as3)
        (pedido p220 as4)
        (en_base p221 as3)
        (pedido p221 as4)
        (en_base p222 as3)
        (pedido p222 as4)
        (en_base p223 as3)
        (pedido p223 as4)
        (en_base p224 as3)
        (pedido p224 as4)
        (en_base s0 al5)
        (pedido s0 as4)
        (en_base s1 al6)
        (pedido s1 as4)
        (en_base s2 al1)
        (pedido s2 as3)
        (en_base s3 al2)
        (pedido s3 as4)
        (en_base s4 al6)
        (pedido s4 as4)
        (en_base s5 al6)
        (pedido s5 as3)
        (en_base s6 al1)
        (pedido s6 as3)
        (en_base s7 al5)
        (pedido s7 as3)
        (en_base s8 al2)
        (pedido s8 as4)
        (en_base s9 al5)
        (pedido s9 as4)
        (en_base s10 al6)
        (pedido s10 as4)
        (en_base s11 al5)
        (pedido s11 as4)
        (en_base s12 al1)
        (pedido s12 as4)
        (en_base s13 al6)
        (pedido s13 as3)
        (en_base s14 al6)
        (pedido s14 as3)
        (en_base s15 al6)
        (pedido s15 as4)
        (en_base s16 al2)
        (pedido s16 as3)
        (en_base s17 al5)
        (pedido s17 as4)
        (en_base s18 al5)
        (pedido s18 as3)
        (en_base s19 al2)
        (pedido s19 as3)
        (en_base s20 al2)
        (pedido s20 as4)
        (en_base s21 al5)
        (pedido s21 as3)
        (en_base s22 al5)
        (pedido s22 as4)
        (en_base s23 al5)
        (pedido s23 as3)
        (en_base s24 al6)
        (pedido s24 as3)
        (en_base s25 al5)
        (pedido s25 as4)
        (en_base s26 al1)
        (pedido s26 as3)
        (en_base s27 al1)
        (pedido s27 as3)
        (en_base s28 al1)
        (pedido s28 as3)
        (en_base s29 al6)
        (pedido s29 as3)
        (en_base s30 al6)
        (pedido s30 as3)
        (en_base s31 al6)
        (pedido s31 as3)
        (en_base s32 al1)
        (pedido s32 as3)
        (en_base s33 al2)
        (pedido s33 as4)
        (en_base s34 al5)
        (pedido s34 as4)
        (en_base s35 al2)
        (pedido s35 as4)
        (en_base s36 al5)
        (pedido s36 as4)
        (en_base s37 al2)
        (pedido s37 as4)
        (en_base s38 al2)
        (pedido s38 as3)
        (en_base s39 al6)
        (pedido s39 as4)
        (en_base s40 al6)
        (pedido s40 as3)
        (en_base s41 al2)
        (pedido s41 as4)
        (en_base s42 al5)
        (pedido s42 as4)
        (en_base s43 al6)
        (pedido s43 as3)
        (en_base s44 al5)
        (pedido s44 as3)
        (en_base s45 al6)
        (pedido s45 as4)
        (en_base s46 al2)
        (pedido s46 as4)
        (en_base s47 al2)
        (pedido s47 as4)
        (en_base s48 al5)
        (pedido s48 as3)
        (en_base s49 al6)
        (pedido s49 as3)
        (en_base s50 al1)
        (pedido s50 as3)
        (en_base s51 al2)
        (pedido s51 as4)
        (en_base s52 al2)
        (pedido s52 as4)
        (en_base s53 al6)
        (pedido s53 as4)
        (en_base s54 al5)
        (pedido s54 as3)
        (en_base s55 al5)
        (pedido s55 as4)
        (en_base s56 al5)
        (pedido s56 as4)
        (en_base s57 al1)
        (pedido s57 as3)
        (en_base s58 al5)
        (pedido s58 as4)
        (en_base s59 al5)
        (pedido s59 as4)
        (en_base s60 al5)
        (pedido s60 as4)
        (en_base s61 al2)
        (pedido s61 as3)
        (en_base s62 al5)
        (pedido s62 as3)
        (en_base s63 al1)
        (pedido s63 as3)
        (en_base s64 al1)
        (pedido s64 as3)
        (en_base s65 al5)
        (pedido s65 as4)
        (en_base s66 al5)
        (pedido s66 as4)
        (en_base s67 al5)
        (pedido s67 as4)
        (en_base s68 al6)
        (pedido s68 as3)
        (en_base s69 al5)
        (pedido s69 as3)
        (en_base s70 al6)
        (pedido s70 as3)
        (en_base s71 al1)
        (pedido s71 as3)
        (en_base s72 al2)
        (pedido s72 as3)
        (en_base s73 al5)
        (pedido s73 as3)
        (en_base s74 al2)
        (pedido s74 as3)
        (en_base s75 al6)
        (pedido s75 as4)
        (en_base s76 al5)
        (pedido s76 as4)
        (en_base s77 al5)
        (pedido s77 as3)
        (en_base s78 al2)
        (pedido s78 as3)
        (en_base s79 al1)
        (pedido s79 as3)
        (en_base s80 al5)
        (pedido s80 as4)
        (en_base s81 al1)
        (pedido s81 as3)
        (en_base s82 al1)
        (pedido s82 as4)
        (en_base s83 al6)
        (pedido s83 as3)
        (en_base s84 al6)
        (pedido s84 as3)
        (en_base s85 al2)
        (pedido s85 as3)
        (en_base s86 al1)
        (pedido s86 as4)
        (en_base s87 al5)
        (pedido s87 as4)
        (en_base s88 al1)
        (pedido s88 as3)
        (en_base s89 al2)
        (pedido s89 as4)
        (en_base s90 al5)
        (pedido s90 as4)
        (en_base s91 al5)
        (pedido s91 as3)
        (en_base s92 al2)
        (pedido s92 as3)
        (en_base s93 al1)
        (pedido s93 as4)
        (en_base s94 al2)
        (pedido s94 as3)
        (en_base s95 al1)
        (pedido s95 as3)
        (en_base s96 al1)
        (pedido s96 as3)
        (en_base s97 al1)
        (pedido s97 as4)
        (en_base s98 al5)
        (pedido s98 as4)
        (en_base s99 al6)
        (pedido s99 as4)
        (en_base s100 al2)
        (pedido s100 as4)
        (en_base s101 al5)
        (pedido s101 as4)
        (en_base s102 al5)
        (pedido s102 as3)
        (en_base s103 al6)
        (pedido s103 as4)
        (en_base s104 al2)
        (pedido s104 as3)
        (en_base s105 al6)
        (pedido s105 as4)
        (en_base s106 al6)
        (pedido s106 as4)
        (en_base s107 al1)
        (pedido s107 as3)
        (en_base s108 al2)
        (pedido s108 as4)
        (en_base s109 al6)
        (pedido s109 as3)
        (en_base s110 al5)
        (pedido s110 as4)
        (en_base s111 al5)
        (pedido s111 as4)
        (en_base s112 al5)
        (pedido s112 as3)
        (en_base s113 al2)
        (pedido s113 as4)
        (en_base s114 al6)
        (pedido s114 as3)
        (en_base s115 al1)
        (pedido s115 as3)
        (en_base s116 al6)
        (pedido s116 as4)
        (en_base s117 al6)
        (pedido s117 as3)
        (en_base s118 al5)
        (pedido s118 as4)
        (en_base s119 al1)
        (pedido s119 as3)
        (en_base s120 al2)
        (pedido s120 as3)
        (en_base s121 al1)
        (pedido s121 as4)
        (en_base s122 al6)
        (pedido s122 as3)
        (en_base s123 al2)
        (pedido s123 as3)
        (en_base s124 al6)
        (pedido s124 as3)
        (en_base s125 al2)
        (pedido s125 as3)
        (en_base s126 al5)
        (pedido s126 as4)
        (en_base s127 al2)
        (pedido s127 as4)
        (en_base s128 al1)
        (pedido s128 as3)
        (en_base s129 al6)
        (pedido s129 as3)
        (en_base s130 al6)
        (pedido s130 as3)
        (en_base s131 al6)
        (pedido s131 as3)
        (en_base s132 al6)
        (pedido s132 as4)
        (en_base s133 al6)
        (pedido s133 as4)
        (en_base s134 al2)
        (pedido s134 as3)
        (en_base s135 al1)
        (pedido s135 as3)
        (en_base s136 al1)
        (pedido s136 as4)
        (en_base s137 al1)
        (pedido s137 as4)
        (en_base s138 al1)
        (pedido s138 as3)
        (en_base s139 al2)
        (pedido s139 as4)
        (en_base s140 al5)
        (pedido s140 as3)
        (en_base s141 al2)
        (pedido s141 as3)
        (en_base s142 al1)
        (pedido s142 as4)
        (en_base s143 al1)
        (pedido s143 as4)
        (en_base s144 al1)
        (pedido s144 as4)
        (en_base s145 al1)
        (pedido s145 as4)
        (en_base s146 al2)
        (pedido s146 as4)
        (en_base s147 al5)
        (pedido s147 as4)
        (en_base s148 al2)
        (pedido s148 as3)
        (en_base s149 al5)
        (pedido s149 as4)
        (en_base s150 al2)
        (pedido s150 as4)
        (en_base s151 al6)
        (pedido s151 as4)
        (en_base s152 al6)
        (pedido s152 as4)
        (en_base s153 al6)
        (pedido s153 as3)
        (en_base s154 al2)
        (pedido s154 as3)
        (en_base s155 al2)
        (pedido s155 as3)
        (en_base s156 al6)
        (pedido s156 as3)
        (en_base s157 al2)
        (pedido s157 as3)
        (en_base s158 al1)
        (pedido s158 as4)
        (en_base s159 al2)
        (pedido s159 as4)
        (en_base s160 al5)
        (pedido s160 as4)
        (en_base s161 al1)
        (pedido s161 as3)
        (en_base s162 al6)
        (pedido s162 as3)
        (en_base s163 al1)
        (pedido s163 as4)
        (en_base s164 al5)
        (pedido s164 as3)
        (en_base s165 al6)
        (pedido s165 as4)
        (en_base s166 al2)
        (pedido s166 as3)
        (en_base s167 al2)
        (pedido s167 as4)
        (en_base s168 al1)
        (pedido s168 as3)
        (en_base s169 al1)
        (pedido s169 as3)
        (en_base s170 al1)
        (pedido s170 as4)
        (en_base s171 al5)
        (pedido s171 as4)
        (en_base s172 al5)
        (pedido s172 as3)
        (en_base s173 al6)
        (pedido s173 as3)
        (en_base s174 al5)
        (pedido s174 as3)
        (en_base s175 al5)
        (pedido s175 as3)
        (en_base s176 al5)
        (pedido s176 as3)
        (en_base s177 al2)
        (pedido s177 as4)
        (en_base s178 al5)
        (pedido s178 as3)
        (en_base s179 al5)
        (pedido s179 as4)
        (en_base s180 al5)
        (pedido s180 as3)
        (en_base s181 al2)
        (pedido s181 as3)
        (en_base s182 al1)
        (pedido s182 as4)
        (en_base s183 al6)
        (pedido s183 as4)
        (en_base s184 al2)
        (pedido s184 as3)
        (en_base s185 al5)
        (pedido s185 as3)
        (en_base s186 al5)
        (pedido s186 as4)
        (en_base s187 al2)
        (pedido s187 as4)
        (en_base s188 al1)
        (pedido s188 as3)
        (en_base s189 al1)
        (pedido s189 as3)
        (en_base s190 al5)
        (pedido s190 as4)
        (en_base s191 al6)
        (pedido s191 as3)
        (en_base s192 al2)
        (pedido s192 as4)
        (en_base s193 al6)
        (pedido s193 as4)
        (en_base s194 al2)
        (pedido s194 as3)
        (en_base s195 al6)
        (pedido s195 as4)
        (en_base s196 al1)
        (pedido s196 as3)
        (en_base s197 al5)
        (pedido s197 as4)
        (en_base s198 al5)
        (pedido s198 as3)
        (en_base s199 al5)
        (pedido s199 as3)
        (en_base s200 al2)
        (pedido s200 as4)
        (en_base s201 al5)
        (pedido s201 as4)
        (en_base s202 al6)
        (pedido s202 as3)
        (en_base s203 al6)
        (pedido s203 as3)
        (en_base s204 al1)
        (pedido s204 as4)
        (en_base s205 al6)
        (pedido s205 as3)
        (en_base s206 al6)
        (pedido s206 as3)
        (en_base s207 al6)
        (pedido s207 as3)
        (en_base s208 al5)
        (pedido s208 as4)
        (en_base s209 al1)
        (pedido s209 as3)
        (en_base s210 al6)
        (pedido s210 as3)
        (en_base s211 al6)
        (pedido s211 as3)
        (en_base s212 al2)
        (pedido s212 as4)
        (en_base s213 al5)
        (pedido s213 as3)
        (en_base s214 al5)
        (pedido s214 as4)
        (en_base s215 al5)
        (pedido s215 as4)
        (en_base s216 al2)
        (pedido s216 as3)
        (en_base s217 al1)
        (pedido s217 as4)
        (en_base s218 al5)
        (pedido s218 as3)
        (en_base s219 al5)
        (pedido s219 as3)
        (en_base s220 al5)
        (pedido s220 as3)
        (en_base s221 al6)
        (pedido s221 as3)
        (en_base s222 al1)
        (pedido s222 as4)
        (en_base s223 al6)
        (pedido s223 as4)
        (en_base s224 al6)
        (pedido s224 as3)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))

)
