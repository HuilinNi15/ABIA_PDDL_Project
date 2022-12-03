(define (problem RoversSuministrosPersonal) (:domain BasesMarte_extension3)

    (:objects
        rover0 rover1 - rover
        p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 - personal
        s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 - suministro
        al1 al2 al5 al6 - almacen
        as3 as4 - asentamiento
        id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14 id15 id16 id17 id18 id19 id20 id21 id22 id23 id24 id25 id26 id27 id28 id29 id30 id31 id32 id33 id34 id35 id36 id37 id38 id39 id40 id41 id42 id43 id44 id45 id46 id47 id48 id49 id50 id51 id52 id53 id54 id55 id56 id57 id58 id59 id60 id61 id62 id63 id64 id65 id66 id67 id68 id69 id70 id71 id72 id73 id74 id75 id76 id77 id78 id79 id80 id81 id82 id83 id84 id85 id86 id87 id88 id89 id90 id91 id92 id93 id94 id95 id96 id97 id98 id99 - idpedido
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (CombustibleTotal) 0)
        (= (DecrecimientoCombusitible) 0)
        (= (Prioridad id0) 1)
        (= (Prioridad id1) 1)
        (= (Prioridad id2) 1)
        (= (Prioridad id3) 1)
        (= (Prioridad id4) 1)
        (= (Prioridad id5) 2)
        (= (Prioridad id6) 2)
        (= (Prioridad id7) 3)
        (= (Prioridad id8) 2)
        (= (Prioridad id9) 3)
        (= (Prioridad id10) 1)
        (= (Prioridad id11) 1)
        (= (Prioridad id12) 3)
        (= (Prioridad id13) 1)
        (= (Prioridad id14) 3)
        (= (Prioridad id15) 2)
        (= (Prioridad id16) 2)
        (= (Prioridad id17) 2)
        (= (Prioridad id18) 1)
        (= (Prioridad id19) 2)
        (= (Prioridad id20) 3)
        (= (Prioridad id21) 1)
        (= (Prioridad id22) 3)
        (= (Prioridad id23) 3)
        (= (Prioridad id24) 3)
        (= (Prioridad id25) 1)
        (= (Prioridad id26) 3)
        (= (Prioridad id27) 2)
        (= (Prioridad id28) 1)
        (= (Prioridad id29) 2)
        (= (Prioridad id30) 1)
        (= (Prioridad id31) 2)
        (= (Prioridad id32) 3)
        (= (Prioridad id33) 1)
        (= (Prioridad id34) 3)
        (= (Prioridad id35) 2)
        (= (Prioridad id36) 2)
        (= (Prioridad id37) 2)
        (= (Prioridad id38) 3)
        (= (Prioridad id39) 1)
        (= (Prioridad id40) 2)
        (= (Prioridad id41) 1)
        (= (Prioridad id42) 1)
        (= (Prioridad id43) 3)
        (= (Prioridad id44) 3)
        (= (Prioridad id45) 3)
        (= (Prioridad id46) 2)
        (= (Prioridad id47) 3)
        (= (Prioridad id48) 3)
        (= (Prioridad id49) 2)
        (= (Prioridad id50) 3)
        (= (Prioridad id51) 1)
        (= (Prioridad id52) 1)
        (= (Prioridad id53) 2)
        (= (Prioridad id54) 2)
        (= (Prioridad id55) 1)
        (= (Prioridad id56) 1)
        (= (Prioridad id57) 1)
        (= (Prioridad id58) 1)
        (= (Prioridad id59) 1)
        (= (Prioridad id60) 1)
        (= (Prioridad id61) 3)
        (= (Prioridad id62) 2)
        (= (Prioridad id63) 1)
        (= (Prioridad id64) 1)
        (= (Prioridad id65) 1)
        (= (Prioridad id66) 1)
        (= (Prioridad id67) 3)
        (= (Prioridad id68) 2)
        (= (Prioridad id69) 2)
        (= (Prioridad id70) 3)
        (= (Prioridad id71) 2)
        (= (Prioridad id72) 1)
        (= (Prioridad id73) 2)
        (= (Prioridad id74) 3)
        (= (Prioridad id75) 3)
        (= (Prioridad id76) 1)
        (= (Prioridad id77) 1)
        (= (Prioridad id78) 2)
        (= (Prioridad id79) 2)
        (= (Prioridad id80) 1)
        (= (Prioridad id81) 2)
        (= (Prioridad id82) 3)
        (= (Prioridad id83) 1)
        (= (Prioridad id84) 2)
        (= (Prioridad id85) 1)
        (= (Prioridad id86) 2)
        (= (Prioridad id87) 3)
        (= (Prioridad id88) 3)
        (= (Prioridad id89) 2)
        (= (Prioridad id90) 2)
        (= (Prioridad id91) 2)
        (= (Prioridad id92) 2)
        (= (Prioridad id93) 3)
        (= (Prioridad id94) 2)
        (= (Prioridad id95) 3)
        (= (Prioridad id96) 1)
        (= (Prioridad id97) 1)
        (= (Prioridad id98) 3)
        (= (Prioridad id99) 3)
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
        (= (CombustibleRestante rover0) 10000)
        (aparcado rover1 al6)
        (= (PersonalCargado rover1) 0)
        (= (SuministroCargado rover1) 0)
        (= (CombustibleRestante rover1) 10000)
        (en_base p0 as3)
        (pedido p0 as4 id0)
        (en_base p1 as3)
        (pedido p1 as4 id1)
        (en_base p2 as4)
        (pedido p2 as3 id2)
        (en_base p3 as4)
        (pedido p3 as3 id3)
        (en_base p4 as3)
        (pedido p4 as4 id4)
        (en_base p5 as3)
        (pedido p5 as4 id5)
        (en_base p6 as3)
        (pedido p6 as4 id6)
        (en_base p7 as4)
        (pedido p7 as3 id7)
        (en_base p8 as4)
        (pedido p8 as3 id8)
        (en_base p9 as3)
        (pedido p9 as4 id9)
        (en_base p10 as4)
        (pedido p10 as3 id10)
        (en_base p11 as3)
        (pedido p11 as4 id11)
        (en_base p12 as3)
        (pedido p12 as4 id12)
        (en_base p13 as3)
        (pedido p13 as4 id13)
        (en_base p14 as3)
        (pedido p14 as4 id14)
        (en_base p15 as3)
        (pedido p15 as4 id15)
        (en_base p16 as3)
        (pedido p16 as4 id16)
        (en_base p17 as4)
        (pedido p17 as3 id17)
        (en_base p18 as4)
        (pedido p18 as3 id18)
        (en_base p19 as4)
        (pedido p19 as3 id19)
        (en_base p20 as3)
        (pedido p20 as4 id20)
        (en_base p21 as3)
        (pedido p21 as4 id21)
        (en_base p22 as3)
        (pedido p22 as4 id22)
        (en_base p23 as4)
        (pedido p23 as3 id23)
        (en_base p24 as3)
        (pedido p24 as4 id24)
        (en_base p25 as4)
        (pedido p25 as3 id25)
        (en_base p26 as3)
        (pedido p26 as4 id26)
        (en_base p27 as4)
        (pedido p27 as3 id27)
        (en_base p28 as3)
        (pedido p28 as4 id28)
        (en_base p29 as4)
        (pedido p29 as3 id29)
        (en_base p30 as3)
        (pedido p30 as4 id30)
        (en_base p31 as4)
        (pedido p31 as3 id31)
        (en_base p32 as4)
        (pedido p32 as3 id32)
        (en_base p33 as4)
        (pedido p33 as3 id33)
        (en_base p34 as3)
        (pedido p34 as4 id34)
        (en_base p35 as3)
        (pedido p35 as4 id35)
        (en_base p36 as4)
        (pedido p36 as3 id36)
        (en_base p37 as3)
        (pedido p37 as4 id37)
        (en_base p38 as3)
        (pedido p38 as4 id38)
        (en_base p39 as4)
        (pedido p39 as3 id39)
        (en_base p40 as3)
        (pedido p40 as4 id40)
        (en_base p41 as3)
        (pedido p41 as4 id41)
        (en_base p42 as3)
        (pedido p42 as4 id42)
        (en_base p43 as4)
        (pedido p43 as3 id43)
        (en_base p44 as3)
        (pedido p44 as4 id44)
        (en_base p45 as3)
        (pedido p45 as4 id45)
        (en_base p46 as3)
        (pedido p46 as4 id46)
        (en_base p47 as3)
        (pedido p47 as4 id47)
        (en_base p48 as4)
        (pedido p48 as3 id48)
        (en_base p49 as4)
        (pedido p49 as3 id49)
        (en_base s0 al1)
        (pedido s0 as4 id50)
        (en_base s1 al5)
        (pedido s1 as4 id51)
        (en_base s2 al2)
        (pedido s2 as3 id52)
        (en_base s3 al2)
        (pedido s3 as3 id53)
        (en_base s4 al2)
        (pedido s4 as4 id54)
        (en_base s5 al6)
        (pedido s5 as4 id55)
        (en_base s6 al1)
        (pedido s6 as3 id56)
        (en_base s7 al1)
        (pedido s7 as4 id57)
        (en_base s8 al6)
        (pedido s8 as4 id58)
        (en_base s9 al1)
        (pedido s9 as3 id59)
        (en_base s10 al6)
        (pedido s10 as3 id60)
        (en_base s11 al6)
        (pedido s11 as4 id61)
        (en_base s12 al5)
        (pedido s12 as4 id62)
        (en_base s13 al5)
        (pedido s13 as3 id63)
        (en_base s14 al6)
        (pedido s14 as4 id64)
        (en_base s15 al6)
        (pedido s15 as3 id65)
        (en_base s16 al5)
        (pedido s16 as4 id66)
        (en_base s17 al1)
        (pedido s17 as4 id67)
        (en_base s18 al1)
        (pedido s18 as3 id68)
        (en_base s19 al2)
        (pedido s19 as4 id69)
        (en_base s20 al6)
        (pedido s20 as4 id70)
        (en_base s21 al5)
        (pedido s21 as4 id71)
        (en_base s22 al5)
        (pedido s22 as4 id72)
        (en_base s23 al5)
        (pedido s23 as3 id73)
        (en_base s24 al6)
        (pedido s24 as3 id74)
        (en_base s25 al5)
        (pedido s25 as3 id75)
        (en_base s26 al1)
        (pedido s26 as4 id76)
        (en_base s27 al6)
        (pedido s27 as3 id77)
        (en_base s28 al2)
        (pedido s28 as4 id78)
        (en_base s29 al1)
        (pedido s29 as3 id79)
        (en_base s30 al1)
        (pedido s30 as3 id80)
        (en_base s31 al6)
        (pedido s31 as4 id81)
        (en_base s32 al6)
        (pedido s32 as3 id82)
        (en_base s33 al5)
        (pedido s33 as3 id83)
        (en_base s34 al2)
        (pedido s34 as3 id84)
        (en_base s35 al2)
        (pedido s35 as4 id85)
        (en_base s36 al6)
        (pedido s36 as3 id86)
        (en_base s37 al6)
        (pedido s37 as4 id87)
        (en_base s38 al5)
        (pedido s38 as3 id88)
        (en_base s39 al1)
        (pedido s39 as3 id89)
        (en_base s40 al6)
        (pedido s40 as4 id90)
        (en_base s41 al1)
        (pedido s41 as3 id91)
        (en_base s42 al1)
        (pedido s42 as3 id92)
        (en_base s43 al6)
        (pedido s43 as4 id93)
        (en_base s44 al1)
        (pedido s44 as4 id94)
        (en_base s45 al5)
        (pedido s45 as4 id95)
        (en_base s46 al5)
        (pedido s46 as4 id96)
        (en_base s47 al2)
        (pedido s47 as4 id97)
        (en_base s48 al5)
        (pedido s48 as4 id98)
        (en_base s49 al2)
        (pedido s49 as4 id99)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))
    (:metric maximize (AcumPrioridad))

)
