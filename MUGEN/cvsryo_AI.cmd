; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;-------------------------------------------------------------------------
;Stuffing
;-------------------------------------------------------------------------

[State AI, K throw Stuffing]
type = changestate
value = 899
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = statetype = S
triggerall = ctrl && stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H || var(16)
triggerall = random <= 500 || var(59)&2**0
trigger1 = enemynear,facing != facing
trigger1 = !(var(59)&2**1)
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000

[State AI, P throw Stuffing]
type = changestate
value = 900
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = statetype = S
triggerall = ctrl && stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H || var(16)
triggerall = random <= 500 || var(59)&2**0
trigger1 = enemynear,facing != facing
trigger1 = !(var(59)&2**1)
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000

[State AI, ScLP Stuffing]
type = changestate
value = 201
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = p2bodydist x = [0,20]
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A || p2bodydist y < -50 && enemynear, vel y > 0
triggerall = enemynear, statetype != C
triggerall = !(var(59)&2**0)
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-3)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, ScMP Stuffing]
type = changestate
value = 211
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype = S
triggerall = !(var(59)&2**0)
triggerall = p2bodydist x = [0,20]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, SLP Stuffing]
type = changestate
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A || p2bodydist y < -50
triggerall = enemynear, statetype = S
triggerall = !(var(59)&2**0)
triggerall = p2bodydist x = [0,45]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, SMP Stuffing]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype = S
triggerall = !(var(59)&2**0)
triggerall = p2bodydist x = [0,65]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, CLK Stuffing]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2&&(p2stateno!=3700&&p2movetype!=A)
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
triggerall = !(var(59)&2**0)
triggerall = p2bodydist x = [0,60]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

[State AI, CMK Stuffing]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype != A
triggerall = enemynear, statetype = S
triggerall = !(var(59)&2**0)
triggerall = p2bodydist x = [0,75]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger1 = random<=600
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
trigger2 = random<=300

;-------------------------------------------------------------------------
;Dodging
;-------------------------------------------------------------------------

[State AI, Defensive Jump]
type = changestate
value = 41
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = var(20)<2 || var(0):=(var(0)-(var(0)&2**5))+2**5
triggerall = enemynear,facing != facing
trigger1 = enemynear,time=helper(11000),fvar(9)-3
trigger1 = numhelper(11000)
trigger2 = helper(11000),var(40)=3||enemynear, hitdefattr = sca, at
trigger2 = enemynear, statetype != A
trigger2 = p2bodydist x <= 90

[State AI, rolling]
type = changestate
value = 800
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<=(-24-random%15) && !enemynear, ctrl
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (abs(helper(11000), fvar(16))-29*abs(helper(11000),fvar(18))) <=118

[State AI, Dodge]
type = changestate
value = 830
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !var(16)
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time<=2 && stateno = [200,450]
triggerall = statetype != A
triggerall = helper(11000), var(40)!=3
triggerall = enemynear, animtime<=-15 && !enemynear, ctrl && enemynear,stateno>=200; || p2bodydist x >= 100
triggerall = enemynear,facing != facing
triggerall = random <= 600
trigger1 = helper(11000), var(51)
trigger1 = abs(helper(11000), fvar(16)) = [-40,40]
trigger1 = abs(helper(11000), fvar(16))-26*helper(11000),fvar(18) != [-40,40]
trigger1 = !enemynear, hitdefattr=sca,aa,at
;trigger1 = enemynear,vel x>=0
trigger1 = !enemynear,numproj
trigger2 = p2bodydist x < 70
trigger2 = enemynear, movetype = A
trigger2 = enemynear, vel x >= 0
trigger2 = enemynear, stateno != 200 && enemynear,stateno!=230 && enemynear,stateno != 400 && enemynear,stateno != 430
trigger2 = !enemynear,numproj
trigger2 = enemynear, hitdefattr = sca, aa

;-------------------------------------------------------------------------
;Counter
;-------------------------------------------------------------------------

[State AI, Tenchi Haou Counter]
type = changestate
value = 3200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype != A
;triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = enemynear,animtime<-19 && !enemynear, ctrl
triggerall = !(var(59)&2**0)
triggerall = fvar(32):=enemynear,stateno
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = p2bodydist x + enemynear,vel x*20 < 115
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = p2bodydist x + enemynear,vel x*20 < 115

[State AI, Ryoukou Counter]
type = changestate
value = 3100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype!=A  || p2bodydist y > - 50
triggerall = enemynear,movetype = A
triggerall = !(var(59)&2**0)
triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = helper(11000),var(48)=0
triggerall = enemynear,time>=10+(random%5)-(15-ceil(15*life/const(data.life)))
triggerall = random <= 200
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = p2bodydist x = [0,120]
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = p2bodydist x = [0,120]
trigger2 = var(5):=2
trigger3 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = p2bodydist x = [0,90]
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = p2bodydist x = [0,90]
trigger4 = var(5):=1
trigger5 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger5 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger5 = p2bodydist x = [0,60]
trigger5 = var(5):=0||1
trigger6 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger6 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger6 = p2bodydist x = [0,60]
trigger6 = var(5):=0||1

[State AI, Haou Shoukou Counter]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, statetype != A
triggerall = enemynear, hitdefattr != sca, aa, ap, at || enemynear, numproj || helper(11000),var(51)
triggerall = p2bodydist x = [80,180]
triggerall = !(var(59)&2**2)
triggerall = helper(11000),var(48)=0
triggerall = enemynear,time>=10+(random%5)-(15-ceil(15*life/const(data.life)))
triggerall = random <= 400
trigger1 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = enemynear,animtime<-(9+ifelse(p2bodydist x>120,(p2bodydist x-120)/7,0)) && !enemynear,ctrl
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = enemynear,animtime<-(9+ifelse(p2bodydist x>120,(p2bodydist x-120)/7,0)) && !enemynear,ctrl
trigger2 = var(5):=2
trigger3 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = enemynear,animtime<-(9+ifelse(p2bodydist x>100,(p2bodydist x-100)/6,0)) && !enemynear,ctrl
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = enemynear,animtime<-(9+ifelse(p2bodydist x>100,(p2bodydist x-100)/6,0))
trigger4 = var(5):=1
trigger5 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger5 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger5 = enemynear,animtime<-(10+ifelse(p2bodydist x>100,(p2bodydist x-100)/5,0))
trigger5 = var(5):=0||1
trigger6 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger6 =  ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
trigger6 = enemynear,animtime<-(10+ifelse(p2bodydist x>100,(p2bodydist x-100)/5,0))
trigger6 = var(5):=0||1

[State AI, rolling]
type = changestate
value = ifelse(random<= 333, 830, 800)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,at
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
trigger1 = var(59)%(2**3)
trigger1 = random<=600
trigger2 = helper(11000),var(40)=4
trigger2 = random<=800

[State AI, Moukou Counter]
type = changestate
value = 1500
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear,time=((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-3 && enemynear, hitdefattr = sca, at || helper(11000),var(40)=3
triggerall = !enemynear, ctrl
triggerall = enemynear,animtime<-21
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
triggerall = !(var(59)&2**0)
triggerall = helper(11000),var(48)=0
triggerall = p2bodydist x = [0, 100]
trigger1 = var(5):=0||1

[State AI, Kouou Counter]
type = changestate
value = 1100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, hitdefattr = sca, aa, ap, at || enemynear, numproj || helper(11000),var(51) || enemynear,time = [(var(59)/(2**4))-(var(59)/(2**8)*(2**4))-5-1,(var(59)/(2**4))-(var(59)/(2**8)*(2**4))-5]
triggerall = !enemynear, ctrl
triggerall = enemynear,animtime<-5
triggerall = random <= 400+400*life/const(data.life)
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
triggerall = !(var(59)&2**0)
triggerall = helper(11000),var(48)=0
trigger1 = p2bodydist x-enemynear,vel x*5 <=30
trigger1 = p2bodydist y-enemynear,vel y*5> -80
trigger1 = enemynear,time>=5+(random%5)-(15-ceil(15*life/const(data.life)))
trigger1 = var(5):=2

;-------------------------------------------------------------------------
;Guarding
;-------------------------------------------------------------------------
[State AI, Forward GCAB]
type = changestate
value = 810
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<=-29 && !enemynear, ctrl
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = stateno = [150,153]
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000+1000*(var(15)>0)
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (abs(helper(11000), fvar(16))-29*abs(helper(11000),fvar(18))) <=118

[State AI, Guarding]
type = changestate
triggerall = var(59)
triggerall = ctrl || (stateno = [100,101])
trigger1 = var(59)&(2**3)
value = 120

;-------------------------------------------------------------------------
;Wakeup
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
;Link
;-------------------------------------------------------------------------

[State AI, SLP Link]
type = changestate
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 400 && var(36)
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(2))/(1-helper(11000),fvar(22))) <= 20
Trigger1 = EnemyNear,GetHitVar(hittime)>= 1

[State AI, CLP Link]
type = changestate
value = 400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 400 && var(36)
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 35
Trigger1 = EnemyNear,GetHitVar(hittime)>= 2

[State AI, CMP Link]
type = changestate
value = 410
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 400 && var(36)
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 60
Trigger1 = EnemyNear,GetHitVar(hittime)>= 2

[State AI, CMK Link]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 400 && var(36)
triggerall = enemynear,movetype = H && !enemynear,ctrl
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(4))/(1-helper(11000),fvar(22))) <= 80
Trigger1 = EnemyNear,GetHitVar(hittime)>= 3

;-------------------------------------------------------------------------
;Cancel
;-------------------------------------------------------------------------

[State AI, Tenchi Haou Cancel]
type = changestate
value = 3200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1
triggerall = stateno = 1301 && animelemtime(43) > 0
trigger1 = (var(20) = 2 && Power >= 3000) || (var(20) = 6 && (Power >= 3000-2000*var(15)) && !var(16))
trigger1 = var(5):=2

[State AI, Haou Shoukou Cancel]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1
triggerall = stateno = 1301 && animelemtime(44) > 0
triggerall = facing = 1 && helper(11000),fvar(11)<100 || facing = -1 && helper(11000),fvar(10)<100
trigger1 = (var(20) = 6 && Power = [2000,3000]) && !var(15)
trigger1 = var(5):=1

[State AI, Ryoukou Ranbu Cancel]
type = changestate
value = 3100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1
triggerall = stateno = 1301 && animelemtime(44) > 0
trigger1 = (var(20) = 2 && Power >= 3000) || (var(20) = 6 && (Power >= 3000-2000*var(15)) && !var(16))
trigger1 = var(5):=2
trigger2 = (var(20) = 6 && Power = [2000,2999]) && !var(15)
trigger2 = var(5):=1
trigger3 = (var(20) = 6 && Power = [1000,1999]) && !var(15)
trigger3 = var(5):=0||1

[State AI, Zanretsu Cancel]
type = changestate
value = 1300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = (!var(20)||var(20)=6)
trigger1 = stateno = 3101 && var(5) = 1
trigger1 = animelem = 59
trigger1 = helper(11000),var(47)>58
trigger1 = var(5) := 2
trigger2 = var(36) = 3 && !var(16)
trigger2 = (!var(20)||var(20)=6)
trigger2 = stateno = 3000 && var(5) = 1
trigger2 = !NumHelper(7200)||helper(7200),stateno=7205
trigger2 = p2bodydist x + enemynear,vel x*(1-helper(11000),fvar(22)**8)/(1-helper(11000),fvar(22)) <= 75
trigger2 = var(5) := 2
trigger3 = stateno = 210 || stateno = 211 || stateno = 410 || stateno = 440
trigger3 = var(36) = 1 && !var(16)
trigger3 = enemynear, statetype != A
trigger3 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(8))/(1-helper(11000),fvar(22))) <= 44
trigger3 = EnemyNear,GetHitVar(hittime)>=7
trigger3 = var(5) := 2

[State AI, Renbu Cancel]
type = changestate
value = 1400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) && !var(16)
triggerall = enemynear, statetype != A
triggerall = stateno = 210 || stateno = 211 || stateno = 410 || stateno = 440
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(11))/(1-helper(11000),fvar(22))) <= 60
trigger1 = EnemyNear,GetHitVar(hittime)>=10

[State AI, Hien Cancel]
type = changestate
value = 1200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = var(36) = 1 && !var(16)
triggerall = stateno = 210 || stateno = 211 || stateno = 410 || stateno = 440 || enemynear,movetype = H && !enemynear,ctrl && ctrl
trigger1 = EnemyNear,GetHitVar(hittime)>=(13+ifelse(p2bodydist x>110,(p2bodydist x-110)/8.5,0))
trigger1 = var(5) := 2

[State AI, Kououken Cancel]
type = changestate
value = 1000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) && !var(16)
triggerall = stateno = 210 || stateno = 211 || stateno = 410 || stateno = 440
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(15+ifelse(p2bodydist x>95,(p2bodydist x-95)/6.75,0)))/(1-helper(11000),fvar(22))) <= 150
trigger1 = EnemyNear,GetHitVar(hittime)>=(14+ifelse(p2bodydist x>95,(p2bodydist x-95)/6.75,0))
trigger1 = var(5) := 2

;-------------------------------------------------------------------------
;Recovery Trap
;-------------------------------------------------------------------------

[State AI, Tenchi Haou trap]
type = changestate
value = 3200
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1)
triggerall = !(var(59)&2**0)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -20
triggerall = enemynear, stateno>=200
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !(var(59)&2**0)
triggerall = enemynear, hitdefattr != SCA && !enemynear,ctrl && p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810) || p2movetype = A && enemynear,facing=facing || p2movetype = I && !enemynear, ctrl
triggerall = fvar(32):=enemynear,stateno
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = p2bodydist x + enemynear,vel x*20 < 115
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 231 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = p2bodydist x + enemynear,vel x*20 < 115

[State AI, P throw trap]
type = changestate
value = 900
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = helper(11000),var(44)!=2 && helper(11000),var(44)!=4 && enemynear, time >= 2
TriggerAll = P2BodyDist X = [0,22]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -3
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 200
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, CLK trap]
type = changestate
value = 430
TriggerAll = var(59)&&(p2stateno!=3700&&p2movetype!=A)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1)
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
TriggerAll = P2BodyDist X = [0,35]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -4
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 500
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, zanretsu trap]
type = changestate
value = 1300
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1)
triggerall = !(var(59)&2**0)
TriggerAll = P2BodyDist X = [0,40]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -8
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = enemynear, stateno>=200
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 500
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && !inguarddist
trigger1 = var(5):=2
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger2 = var(5):=2
trigger3 = p2movetype = I
trigger3 = var(5):=2

[State AI, Renbu trap]
type = changestate
value = 1400
TriggerAll = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1)
triggerall = !(var(59)&2**0)
TriggerAll = P2BodyDist X = [0,50]
triggerall = !var(16)
triggerall = !enemynear, ctrl
triggerall = enemynear, animtime < -12
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, stateno>=120
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = random <= 500
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && !inguarddist
trigger1 = var(5):=2
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger2 = var(5):=2
trigger3 = p2movetype = I
trigger3 = var(5):=2
[State AI, Dodge cancel]
Type = changestate
value = 211
TriggerAll = var(59)
triggerall = roundstate = 2
TriggerAll = StateType != A
TriggerAll = P2BodyDist X = [0,45]
triggerall = !var(16)
triggerall = enemynear,movetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = stateno = 830 && time = [14,24]
triggerall = !inguarddist || enemynear,time <= (helper(11000),var(29)-5)
triggerall = enemynear, animtime < -3 && !enemynear,ctrl
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = p2movetype = A
trigger2 = p2movetype = I && !enemynear, ctrl

;-------------------------------------------------------------------------
;Move
;-------------------------------------------------------------------------

[state AI, back step]
type = changestate
triggerall = var(59)
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = enemynear, statetype = L && enemynear,vel x <= 0
trigger1 = p2bodydist x <= 40
value = ifelse(helper(11000),fvar(11-ifelse(facing=1,1,0))>=100,105,ifelse(var(0):=(var(0)-(var(0)&2**5))+2**4,41,41))

[state AI, max]
type = changestate
triggerall = var(59)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear, movetype = I || var(40) = 1
triggerall = var(20) = 4 || var(20) = 6
triggerall = power = [2000,3000]
triggerall = !var(15) && !var(16) && !var(14)
triggerall = p2bodydist x > 30 && p2statetype=L || p2bodydist x > 100 && !helper(11000),var(53) || var(40) = 1 || var(40) = 0
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 210 && time <= 2
trigger4 = StateNo = 211 && time <= 2
trigger5 = StateNo = 220 && time <= 2
trigger6 = StateNo = 221 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 231 && time <= 2
trigger9 = StateNo = 240 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 251 && time <= 2
trigger12 = StateNo = 400 && time <= 2
trigger13 = StateNo = 410 && time <= 2
trigger14 = StateNo = 420 && time <= 2
trigger15 = StateNo = 430 && time <= 2
trigger16 = StateNo = 440 && time <= 2
trigger17 = StateNo = 450 && time <= 2
trigger18 = StateNo = 300 && time <= 2
value = 860

[state AI, charge]
type = changestate
triggerall = var(59)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear, movetype = I || var(40) = 1 || (enemynear,stateno = [3105,3107])&&numtarget
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = !inguarddist
triggerall = prevstateno != 850
triggerall = p2bodydist x > 30 && (p2statetype=L || var(40) = 1 || var(40) = 0 || p2bodydist x > 100) && !helper(11000),var(53)
triggerall = (enemynear,stateno != [3600,3700]) || enemynear,movetype != H || p2bodydist x < 40
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time <= 2
trigger3 = StateNo = 210 && time <= 2
trigger4 = StateNo = 211 && time <= 2
trigger5 = StateNo = 220 && time <= 2
trigger6 = StateNo = 221 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 231 && time <= 2
trigger9 = StateNo = 240 && time <= 2
trigger10 = StateNo = 250 && time <= 2
trigger11 = StateNo = 251 && time <= 2
trigger12 = StateNo = 400 && time <= 2
trigger13 = StateNo = 410 && time <= 2
trigger14 = StateNo = 420 && time <= 2
trigger15 = StateNo = 430 && time <= 2
trigger16 = StateNo = 440 && time <= 2
trigger17 = StateNo = 450 && time <= 2
trigger18 = StateNo = 300 && time <= 2
value = 850

[state AI, run]
type = changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !InguardDist && !helper(11000),var(53)
triggerall = ctrl
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
triggerall = !var(16)
triggerall = p2bodydist x >= 20
trigger1 = random%100 = [0,8]
trigger1 = p2bodydist x != [-1,90]
trigger1 = enemynear,statetype = L
trigger1 = statetype = S
trigger1 = var(40) != 1
trigger2 = prevstateno = 200 || prevstateno = 201 || prevstateno = 400 || prevstateno = 430
trigger2 = (p2bodydist x != [-1,90])||enemynear,statetype != L
trigger2 = var(40) != 1
trigger3 = p2statetype != L
trigger3 = statetype = S
trigger3 = (p2bodydist x != [-1,90])||enemynear,statetype != L
trigger3 = var(40) != 1
trigger4 = (enemynear,stateno = [3600,3700]) && enemynear,movetype = H
value = ifelse(var(20)>=3,100,20)

;---------------------------------------------------------------------------
;éÛêgÅiínè„Åj
[State AI, recover]
type = changestate
value = 5200
triggerall = var(59)
triggerall = !(var(0)&2**10)
triggerall = var(20) = 1 || var(20) = 4 || var(20) = 5 || var(20) = 6
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = p2bodydist x > 40
persistent = 0

;-------------------------------------------------------------------------
;Start
;-------------------------------------------------------------------------

[State AI, CHP anti-air start]
type = changestate
value = 420
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x - 4*enemynear, vel x = [0,40]
triggerall = enemynear,pos y+4*enemynear, vel y+8*enemynear,const(movement.yaccel) = [-100, -10]
triggerall = enemynear,statetype = A
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = enemynear,facing != facing
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101

[state AI, P throw start]
type = changestate
value = 900
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[0,20]
triggerall = helper(11000),var(44)!=3 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 100

[state AI, CLK start]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2&&(p2stateno!=3700&&p2movetype!=A)
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I || enemynear,stateno = 3700
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[0,50]
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 400

[state AI, SMP start]
type = changestate
value = 210
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,stateno = 3106
triggerall = enemynear, anim = 5080
triggerall = P2BodyDist X =[20,70]
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 200

[state AI, CMK start]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[35,70]
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 400

[state AI, Hyouchu start]
type = changestate
value = 300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[0,50]
triggerall = helper(11000),var(44)!=1 && helper(11000),var(44)!=4 && enemynear, time >= 2
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 50

[State -1, aerial kououken]
type = changestate
value = 1050
triggerall = var(59)
triggerall = !(var(0)&2**5)
triggerall = roundstate = 2
triggerall = !NumProjID(1005) && !NumProjID(1055) && !NumProjID(3005)
triggerall = statetype = A
triggerall = pos Y <= -80
triggerall = ctrl
trigger1 = enemynear,statetype = A
trigger1 = enemynear, movetype = H
trigger1 = p2bodydist x = [0,50]
trigger1 = var(5) := 2
ignorehitpause = 0



[state AI, Hyouchu start]
type = changestate
value = ifelse(power>=1000,1300,440)
triggerall = var(59)&&roundstate = 2&&statetype != A&&p2bodydist X<50
triggerall = p2statetype != A&&p2movetype!=A&&p2statetype !=L
trigger1 = ctrl|| (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = p2stateno=3700

;-------------------------------------------------------------------------
;Pressure
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
;Aerial Pressure
;-------------------------------------------------------------------------

[State -1, Taunt]
type = changestate
value = 195
triggerall = var(59)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger1 = win

;-------------------------------------------------------------------------
[State AI, AI Switch Helper]
type = helper
trigger1=!NumHelper(11000)
helpertype=normal
name="AI Switch Helper"
stateno=11000
ID=11000
pos=9999,9999
keyctrl=1
pausemovetime=65535
supermovetime=65535
persistent = 0

[State AI, Switch]
type = Varadd
triggerall = !ishelper
triggerall = !(var(59)&(2**19))
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
trigger31  = command = "CPU31"
trigger32  = command = "CPU32"
trigger33  = command = "CPU33"
trigger34  = command = "CPU34"
trigger35  = command = "CPU35"
trigger36  = command = "CPU36"
trigger37  = command = "CPU37"
trigger38  = command = "CPU38"
trigger39  = command = "CPU39"
trigger40  = command = "CPU40"
trigger41  = command = "CPU41"
trigger42  = command = "CPU42"
trigger43  = command = "CPU43"
trigger44  = command = "CPU44"
trigger45  = command = "CPU45"
trigger46  = command = "CPU46"
trigger47  = command = "CPU47"
trigger48  = command = "CPU48"
trigger49  = command = "CPU49"
trigger50  = command = "CPU50"
trigger51 = command = "a" ^^ command = "aia"
trigger52 = command = "b" ^^ command = "aib"
trigger53 = command = "c" ^^ command = "aic"
trigger54 = command = "x" ^^ command = "aix"
trigger55 = command = "y" ^^ command = "aiy"
trigger56 = command = "z" ^^ command = "aiz"
trigger57 = Numhelper(11000)
trigger57 = Helper(11000),var(59)=1
var(59) = 2**19

[State AI, Safety]
type=changestate
trigger1= ishelper(11000)
trigger1= stateno!=11000
value=11000;===========================================================================
;---------------------------------------------------------------------------
;天地覇煌拳
[State -1, hadouken]
type = changestate
value = 3200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
triggerall = Command = "天地覇煌拳"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(17) > 0 && !var(5)
trigger28 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(29) > 0 && var(5) = 1
trigger29 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(41) > 0 && var(5) = 2
trigger30 = (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6)
trigger31 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger32 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3101 && (var(20) = 2 || var(20) = 6)
trigger34 = StateNo = 3105 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;覇王翔吼拳
[State -1, hadouken]
type = changestate
value = 3000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = !NumProjID(1005) && !NumProjID(1055) && !NumProjID(3005)
triggerall = Command = "覇王翔吼拳1" || Command = "覇王翔吼拳2" || Command = "覇王翔吼拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(17) > 0 && !var(5)
trigger28 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(29) > 0 && var(5) = 1
trigger29 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(41) > 0 && var(5) = 2
trigger30 = (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6)
trigger31 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger32 = StateNo = 3101 && (var(20) = 2 || var(20) = 6)
trigger33 = StateNo = 3105 && (var(20) = 2 || var(20) = 6)
trigger34 = StateNo = 3200 && (var(20) = 2 || var(20) = 6) && time > 50
trigger35 = StateNo = 3201 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;龍虎乱舞
[State -1, hadouken]
type = changestate
value = 3100
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = Command = "龍虎乱舞1" || Command = "龍虎乱舞2" || Command = "龍虎乱舞3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger7 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1300]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(17) > 0 && !var(5)
trigger28 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(29) > 0 && var(5) = 1
trigger29 = StateNo = 1301 && (var(20) = 2 || var(20) = 6) && animelemtime(41) > 0 && var(5) = 2
trigger30 = (StateNo = [1400,2999]) && (var(20) = 2 || var(20) = 6)
trigger31 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger32 = StateNo = 3200 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3201 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;虎砲
[State -1, hadouken]
type = changestate
value = 1100
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "虎砲1" || Command = "虎砲2" || Command = "虎砲3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;虎煌拳
[State -1, hadouken]
type = changestate
value = 1000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProjID(1005) && !NumProjID(1055) && !NumProjID(3005)
triggerall = Command = "虎煌拳1" || Command = "虎煌拳2" || Command = "虎煌拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;空中虎煌拳
[State -1, hadouken]
type = changestate
value = 1050
triggerall = !var(59)
triggerall = !(var(0)&2**5)
triggerall = roundstate = 2
triggerall = !NumProjID(1005) && !NumProjID(1055) && !NumProjID(3005)
triggerall = Command = "虎煌拳1" || Command = "虎煌拳2" || Command = "虎煌拳3"
triggerall = statetype = A
triggerall = pos Y <= -20
trigger1 = ctrl
trigger2 = StateNo = 600 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(10) < 0))
trigger3 = StateNo = 610 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger4 = StateNo = 620 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger5 = StateNo = 630 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(11) < 0))
trigger6 = StateNo = 640 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger7 = StateNo = 650 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger8 = StateNo = 195 && var(36) && var(16)
trigger9 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger10 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger11 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger12 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger13 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;猛虎雷神刹
[State -1, hadouken]
type = changestate
value = 1500
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "猛虎雷神刹1" || Command = "猛虎雷神刹2" || Command = "猛虎雷神刹3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;暫烈拳
[State -1, hadouken]
type = changestate
value = 1300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "暫烈拳1" || Command = "暫烈拳2" || Command = "暫烈拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;飛燕疾風脚（通常）
[State -1, hadouken]
type = changestate
value = 1200
triggerall = !var(59)
triggerall = !var(16)
triggerall = roundstate = 2
triggerall = Command = "飛燕疾風脚1" || Command = "飛燕疾風脚2" || Command = "飛燕疾風脚3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && time <= 2
trigger7 = StateNo = 230 && time <= 2
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && time <= 2
trigger10 = StateNo = 241 && time <= 2
trigger11 = StateNo = 250 && time <= 2
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && time <= 2
trigger18 = StateNo = 300 && time <= 2
trigger19 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;飛燕疾風脚（オリコン）
[State -1, hadouken]
type = changestate
value = 1200
triggerall = !var(59)
triggerall = var(16)
triggerall = roundstate = 2
triggerall = Command = "飛燕疾風脚4" || Command = "飛燕疾風脚5" || Command = "飛燕疾風脚6"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = [200,799]
trigger3 = StateNo = 195 && var(36)
trigger4 = (StateNo = [1000,1299]) && var(36)
trigger5 = StateNo = 1300 && (var(36) = [2,4])
trigger6 = StateNo = 1301 && var(36) && animelemtime(2) > 0
trigger7 = (StateNo = [1400,2999]) && var(36)
ignorehitpause = 0

;---------------------------------------------------------------------------
;極限流連舞拳
[State -1, hadouken]
type = changestate
value = 1400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "極限流連舞拳1" || Command = "極限流連舞拳2" || Command = "極限流連舞拳3"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1]
type = changestate
value = 2800
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = Command = "gc" && command != "holddown" && Command = "holdfwd"
trigger1 = Power >= 1000 && (!var(20) || var(20) = 4 || var(20) = 6)
trigger2 = Power >= 1500 && var(20) = 1
trigger3 = var(14) && var(20) = 3

;---------------------------------------------------------------------------
;ガードキャンセル移動（前）
[State -1]
type = changestate
value = 810
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = Command = "recovery" && command != "holddown" && Command = "holdfwd"
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;ガードキャンセル移動（後）
[State -1]
type = changestate
value = 820
triggerall = !var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = Command = "recovery" && command != "holddown" && Command = "holdback"
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = changestate
value = 195
triggerall = !var(59)
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 230 && (var(16) || time <= 2)
trigger8 = StateNo = 231
trigger9 = StateNo = 240 && (var(16) || time <= 2)
trigger10 = StateNo = 241 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger14 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(3) < 0))
trigger15 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 450 && (var(16) || time <= 2)
trigger18 = StateNo = 300 && (var(16) || time <= 2)
trigger19 = StateNo = 195 && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
trigger24 = (StateNo = [3000,3199]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ラン
[State -1, Run Fwd]
type = changestate
value = 100
triggerall = !var(59)
triggerall = var(20) = 3 || var(20) = 4 || var(20) = 5 || var(20) = 6
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ステップ
[State -1, Run Fwd]
type = changestate
value = 102
triggerall = !var(59)
triggerall = !var(20) || var(20) = 1 || var(20) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = changestate
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;受身
[State -1]
type = changestate
value = 5200
triggerall = !var(59)
triggerall = !(var(0)&2**10)
triggerall = var(20) = 1 || var(20) = 4 || var(20) = 5 || var(20) = 6
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = command = "recovery"
persistent = 0

;---------------------------------------------------------------------------
;回り込み
[State -1]
type = changestate
value = 800
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 1 || var(20) = 4) && command = "recovery") || (var(20) = 6 && command = "holdfwd" && command = "recovery")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time < 2
trigger3 = StateNo = 201 && time < 2
trigger4 = StateNo = 210 && time < 2
trigger5 = StateNo = 211 && time < 2
trigger6 = StateNo = 220 && time < 2
trigger7 = StateNo = 230 && time < 2
trigger8 = StateNo = 231 && time < 2
trigger9 = StateNo = 240 && time < 2
trigger10 = StateNo = 241 && time < 2
trigger11 = StateNo = 250 && time < 2
trigger12 = StateNo = 400 && time < 2
trigger13 = StateNo = 410 && time < 2
trigger14 = StateNo = 420 && time < 2
trigger15 = StateNo = 430 && time < 2
trigger16 = StateNo = 440 && time < 2
trigger17 = StateNo = 450 && time < 2
trigger18 = StateNo = 300 && time < 2
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;避け
[State -1]
type = changestate
value = 830
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(20) = 3 || var(20) = 6
triggerall = command = "recovery"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time < 2
trigger3 = StateNo = 201 && time < 2
trigger4 = StateNo = 210 && time < 2
trigger5 = StateNo = 211 && time < 2
trigger6 = StateNo = 220 && time < 2
trigger7 = StateNo = 230 && time < 2
trigger8 = StateNo = 231 && time < 2
trigger9 = StateNo = 240 && time < 2
trigger10 = StateNo = 241 && time < 2
trigger11 = StateNo = 250 && time < 2
trigger12 = StateNo = 400 && time < 2
trigger13 = StateNo = 410 && time < 2
trigger14 = StateNo = 420 && time < 2
trigger15 = StateNo = 430 && time < 2
trigger16 = StateNo = 440 && time < 2
trigger17 = StateNo = 450 && time < 2
trigger18 = StateNo = 300 && time < 2
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger21 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger22 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger23 = (StateNo = [1400,2999]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;パワー溜め
[State -1]
type = changestate
value = 850
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = (command = "chargec" && command = "chargez")
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time < 2
trigger3 = StateNo = 201 && time < 2
trigger4 = StateNo = 210 && time < 2
trigger5 = StateNo = 211 && time < 2
trigger6 = StateNo = 220 && time < 2
trigger7 = StateNo = 230 && time < 2
trigger8 = StateNo = 231 && time < 2
trigger9 = StateNo = 240 && time < 2
trigger10 = StateNo = 241 && time < 2
trigger11 = StateNo = 250 && time < 2
trigger12 = StateNo = 400 && time < 2
trigger13 = StateNo = 410 && time < 2
trigger14 = StateNo = 420 && time < 2
trigger15 = StateNo = 430 && time < 2
trigger16 = StateNo = 440 && time < 2
trigger17 = StateNo = 450 && time < 2
trigger18 = StateNo = 300 && time < 2

;---------------------------------------------------------------------------
;パワーMAX発動
[State -1]
type = changestate
value = 860
triggerall = !var(59)
triggerall = (var(20) = 4 && Command = "oc") || (var(20) = 6 && Command = "gc")
triggerall = Power >= 1000
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time < 2
trigger3 = StateNo = 201 && time < 2
trigger4 = StateNo = 210 && time < 2
trigger5 = StateNo = 211 && time < 2
trigger6 = StateNo = 220 && time < 2
trigger7 = StateNo = 230 && time < 2
trigger8 = StateNo = 231 && time < 2
trigger9 = StateNo = 240 && time < 2
trigger10 = StateNo = 241 && time < 2
trigger11 = StateNo = 250 && time < 2
trigger12 = StateNo = 400 && time < 2
trigger13 = StateNo = 410 && time < 2
trigger14 = StateNo = 420 && time < 2
trigger15 = StateNo = 430 && time < 2
trigger16 = StateNo = 440 && time < 2
trigger17 = StateNo = 450 && time < 2
trigger18 = StateNo = 300 && time < 2

;---------------------------------------------------------------------------
;オリコン発動（地上）
[State -1]
type = changestate
value = 870
triggerall = !var(59)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && time < 2
trigger3 = StateNo = 201 && time < 2
trigger4 = StateNo = 210 && time < 2
trigger5 = StateNo = 211 && time < 2
trigger6 = StateNo = 220 && time < 2
trigger7 = StateNo = 230 && time < 2
trigger8 = StateNo = 231 && time < 2
trigger9 = StateNo = 240 && time < 2
trigger10 = StateNo = 241 && time < 2
trigger11 = StateNo = 250 && time < 2
trigger12 = StateNo = 400 && time < 2
trigger13 = StateNo = 410 && time < 2
trigger14 = StateNo = 420 && time < 2
trigger15 = StateNo = 430 && time < 2
trigger16 = StateNo = 440 && time < 2
trigger17 = StateNo = 450 && time < 2
trigger18 = StateNo = 300 && time < 2

;---------------------------------------------------------------------------
;オリコン発動（空中）
[State -1]
type = changestate
value = 875
triggerall = !var(59)
triggerall = !(var(0)&2**5)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && time < 2
trigger3 = StateNo = 610 && time < 2
trigger4 = StateNo = 620 && time < 2
trigger5 = StateNo = 630 && time < 2
trigger6 = StateNo = 640 && time < 2
trigger7 = StateNo = 650 && time < 2

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = changestate
value = 900
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z" || command = "c")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H || var(16)
trigger2 = numtarget
trigger2 = target,stateno = 3700

;---------------------------------------------------------------------------
;氷柱割り
[State -1, Taunt]
type = changestate
value = 300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Taunt]
type = changestate
value = 201
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Taunt]
type = changestate
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1, Taunt]
type = changestate
value = 211
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（パンチ）
[State -1, Taunt]
type = changestate
value = 211
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "x" || command = "y" || command = "z" 
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1, Taunt]
type = changestate
value = 210
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Taunt]
type = changestate
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Taunt]
type = changestate
value = 231
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Taunt]
type = changestate
value = 230
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中キック
[State -1, Taunt]
type = changestate
value = 241
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち中キック
[State -1, Taunt]
type = changestate
value = 240
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Taunt]
type = changestate
value = 250
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（キック）
[State -1, Taunt]
type = changestate
value = 250
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "a" || command = "b" || command = "c"
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = changestate
value = 400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = changestate
value = 410
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = changestate
value = 420
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = changestate
value = 430
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 201 && Time > 4
trigger4 = StateNo = 231 && Time > 4
trigger5 = StateNo = 400 && Time > 4
trigger6 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger7 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger8 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger9 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger10 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = changestate
value = 440
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = changestate
value = 450
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1299]) && var(36) && var(16)
trigger4 = StateNo = 1300 && (var(36) = [2,4]) && var(16)
trigger5 = StateNo = 1301 && var(36) && var(16) && animelemtime(2) > 0
trigger6 = (StateNo = [1400,1599]) && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = changestate
value = 600
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = changestate
value = 610
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = changestate
value = 620
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = changestate
value = 630
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = changestate
value = 640
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0
 
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = changestate
value = 650
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------

;-| AI |------------------------------------------------------

[command]
name = "aix"
command = x
time = 1

[command]
name = "aiy"
command = y
time = 1

[command]
name = "aiz"
command = z
time = 1

[command]
name = "aia"
command = a
time = 1

[command]
name = "aib"
command = b
time = 1

[command]
name = "aic"
command = c
time = 1

[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

[Command]
name = "CPU31"
command = U, D, F, U, D
time = 1

[Command]
name = "CPU32"
command = U, B, F, U, D
time = 1

[Command]
name = "CPU33"
command = U, D, D, U, D
time = 1

[Command]
name = "CPU34"
command = F, B, U, U, D
time = 1

[Command]
name = "CPU35"
command = U, F, U, B, U, D
time = 1

[Command]
name = "CPU36"
command = U, D, B, U, D
time = 1

[Command]
name = "CPU37"
command = F, F, B, U, D
time = 1

[Command]
name = "CPU38"
command = U, D, U, U, D
time = 1

[Command]
name = "CPU39"
command = F, B, B, U, D
time = 1

[Command]
name = "CPU40"
command = F, F, B, B, U, D
time = 1

[Command]
name = "CPU41"
command = U, U, F, U, D
time = 1

[Command]
name = "CPU42"
command = U, B, B, U, D
time = 1

[Command]
name = "CPU43"
command = U, B, F, F, U, D
time = 1

[Command]
name = "CPU44"
command = U, F, B, U, U, D
time = 1

[Command]
name = "CPU45"
command = U, B, F, U, U, D
time = 1

[Command]
name = "CPU46"
command = U, B, B, B, U, D
time = 1

[Command]
name = "CPU47"
command = U, D, B, F, U, D
time = 1

[Command]
name = "CPU48"
command = U, D, B, D, U, D
time = 1

[Command]
name = "CPU49"
command = U, D, F, U, U, D
time = 1

[Command]
name = "CPU50"
command = U, D, U, B, U, D
time = 1

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "龍虎乱舞1"
command = ~D, DF, F, DF, D, DB, B, x
time = 25

[Command]
name = "龍虎乱舞1"
command = ~D, DF, F, DF, D, DB, B, ~x
time = 25

[Command]
name = "龍虎乱舞2"
command = ~D, DF, F, DF, D, DB, B, y
time = 25

[Command]
name = "龍虎乱舞2"
command = ~D, DF, F, DF, D, DB, B, ~y
time = 25

[Command]
name = "龍虎乱舞3"
command = ~D, DF, F, DF, D, DB, B, z
time = 25

[Command]
name = "龍虎乱舞3"
command = ~D, DF, F, DF, D, DB, B, ~z
time = 25

[Command]
name = "覇王翔吼拳1"
command = ~F, B, DB, D, DF, F, x
time = 21

[Command]
name = "覇王翔吼拳1"
command = ~F, B, DB, D, DF, F, ~x
time = 21

[Command]
name = "覇王翔吼拳2"
command = ~F, B, DB, D, DF, F, y
time = 21

[Command]
name = "覇王翔吼拳2"
command = ~F, B, DB, D, DF, F, ~y
time = 21

[Command]
name = "覇王翔吼拳3"
command = ~F, B, DB, D, DF, F, z
time = 21

[Command]
name = "覇王翔吼拳3"
command = ~F, B, DB, D, DF, F, ~z
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, x
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, ~x
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, y
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, ~y
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, z
time = 21

[Command]
name = "天地覇煌拳"
command = ~D, DF, F, D, DF, ~z
time = 21

;-| 必殺技 |------------------------------------------------------
[Command]
name = "虎煌拳1"
command = ~D, DF, F, x
time = 12

[Command]
name = "虎煌拳1"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "虎煌拳2"
command = ~D, DF, F, y
time = 12

[Command]
name = "虎煌拳2"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "虎煌拳3"
command = ~D, DF, F, z
time = 12

[Command]
name = "虎煌拳3"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "虎砲1"
command = ~F, D, DF, x
time = 12

[Command]
name = "虎砲1"
command = ~F, D, DF, ~x
time = 12

[Command]
name = "虎砲2"
command = ~F, D, DF, y
time = 12

[Command]
name = "虎砲2"
command = ~F, D, DF, ~y
time = 12

[Command]
name = "虎砲3"
command = ~F, D, DF, z
time = 12

[Command]
name = "虎砲3"
command = ~F, D, DF, ~z
time = 12

[Command]
name = "極限流連舞拳1"
command = ~F, DF, D, DB, B, x
time = 18

[Command]
name = "極限流連舞拳1"
command = ~F, DF, D, DB, B, ~x
time = 18

[Command]
name = "極限流連舞拳2"
command = ~F, DF, D, DB, B, y
time = 18

[Command]
name = "極限流連舞拳2"
command = ~F, DF, D, DB, B, ~y
time = 18

[Command]
name = "極限流連舞拳3"
command = ~F, DF, D, DB, B, z
time = 18

[Command]
name = "極限流連舞拳3"
command = ~F, DF, D, DB, B, ~z
time = 18

[Command]
name = "猛虎雷神刹1"
command = ~B, D, DB, x
time = 12

[Command]
name = "猛虎雷神刹1"
command = ~B, D, DB, ~x
time = 12

[Command]
name = "猛虎雷神刹2"
command = ~B, D, DB, y
time = 12

[Command]
name = "猛虎雷神刹2"
command = ~B, D, DB, ~y
time = 12

[Command]
name = "猛虎雷神刹3"
command = ~B, D, DB, z
time = 12

[Command]
name = "猛虎雷神刹3"
command = ~B, D, DB, ~z
time = 12

[Command]
name = "暫烈拳1"
command = ~F, B, F, x
time = 15

[Command]
name = "暫烈拳1"
command = ~F, B, F, ~x
time = 15

[Command]
name = "暫烈拳2"
command = ~F, B, F, y
time = 15

[Command]
name = "暫烈拳2"
command = ~F, B, F, ~y
time = 15

[Command]
name = "暫烈拳3"
command = ~F, B, F, z
time = 15

[Command]
name = "暫烈拳3"
command = ~F, B, F, ~z
time = 15

[Command]
name = "飛燕疾風脚1"
command = ~45DB, F, a
time = 12

[Command]
name = "飛燕疾風脚1"
command = ~45DB, F, ~a
time = 12

[Command]
name = "飛燕疾風脚2"
command = ~45DB, F, b
time = 12

[Command]
name = "飛燕疾風脚2"
command = ~45DB, F, ~b
time = 12

[Command]
name = "飛燕疾風脚3"
command = ~45DB, F, c
time = 12

[Command]
name = "飛燕疾風脚3"
command = ~45DB, F, ~c
time = 12

[Command]
name = "飛燕疾風脚4"
command = ~DB, F, a
time = 12

[Command]
name = "飛燕疾風脚4"
command = ~DB, F, ~a
time = 12

[Command]
name = "飛燕疾風脚5"
command = ~DB, F, b
time = 12

[Command]
name = "飛燕疾風脚5"
command = ~DB, F, ~b
time = 12

[Command]
name = "飛燕疾風脚6"
command = ~DB, F, c
time = 12

[Command]
name = "飛燕疾風脚6"
command = ~DB, F, ~c
time = 12

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 10

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 10

[Command]
name = "gc"
command = y+b
time = 10

[Command]
name = "oc"
command = z+c
time = 10

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "chargec"
command = /c
time = 1

[Command]
name = "chargez"
command = /z
time = 1

[Command];（前ブロッキングコマンド）
name = "block"
command = F
time = 1

[Command];（下ブロッキングコマンド）
name = "block2"
command = D
time = 1

[Command];（グルーヴセレクト用）
name = "up"
command = U
time = 3

[Command];（グルーヴセレクト用）
name = "down"
command = D
time = 3

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "downback"
command = DB
time = 1