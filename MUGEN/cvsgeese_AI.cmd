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
triggerall = enemynear,facing != facing
triggerall = !(var(59)&2**1)
triggerall = helper(11000),fvar(25)>5
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-5)
trigger1 = random <= (800-0.5*life+0.3*enemynear,life) || var(59)&2**0
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 100+0.25*life

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
triggerall = enemynear,facing != facing
triggerall = !(var(59)&2**1)
triggerall = helper(11000),fvar(25)>3
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-3)
trigger1 = random <= (800-0.4*life+0.35*enemynear,life) || var(59)&2**0
trigger2 = enemynear,time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 100+0.3*life

[State AI, ScHK Stuffing(ground)]
type = changestate
value = 251
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = P2BodyDist X = [-30,30]
triggerall = p2bodydist x + enemynear, vel x*4 = [0,30]
triggerall = enemynear, statetype != A
triggerall = !(var(59)&2**0)
triggerall = helper(11000),fvar(25)>4
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random <= (800-0.3*life+0.5*enemynear,life) || var(59)&2**1
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 150+0.35*life

[State AI, ScHK Stuffing(air)]
type = changestate
value = 251
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = P2BodyDist X = [-30,30]
triggerall = p2bodydist x + enemynear, vel x*4 = [10,40]
triggerall = p2bodydist y + enemynear, vel y*4 + enemynear,const(movement.yaccel)*8 = [-10,-40]
triggerall = enemynear, statetype = A
triggerall = !(var(59)&2**0)
triggerall = helper(11000),fvar(25)>4
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random <= (800-0.3*life+0.5*enemynear,life) || var(59)&2**1
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 150+0.35*life

[State AI, SLP Stuffing(ground)]
type = changestate
value = ifelse(p2bodydist x<=20,201,200)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype = S
triggerall = !(var(59)&2**0)
triggerall = helper(11000),fvar(25)>4
triggerall = p2bodydist x + 4*enemynear, vel x = [0,70]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random <= (800-0.3*life+0.5*enemynear,life) || var(59)&2**1
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 150+0.35*life

[State AI, SLP Stuffing(air)]
type = changestate
value = ifelse(p2bodydist x<=20,201,200)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,aa,ap,at
triggerall = enemynear, statetype = A
triggerall = !(var(59)&2**0)
triggerall = helper(11000),fvar(25)>4
triggerall = p2bodydist x + 4*enemynear, vel x = [0,70]
triggerall = p2bodydist y + 4*enemynear, vel y + 8*enemynear,const(movement.yaccel) = [-50,-10]
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random <= (800-0.3*life+0.5*enemynear,life) || var(59)&2**1
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 150+0.35*life

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
triggerall = p2bodydist x + 4*enemynear, vel x = [0,80]
triggerall = !(var(59)&2**0)
triggerall = helper(11000),fvar(25)>4
trigger1 = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-4)
trigger1 = random <= (800-0.3*life+0.5*enemynear,life) || var(59)&2**1
trigger2 = enemynear, time = 1
trigger2 = enemynear, stateno < 2000
;trigger2 = random <= 150+0.35*life

;-------------------------------------------------------------------------
;Dodging
;-------------------------------------------------------------------------

[State AI, Defensive Jumping]
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

[State AI, Offensive Jumping]
type = changestate
value = 41
triggerall = var(59)
triggerall = roundstate = 2
triggerall = (ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101) && statetype != A
triggerall = !var(16)
trigger1 = helper(11000),var(51)
trigger1 = (((helper(11000), fvar(16)*facing)-35*helper(11000),fvar(18)) <0)
trigger1 = var(0):=var(0)-(var(0)&2**4)+2**4 || 1
trigger1 = var(59):=var(59)-(var(59)&2**10)+2**10 || 1

[State AI, rolling]
type = changestate
value = 800
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = enemynear,animtime<-24;helper(11000),fvar(25)>=(24)
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
triggerall = enemynear, statetype != A
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = (((helper(11000), fvar(16)*facing)-29*helper(11000),fvar(18)) <0)

[State AI, Dodge]
type = changestate
value = 830
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !var(16)
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time<=2 && stateno = [200,450]
triggerall = statetype != A
triggerall = helper(11000), var(40)!=3
triggerall = enemynear,animtime<-15;helper(11000),fvar(25)>=15 && enemynear,stateno>=200; || p2bodydist x >= 100
triggerall = enemynear,facing != facing
triggerall = 1;random <= 600
triggerall = enemynear, statetype != A
trigger1 = helper(11000), var(51)
trigger1 = helper(11000), fvar(16)*facing = [-40,40]
trigger1 = (helper(11000),fvar(16)*facing)-26*helper(11000),fvar(18) != [-40,40]
trigger1 = !enemynear, hitdefattr=sca,aa,at
;trigger1 = enemynear,vel x>=0
trigger1 = !enemynear,numproj
trigger2 = p2bodydist x < 70
trigger2 = enemynear, movetype = A
trigger2 = enemynear, vel x >= 0
trigger2 = enemynear, stateno != 200 && enemynear,stateno!=230 && enemynear,stateno != 400 && enemynear,stateno != 430
trigger2 = !enemynear,numproj
;trigger2 = enemynear, hitdefattr = sca, aa

;-------------------------------------------------------------------------
;Counter
;-------------------------------------------------------------------------

[State AI, GCCD]
type = null;changestate
value = 2800
triggerall = var(59)
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = stateno = [150,153]
triggerall = Power >= (1000+1000*var(15)) && (!var(20) || var(20) = 4 || var(20) = 6) ||Power >= 1500 && var(20) = 1 || var(14) && var(20) = 3
triggerall = (p2bodydist x = [0,100])
triggerall = helper(11000),fvar(25)>=12
triggerall = enemynear,movetype = A
trigger1 = random <= 50
trigger2 = helper(11000),var(40)=4

[State AI, Rashoumon Counter]
type = changestate
value = 3200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, statetype != A
triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = helper(11000),fvar(25)>=4
triggerall = p2bodydist x <= 50
triggerall = !(var(59)&2**1)
triggerall = helper(11000),var(47) <= 455 || var(15)<200
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
triggerall = helper(11000),var(48)=0 || (stateno = [1200,1299]) || stateno = 1300
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]

[State AI, Deadly Rave Counter]
type = changestate
value = 3300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, statetype != A
triggerall = enemynear, hitdefattr = sca, aa, at || enemynear, numproj || helper(11000),var(51)
triggerall = helper(11000),fvar(25)>=4
triggerall = p2bodydist x + enemynear, vel x*4  = [0,100]
triggerall = !(var(59)&2**0)
triggerall = helper(11000),var(47) <= 455 || var(15)<200
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
triggerall = helper(11000),var(48)=0 || (stateno = [1200,1299]) || stateno = 1300
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]

[State AI, LV1 Shine Knuckle Counter]
type = changestate
value = 3400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype != A
;triggerall = enemynear, hitdefattr = sca, aa, ap, at || enemynear, numproj || helper(11000),var(51)
triggerall = p2bodydist x < 70
triggerall = enemynear,animtime<-7;helper(11000),fvar(25)>=7
triggerall = !(var(59)&2**0)
;triggerall = helper(11000),var(48)=0 || stateno = 1300
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 3 && (100*life/const(data.life))<=30) && !var(14)
triggerall = enemynear,time <= (((var(59)/2**4)-(var(59)/(2**8)*(2**4)))-7)
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = var(5):=0 || 1
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = var(5):=0 || 1

[State AI, LV1 Raising Storm Counter]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = !NumProj
triggerall = (p2bodydist x + 7 * enemynear, vel x = [-10,55]) && p2bodydist y > -55
triggerall = helper(11000),fvar(25)>=7
triggerall = !(var(59)&2**2)
;triggerall = helper(11000),var(48)=0
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 3 && (100*life/const(data.life))<=30) && !var(14)
triggerall = enemynear,time <= (var(59)/2**4)-(var(59)/(2**8)*(2**4))-7
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = var(5):=0 || 1
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = var(5):=0 || 1

[State AI, LV2/LV3 Raising Storm Counter]
type = changestate
value = 3000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = enemynear, statetype = A
triggerall = !NumProj
triggerall = enemynear, hitdefattr = sca, aa, ap, at || enemynear, numproj || helper(11000),var(51)
triggerall = (p2bodydist x = [-55, 55]) && p2bodydist y < 55
triggerall = stateno!=1350||animelem=3&&(var(20)=2||var(20)=6)
triggerall = helper(11000),fvar(25)>=6
triggerall = !(var(59)&2**2)
;triggerall = helper(11000),var(48)=0
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger1 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger1 = var(5):=2
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger2 = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) && Power >= 1000) || (var(0)&2**3) 
trigger2 = var(5):=2
trigger3 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger3 = (var(20) = 1 || var(20) = 6) && power >= 2000
trigger3 = var(5):=1
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger4 = (var(20) = 1 || var(20) = 6) && power >= 2000 
trigger4 = var(5):=1

[State AI, Atemi Nage]
type = changestate
value = 1300
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,movetype = A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
triggerall = !enemynear, hitdefattr = sca, ap, at && !helper(11000), var(51)
triggerall = prevstateno != [4000,4021]
triggerall = enemynear,facing != facing
triggerall = !(helper(11000), var(39))
trigger1 = enemynear, statetype = A
trigger1 = p2bodydist x <= 70
trigger1 = (enemynear, vel y < 0 && enemynear, vel x < 0)||(enemynear, vel y > 0 && enemynear, vel x >= 0&&(random<p2stateno/5||random>life||!ctrl))
trigger2 = enemynear, hitdefattr = sca, sa, ha||(p2stateno>=1000&&enemynear,time<10)
trigger2 = p2bodydist x <= 70&&(random<p2stateno/5||random>life||!ctrl)

[State AI, Atemi Nage]
type = changestate
value = ifelse((p2statetype=S&&helper(11000),var(40)!=1)||helper(11000),var(40)=2,1400,1500)
triggerall = var(59)&&roundstate = 2
triggerall = p2statetype!=C||enemynear, backedgedist <= 10||var(15)
triggerall = statetype != A&&p2statetype!=A
triggerall = enemynear,movetype = A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || (time <= 2 && (StateNo = [210,450]))||((StateNo = 210||StateNo = 211||StateNo = 221||StateNo =251||(StateNo = [420,450]))&&(var(36) = 1||var(36) = 2))
triggerall = !enemynear, hitdefattr = sca, ap, at
triggerall = prevstateno != [4000,4021]
triggerall = enemynear,facing != facing
triggerall = enemynear,stateno != helper(11000),fvar(26)
triggerall = enemynear,stateno != helper(11000),fvar(27)
triggerall = enemynear,stateno != helper(11000),fvar(28)
triggerall = enemynear,stateno != helper(11000),fvar(29)
trigger1 = enemynear,hitdefattr = sc,na && (random <= (1000-life/2)||helper(11000),var(48)||!ctrl)
trigger1 = random <= (1000-life/1.5) || power>= 1000 && var(20) = 6
trigger1 = p2bodydist x <= 100
trigger1 = enemynear, time >= 3*(1000-life)
trigger2 = p2stateno<1000
trigger2 = random <= (1000-life/2)||!ctrl||random <= (1000-life/1.5) || (power>= 1000 && var(20) = 6)
trigger2 = p2bodydist x <= 100
trigger2 = enemynear, time =[3,10]

[State AI, rolling]
type = changestate
value = ifelse(random<= 333, 830, 800)
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = !enemynear,hitdefattr = sca,at
triggerall = enemynear, statetype != A
triggerall = var(20) = 0 || var(20) = 1 || var(20) = 4 || var(20) = 6
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || time <= 2 && StateNo = [200,450]
triggerall = enemynear,facing != facing
trigger1 = var(59)%(2**3)
trigger1 = random<=600
trigger2 = helper(11000),var(40)=4
trigger2 = random<=800

;-------------------------------------------------------------------------
;Guarding
;-------------------------------------------------------------------------

[State AI, Forward GCAB]
type = null;changestate
value = 810
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear, movetype = A
triggerall = helper(11000),fvar(25)>=29
triggerall = inguarddist
triggerall = enemynear, hitdefattr = sca, aa, ap || ((var(59)/2**4)-(var(59)/(2**8)*(2**4))) || enemynear, numproj || helper(11000),var(51)
triggerall = stateno = [150,153]
triggerall = var(1) != [1,2]
triggerall = roundstate = 2
triggerall = var(20) = 4 || var(20) = 6
triggerall = Power >= 1000
triggerall = enemynear,facing != facing
triggerall = enemynear,name!="hulk"||(enemynear,stateno!=[1301,1302])&&(enemynear,stateno!=3500)
trigger1 = !enemynear, numproj
trigger1 = !helper(11000),var(51)
trigger1 = p2bodydist x <= 90
trigger2 = helper(11000),var(51)
trigger2 = ((helper(11000), fvar(16)*facing)-29*helper(11000),fvar(18)) <=118

[State AI, Guarding]
type = changestate
triggerall = var(59)
triggerall = ctrl || (stateno = [100,101])
trigger1 = var(59)&(2**3)
value = 120

[State AI, Guarding]
type = null;changestate
triggerall = var(59)
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = inguarddist && (enemynear,facing != facing||enemynear,statetype=A&&(p2bodydist x=[0,60])) || p2bodydist x < 0 && enemynear,facing=facing
trigger1 = helper(11000),var(53) = 2
trigger2 = enemynear,hitdefattr=sca,aa||enemynear,numproj||helper(11000),var(51)
trigger2 = inguarddist && (enemynear,facing != facing||enemynear,statetype=A&&(p2bodydist x=[0,60])) || p2bodydist x < 0 && enemynear,facing=facing
trigger3 = enemynear,name="Goro Daimon"&&enemynear,authorname="Ahuron"
trigger3 = enemynear,stateno=1000
trigger3 = enemynear, var(5) = 0 && (enemynear, animelem = 6||enemynear,animelem=7)
trigger4 = enemynear,name="Shin Valdoll"||enemynear,name="Shin Scion"
trigger4 = enemynear,stateno=1200
trigger5 = enemynear,name="Hulk"&&enemynear,authorname="MGMURROW"
trigger5 = enemynear,stateno=3500&&(enemynear, AnimElem = 7||enemynear,animelem=8)
value = 120

;-------------------------------------------------------------------------
;Wakeup
;-------------------------------------------------------------------------

;烈風拳
[State -1, reppuken]
type = ChangeState
value = 1000
triggerall = var(59)&&roundstate = 2
triggerall = !NumProj&&statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)||(((stateno=[200,220))||(stateno=(410,450])||stateno=221)&&(var(36) = 1||var(36) = 2))
trigger1 = P2bodydist X > 80
trigger1 = (P2stateno=5120&&p2bodydist X>150&&enemynear,animtime>-20)||(p2movetype=H && p2statetype=A&&p2bodydist X>100&&p2bodydist Y>-40)||(p2bodydist X>120&&(random<life/2||power>=2000)&&enemynear,animtime<-25&&enemynear,vel X<0)
trigger1 = !(var(16) && numtarget)
trigger1 = Random <life
trigger1 = ((var(5) := 0||1)&&stateno<200)||((var(5) := 1||1)&&stateno>=200)
trigger2 = prevstateno = [4000,4021]
trigger2 = ctrl && !enemynear,ctrl&&!inguarddist && ((enemynear,animtime<-15&&p2bodydist X>70&&random<power)||p2bodydist X>150)
trigger2 = ((var(5) := 0||1)&&random%6<3)||((var(5) := 1||1)&&random%6>=3)
trigger3 = var(36)=2 && p2bodydist X>50 && (random<power/10||random<life/5)
trigger3 = EnemyNear,GetHitVar(ctrltime)>=12
trigger3 = var(5):=random%2

;ダブル烈風拳
[State -1, reppuken]
type = ChangeState
value = 1050
triggerall = var(59)&&roundstate = 2
triggerall = !NumProj&&statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)||((stateno=[200,450])&&(var(36) = 1||var(36) = 2))
trigger1 = StateNo = 200 || stateno=230||stateno=400||stateno=430
trigger1 = (var(36) = 1||var(36) = 2)&&p2bodydist X<25
trigger1 = (random<life&&random>power)||var(36)=2
trigger2 = ctrl && p2bodydist X<25 && p2movetype=I&&p2stateno<200
trigger2 = power>=2000&&random<life&&p2statetype!=A
trigger3 = inguarddist && p2bodydist X<100 && enemy,numproj&&p2movetype=A && enemynear,animtime<-12&&random<life/3&&p2statetype!=A&&p2stateno<2000

;-------------------------------------------------------------------------
;Link
;-------------------------------------------------------------------------

[State AI, JHP Link]
type = changestate
value = 620
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear,movetype = H
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 40
Trigger1 = EnemyNear,GetHitVar(hittime)>= 1

[State AI, CHK Link]
type = changestate
value = 450
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear,movetype = H
;triggerall = P2BodyDist X <= 90
trigger1 = enemynear, stateno = 1455
trigger1 = ctrl||stateno=101||(stateno=100&&animelemtime(2) > 1) || stateno = 52 && anim = 57 && time >= 2
;Trigger1 = EnemyNear,GetHitVar(hittime) >= 1
trigger1 = power >= 3000 - 2000*ifelse(var(15)>0,1,0)
trigger1 = (random<= ifelse(life>=500, 0, 1000-life)) && helper(11000),var(47)>=600

[State AI, SHP Link]
type = changestate
value = 221
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear,movetype = H
triggerall = P2BodyDist X <= 30
trigger1 = ctrl||stateno=101||(stateno=100&&animelemtime(2) > 1) || stateno = 52 && anim = 57 && time >= 2
Trigger1 = EnemyNear,GetHitVar(hittime) >= -1

[State AI, CLP Link]
type = changestate
value = 400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear,movetype = H
triggerall = enemynear, stateno != 1455
;triggerall = var(36) = 1 || var(36) = 2 && (random <= 1000 - 125 * helper(11000), var(58) || (power>=3000-2000*ifelse(var(15)>0,1,0))&&var(0)=6)
trigger1 = ctrl||stateno=101||(stateno=100&&animelemtime(2) > 1) || stateno = 52 && anim = 57 && time >= 2
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 40
Trigger1 = EnemyNear,GetHitVar(hittime)>= 1

[State AI, CLP Link]
type = changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear,movetype = H
triggerall = enemynear, stateno != 1455
;triggerall = var(36) = 1 || var(36) = 2 && (random <= 1000 - 125 * helper(11000), var(58) || (power>=3000-2000*ifelse(var(15)>0,1,0))&&var(0)=6)
trigger1 = ctrl||stateno=101||(stateno=100&&animelemtime(2) > 1)
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 50
Trigger1 = EnemyNear,GetHitVar(hittime)>= 1

[State AI, CMK Link]
type = ChangeState
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = enemynear, stateno != 1455
triggerall = enemynear,movetype = H && enemynear,stateno!=[120,155]
triggerall = var(36) = 1 || 0&&var(36) = 2 && (random <= 200 || (power>=2000-1000*ifelse(var(15)>0,1,0))&&var(0)=6) || prevstateno = 1451
trigger1 = ctrl||stateno=101||(stateno=100&&animelemtime(2) > 1)
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 90
Trigger1 = EnemyNear,GetHitVar(hittime)>= -1

[State AI, CLK link]
type = null;changestate
value = 430
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
;triggerall = power>=1000 || (100*life/const(data.life))<=30
trigger1 = ctrl
trigger1 = prevstateno = 3109

;-------------------------------------------------------------------------
;Cancel
;-------------------------------------------------------------------------

[State AI, Ura Jaeiken for Kara into Thunder Break]
type = changestate
value = 1200
triggerall = var(59)
triggerall = stateno = 450 && var(36) = 1
triggerall = power >= 3000 - 2000*ifelse(var(15)>0,1,0)
triggerall = roundstate = 2
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = var(5) := 2

[State AI, Thunder Break Cancel]
type = changestate
value = 3100
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(20) = 2 || (var(20) = 6 && !var(16)) && (Power >= 3000 || var(15) > 0 && Power >= 1000)
triggerall = (random<= ifelse(life>=500, 0, 1000-life)) && helper(11000),var(47)>=455
trigger1 = var(36) = 1 && !var(16)
trigger1 = StateNo = 1201 && animelem = 11
trigger2 = stateno = 1200 && enemynear, statetype = A
trigger2 = p2bodydist x<=10

[State AI, DDR Cancel]
type = changestate
value = 3300
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = var(36) = 1 && !var(16)
trigger1 = StateNo = 1201 && animelem = 6
trigger1 = var(20) = 6
trigger1 = Power >= 3000-2000*ifelse(var(15)>0,1,0)
trigger2 = StateNo = 1551 && animelemtime(5) > 2 &&var(20) = 6
trigger2 = (enemynear, backedgedist > 10&&var(36) = 1)||(p2movetype=A&&random<p2stateno/5)||var(15)
trigger2 = (var(15) > 0 && Power >= 1000)||(var(20) = 6&&power>=3000)

[State AI, Raging Storm Cancel]
type = changestate
value = 3000
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 && !var(16)
triggerall = StateNo = 1201 && animelem = 11
triggerall = enemynear, backedgedist <= 20
triggerall = var(20) = 6
trigger1 = Power >= 1000 && (power < 2000 || helper(11000), var(47) < 243)
trigger1 = var(5):= 0 || 1
trigger2 = power >= 2000
trigger2 = var(5) := 1

[State AI, Raging Storm Cancel]
type = changestate
value = 3400
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 && !var(16)
triggerall = StateNo = 1201 && animelem = 6
triggerall = var(20) = 6
triggerall = enemynear, backedgedist >= 20
trigger1 = Power >= 1000 && (random<power/10 || helper(11000), var(47) < 243)
trigger1 = var(5):= 0 || 1
trigger2 = power >= 2000&&random<power/7
trigger2 = var(5) := 1

[State AI, Raging Storm Cancel]
type = changestate
value = ifelse(enemynear, backedgedist <= 20, 3000, 3400)
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = StateNo = 3310 && animelem = 5
triggerall = var(20) = 6
trigger1 = Power >= 1000
trigger1 = var(5):= 0 || 1

[State AI, Ura Jaeiken Cancel from normal]
type = changestate
value = 1200
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1 && !var(16)
triggerall = enemynear, statetype != A
triggerall = StateNo = 221
trigger1 = power >= 1000||random%7<2
trigger1 = var(5) := 1||1

[State AI, Ura Jaeiken Cancel]
type = changestate
value = 1200
triggerall = var(59)
triggerall = var(12)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = var(36) = 1 && !var(16)
trigger1 = enemynear, statetype != A
trigger1 = StateNo = 221 || StateNo = 440 || stateno = 251 || stateno = 410 || stateno = 211 || stateno = 241 || stateno = 200 || stateno = 400 || stateno = 430
trigger1 = power >= 1000&&p2statetype!=A
trigger1 = EnemyNear,GetHitVar(hittime) >= -2+9+(p2bodydist x)/12
trigger1 = (p2bodydist X<45&&random%3<2&&(var(5) := 1||1))||(p2bodydist X>=45&&(var(5) := 2||1))
trigger2 = stateno = 3000
trigger2 = var(5) = 1 && animelem = 21
trigger2 = var(5) := 2

[State AI, CLP Cancel]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !var(16) && var(36)
triggerall = (stateno = 200 || stateno = 400 || stateno = 430) && time > 4
trigger1 = (p2bodydist x +abs(helper(11000),fvar(23))*(1-helper(11000),fvar(22)**(3))/(1-helper(11000),fvar(22))) <= 40
Trigger1 = EnemyNear,GetHitVar(hittime)>= 2

;-------------------------------------------------------------------------
;Recovery Trap
;-------------------------------------------------------------------------

[State AI, P throw trap]
type = changestate
value = 3200
triggerall = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,30]
triggerall = !var(16)
triggerall = helper(11000),fvar(25)>=5
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = power >= power >= 3000 - 2000*ifelse(var(15)>0,1,0)
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger1 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger2 = enemynear, hitdefattr != SCA
trigger2 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger2 = random <= 600
trigger2 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger3 = p2movetype = A
trigger3 = enemynear,facing=facing
trigger3 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger4 = p2movetype = A
trigger4 = enemynear,facing=facing
trigger4 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]
trigger5 = p2movetype = I && !enemynear, ctrl
trigger5 = StateNo = 195 && (var(20) = 2 || var(20) = 6) || (StateNo = [1000,1499]) && (var(20) = 2 || var(20) = 6) || StateNo = 1550 && (var(20) = 2 || var(20) = 6) || (StateNo = [2800,2999]) && (var(20) = 2 || var(20) = 6) || ctrl
trigger6 = p2movetype = I && !enemynear, ctrl
trigger6 = (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2) || StateNo = 200 || StateNo = 201 || stateno = 400 || stateno = 430 || time <= 2 && StateNo = [210,450]

[State AI, CMK trap]
type = changestate
value = 440
triggerall = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
triggerall = !(var(59)&2**0)
TriggerAll = P2BodyDist X = [0,50]
triggerall = !var(16)
triggerall = helper(11000),fvar(25)>=4
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 500
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, P throw trap]
type = changestate
value = 900
triggerall = var(59)
triggerall = enemynear, statetype != A
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = !(var(59)&2**1)
TriggerAll = P2BodyDist X = [0,22]
triggerall = !var(16)
triggerall = helper(11000),fvar(25)>=3
TriggerAll = EnemyNear,moveType != H
triggerall = enemynear, statetype != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
trigger1 = enemynear, hitdefattr != SCA
trigger1 = p2movetype = A && (!inguarddist||prevstateno=800||prevstateno=810)
trigger1 = random <= 600
trigger2 = p2movetype = A
trigger2 = enemynear,facing=facing
trigger3 = p2movetype = I && !enemynear, ctrl

[State AI, Dodge cancel]
Type = changestate
value = 251
triggerall = var(59)
triggerall = roundstate = 2
TriggerAll = StateType != A
TriggerAll = P2BodyDist X = [0,50]
triggerall = !var(16)
triggerall = helper(11000), fvar(16) * facing < -30
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = stateno = 830 && time = [14,24]
triggerall = !inguarddist || enemynear,time <= (helper(11000),var(29)-3)
triggerall = helper(11000),fvar(25)>=4
triggerall = !(var(59)&2**0)
triggerall = enemynear,movetype = A || enemynear,movetype = I
trigger1 = random<=800

;-------------------------------------------------------------------------
;Move
;-------------------------------------------------------------------------


[state AI, back step]
type = changestate
triggerall = var(59)
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = enemynear, statetype = L && enemynear,vel x <= 0 || var(40) = 1 || var(40) = 0 || enemynear, stateno = 1205 && enemynear, movetype = H
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
triggerall = p2bodydist x > 30 && p2statetype=L || p2bodydist x > 100 && !helper(11000),var(53) || var(40) = 1 || var(40) = 0 || enemynear, stateno = 1205 && enemynear, movetype = H
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

[state AI, run]
type = changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !InguardDist && !helper(11000),var(53)&& p2movetype != A || helper(11000),var(51)
triggerall = ctrl
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
triggerall = !var(16)
triggerall = prevstateno != 3109
triggerall = var(40) != 1
triggerall = p2bodydist x >= 30
trigger1 = random%100 = [0,helper(11000),var(58)]
trigger1 = p2bodydist x != [-1,90]
trigger1 = enemynear,statetype = L
trigger1 = statetype = S
trigger2 = prevstateno = 200 || prevstateno = 201 || prevstateno = 400 || prevstateno = 430
trigger2 = (p2bodydist x != [-1,90])||enemynear,statetype != L
trigger3 = p2statetype != L
trigger3 = statetype = S
trigger3 = (p2bodydist x != [-1,90])||enemynear,statetype != L
value = ifelse(var(20)>=3,100,20)

[state AI, charge]
type = changestate
triggerall = var(59)
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear, movetype = I || var(40) = 0 || var(40) = 1
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = !inguarddist
;triggerall = prevstateno != 850
;triggerall = (p2bodydist x > 30 || enemynear, stateno!= 5120) && (p2statetype=L || var(40) = 1 || var(40) = 0 || p2bodydist x > 100 && !enemynear,ctrl)
triggerall = (p2bodydist x > 30 && !enemynear,ctrl || enemynear, stateno!= 5120) && (p2statetype=L || var(40) = 1 || var(40) = 0 || p2bodydist x > 100 || enemynear, stateno = 1205 && enemynear, movetype = H)
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

;---------------------------------------------------------------------------
[State AI, recover]
type = ChangeState
value = 5200
triggerall = var(59)
triggerall = !(var(0)&2**10)
triggerall = var(20) = 1 || var(20) = 4 || var(20) = 5 || var(20) = 6
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = random <= 1000
persistent = 0

;-------------------------------------------------------------------------
;Start
;-------------------------------------------------------------------------

[State AI, jump for shippuken]
type=changestate
value = 41
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && (ctrl|| (stateno=[100,101])) && (p2movetype!=H || (p2stateno=[120,155]) || p2statetype=A||p2statetype=L)
;遠距離牽制
trigger1= p2statetype!=A && p2bodydist x>=130
trigger1= p2movetype!=H
trigger1= p2statetype!=L
trigger1 = random <= 100+life/5
trigger1 = var(0):=var(0)-(var(0)&2**4)+2**4 || 1 ;long
trigger1 = var(59):=var(59)-(var(59)&2**10)+2**10 || 1 ;forward
;近距離後退
trigger2= p2statetype!=A && p2bodydist x= [40, 120]
trigger2= p2movetype=I||p2movetype=A && enemynear, hitdefattr = SCA,AT
trigger2= backedgedist>=120
trigger2= p2statetype!=L
trigger2 = random <= 20
trigger2 = var(0):=var(0)-(var(0)&2**5)+2**5 || 1 ;short
trigger2 = var(59):=var(59)-(var(59)&2**10) || 1; back
;相手起き上がり退避
trigger3= p2statetype=L && enemynear,animtime<=-10 && p2bodydist x<120
trigger3= backedgedist>=90 || (p2bodydist x=[95,125])
trigger3 = random%5<3&&random<life/3
trigger3 = var(0):=var(0)-(var(0)&2**4)+2**4 || 1 ;long
trigger3 = var(59):=var(59)-(var(59)&2**10) || 1 ;back
;低空牽制1
trigger4= p2statetype!=A
trigger4= enemynear,ctrl || (p2movetype=I && enemynear,animtime>=-3) || (p2stateno=[120,155]) || (enemynear,gethitvar(hittime)=[1,2]) || (p2stateno=[5200,5210])
trigger4= p2bodydist x=[90,100]
trigger4= enemynear,vel x=[-3,3]
trigger4 = random <= 0;100+life/5
trigger4 = var(0):=var(0)-(var(0)&2**5)+2**5 || 1 ;short
trigger4 = var(59):=var(59)-(var(59)&2**10)+2**10 || 1 ;forward
;低空牽制2
trigger5= p2statetype!=A
trigger5= enemynear,ctrl || (p2movetype=I && enemynear,animtime>=-6) || (enemynear,gethitvar(hittime)=[1,5])
trigger5= p2stateno!=[120,155]
trigger5= p2bodydist x=[140,170]
trigger5= enemynear,vel x=[-3,3]
trigger5= backedgedist>=60
trigger5= p2statetype!=L
trigger5 = random <= 0;100+life/5
trigger5 = var(59):=var(59)-(var(59)&2**10)+2**10 || 1 ;mid & forward


[State -1, Shippuken]
type=changestate
value=1110
triggerall= var(59)>=1 && numenemy&&p2bodydist X>0
triggerall= roundstate=2 && statetype=A
trigger1= ctrl
trigger1= p2bodydist x>=80 && p2dist y>=80
trigger1 = (p2bodydist x - (1-enemynear,ctrl)*(enemynear, vel x) / p2dist y) = [0.8,1.2]
trigger1= vel x<=0 && (enemynear,hitdefattr=SCA,AA,AT || p2movetype!=A) && p2statetype = A
trigger1= random<500*(1+(enemynear,ctrl)+(p2movetype=A)+(vel y <=0))
trigger1= var(5):= 2
trigger2= ctrl && ((p2statetype=A && p2movetype=H) && p2statetype!=L) && p2stateno!=5120
trigger2= p2bodydist x>=30 && p2dist y>=30 && vel x<=0 && vel y>=-3
trigger2= random<500
trigger2 = var(5) := 1
trigger3= ctrl && !vel x
trigger3= p2bodydist x<=120 || (pos y<-80 && vel y>=-3)
trigger3= (pos y>=-30 && random<500) || (pos y<-80 && vel y>=-3)
trigger3 = var(5) := 2
trigger4= ctrl && vel x<0
trigger4= p2bodydist x>=100+enemynear,vel x*10 && vel y>=3 && pos y>=-70
trigger4= random<500
trigger4 = var(5) := 2
Trigger5 = p2movetype=I&&p2stateno<1000
trigger5 = p2statetype!=A&&p2statetype!=L&&ctrl
Trigger5 = ((pos y = [-50,-20])&&p2bodydist X<100 && random<life/5)||((P2BodyDist X =[100,200])&& random<life/2)
Trigger5 = vel X>0 && vel y > 0
trigger5 = var(5):=random%2

;ダブル疾風拳
[State -1, reppuken]
type = ChangeState
value = 1150
triggerall = var(59)&&roundstate=2&&statetype = A
triggerall = var(12)&&!NumProj
triggerall = ctrl||((stateno=[600,651])&&(((var(36) = 1||var(36) = 2) && var(16)) || time <= 2))
trigger1 = p2movetype=A&&enemynear,time<=1&&p2stateno>=1000&&random<life/3
trigger2 = p2movetype=A&&(enemy,numhelper||enemy,NumProj)&&vel Y<0&&random<life/3&&enemynear,ctrl
trigger3 = p2statetype=L && vel X <0 && p2bodydist X<100&& vel Y<=0&&random<life/3

[state AI, SMK start]
type = changestate
value = 240
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[45,60]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= life/2-450

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
triggerall = prevstateno != 430
triggerall = P2BodyDist X =[45,80]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= life/2-300

[state AI, CHK start]
type = changestate
value = 440
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = prevstateno != 430
triggerall = P2BodyDist X =[45,80]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= life/2-400+100*(1-enemynear,ctrl)

[State -1, JLP Start]
type = ChangeState
value = 630
triggerall = var(59)
TriggerAll = StateType = A
TriggerAll = !EnemyNear,ctrl && (pos y = [-45,-20])&&(enemynear,time>10||random<life/5)
triggerall = ctrl
TriggerAll = P2BodyDist X = [0,60]
Trigger1 = p2statetype!=A&&p2statetype!=L
trigger1 = vel X>0 && vel y >= 0

[State -1, JHP Start]
type = ChangeState
value = 620
triggerall = var(59)
TriggerAll = StateType = A
TriggerAll = !EnemyNear,ctrl && (pos y = [-60,-20])&&(enemynear,time>10||random<life/5)
triggerall = ctrl
TriggerAll = P2BodyDist X = [0,40]
Trigger1 = enemynear, statetype = S
trigger1 = vel X>0 && vel y >= 0



[State AI, JHK Start]
Type = ChangeState
value = 650
triggerall = var(59)
TriggerAll = StateType = A
TriggerAll = !EnemyNear,ctrl && prevstateno = 4020 || (pos y = [-60,-20])&&random <= 50
triggerall = ctrl
TriggerAll = P2BodyDist X = [0,90]
triggerall = !(var(59)&2**0)
Trigger1 = enemynear, statetype = S
trigger1 = pos y >= - 20 && vel y >= 0 
trigger1 = random <= 1000
trigger2 = enemynear, statetype = C
trigger2 = pos y >= -40 && vel y >= 0

[State AI, JMK Start]
Type = null;ChangeState
value = 640
triggerall = var(59)
TriggerAll = StateType = A
TriggerAll = EnemyNear,moveType != H
triggerall = ctrl
TriggerAll = P2BodyDist X = [0,90]
TriggerAll = P2BodyDist Y = [-45,45]
triggerall = !(var(59)&2**0)
Trigger1 = enemynear, statetype = S
trigger1 = pos y >= - 40 && vel y >= 0 
trigger2 = enemynear, statetype = A

[state AI, SLK whiff]
type = changestate
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[-10, 25]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 200
trigger2 = stateno = 400 && time > 4
trigger2 = random <= 400

[state AI, CLP whiff]
type = changestate
value = 400
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,stateno != 5120 && enemynear,stateno != 5201
triggerall = enemynear,movetype = I
triggerall = enemynear, stateno !=[5000,5999]
triggerall = P2BodyDist X =[-10, 45]
triggerall = !(var(59)&2**0)
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger1 = random <= 200
trigger2 = stateno = 400 && time > 4
trigger2 = random <= 400

;-------------------------------------------------------------------------
;Pressure
;-------------------------------------------------------------------------
;ﾒﾆｶｯ--------------------------------------
[State -1, AI Run/Dash]
type = changestate
value = 100
triggerall= var(59) && roundstate=2&&statetype!=A
triggerall= ctrl && (stateno!=[100,105])&&!inguarddist
triggerall= enemynear(var(59)),animtime<-20||facing=enemynear,facing||numhelper
trigger1 = numhelper(7000)
trigger1 = p2movetype!=A && p2bodydist X >100
trigger1 = random<power/3||power>=3000
trigger2 = enemynear,movetype=H && p2bodydist Y <-80&&P2BodyDist x<120&&random<power/5&&power>=1000&&p2bodydist X>30
trigger3 = facing=enemynear,facing && (p2bodydist X =[70,200])&&!enemynear,ctrl

[State -1, walk]
type = changestate
value = 20
triggerAll = var(59) && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerall = ctrl || stateno = 20
trigger1 = enemynear, MoveType != A && P2BodyDist x >= 30  && p2statetype !=L
trigger2 = P2BodyDist x < 20 && p2statetype =L

[State AI, Taunt]
type = ChangeState
value = 195
triggerall = var(59)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger1 = win

;-------------------------------------------------------------------------
;Aerial Pressure
;-------------------------------------------------------------------------

;===========================================================================
;AI用

;AI
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
value=11000

;===========================================================================
;---------------------------------------------------------------------------
;デッドリーレイブ
[State -1, yamibarai]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "デッドリーレイブ"
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) > 0 && Power >= 1000) || (var(0)&2**3)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1201]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1501 && animelemtime(8) > 2 && (var(20) = 2 || var(20) = 6)
trigger28 = StateNo = 1551 && animelemtime(3) > 2 && (var(20) = 2 || var(20) = 6)
trigger29 = (StateNo = [1600,2999]) && (var(20) = 2 || var(20) = 6)
trigger30 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger31 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger32 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger34 = StateNo = 3400 && (var(20) = 2 || var(20) = 6) && time > 51
trigger35 = StateNo = 3401 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;羅生門
[State -1, yamibarai]
type = ChangeState
value = 3200
triggerall = var(12)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "羅生門"
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) > 0 && Power >= 1000) || (var(0)&2**3)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1201]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1501 && animelemtime(8) > 2 && (var(20) = 2 || var(20) = 6)
trigger28 = StateNo = 1551 && animelemtime(3) > 2 && (var(20) = 2 || var(20) = 6)
trigger29 = (StateNo = [1600,2999]) && (var(20) = 2 || var(20) = 6)
trigger30 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger31 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger32 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger34 = StateNo = 3300 && (var(20) = 2 || var(20) = 6) && time > 50
trigger35 = (StateNo = [3301,3310]) && (var(20) = 2 || var(20) = 6)
trigger36 = StateNo = 3400 && (var(20) = 2 || var(20) = 6) && time > 51
trigger37 = StateNo = 3401 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;サンダーブレイク
[State -1, yamibarai]
type = ChangeState
value = 3100
triggerall = var(12)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "サンダーストーム"
triggerall = ((!var(20) || var(20) = 2 || (var(20) = 6 && !var(16))) && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30 && var(14)) || (var(15) > 0 && Power >= 1000) || (var(0)&2**3)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1201]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1501 && animelemtime(8) > 2 && (var(20) = 2 || var(20) = 6)
trigger28 = StateNo = 1551 && animelemtime(3) > 2 && (var(20) = 2 || var(20) = 6)
trigger29 = (StateNo = [1600,2999]) && (var(20) = 2 || var(20) = 6)
trigger30 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger31 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger32 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3300 && (var(20) = 2 || var(20) = 6) && time > 50
trigger34 = (StateNo = [3301,3310]) && (var(20) = 2 || var(20) = 6)
trigger35 = StateNo = 3400 && (var(20) = 2 || var(20) = 6) && time > 51
trigger36 = StateNo = 3401 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;レイジングストーム
[State -1, yamibarai]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "レイジングストーム1" || Command = "レイジングストーム2" || Command = "レイジングストーム3"
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1201]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1501 && animelemtime(8) > 2 && (var(20) = 2 || var(20) = 6)
trigger28 = StateNo = 1551 && animelemtime(3) > 2 && (var(20) = 2 || var(20) = 6)
trigger29 = (StateNo = [1600,2999]) && (var(20) = 2 || var(20) = 6)
trigger30 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger31 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger32 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3300 && (var(20) = 2 || var(20) = 6) && time > 50
trigger34 = (StateNo = [3301,3310]) && (var(20) = 2 || var(20) = 6)
trigger35 = StateNo = 3400 && (var(20) = 2 || var(20) = 6) && time > 51
trigger36 = StateNo = 3401 && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;---------------------------------------------------------------------------
;阿修羅疾風拳
[State -1, yamibarai]
type = ChangeState
value = 3400
triggerall = var(12)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "阿修羅疾風拳1" || Command = "阿修羅疾風拳2" || Command = "阿修羅疾風拳3"
triggerall = ((!var(20) || var(20) = 4 || var(20) = 6) && Power >= 1000) || (var(20) = 1 && Power >= 1500) || (var(20) = 2 && Power >= 3000) || (var(20) = 3 && (100*life/const(data.life))<=30) || (var(0)&2**3) || var(14) || var(16)
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger15 = StateNo = 420 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = StateNo = 195 && (var(20) = 2 || var(20) = 6)
trigger26 = (StateNo = [1000,1201]) && (var(20) = 2 || var(20) = 6)
trigger27 = StateNo = 1501 && animelemtime(8) > 2 && (var(20) = 2 || var(20) = 6)
trigger28 = StateNo = 1551 && animelemtime(3) > 2 && (var(20) = 2 || var(20) = 6)
trigger29 = (StateNo = [1600,2999]) && (var(20) = 2 || var(20) = 6)
trigger30 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger31 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger32 = StateNo = 3000 && (var(20) = 2 || var(20) = 6) && time > 50
trigger33 = StateNo = 3100 && (var(20) = 2 || var(20) = 6) && time > 50
trigger34 = StateNo = 3300 && (var(20) = 2 || var(20) = 6) && time > 50
trigger35 = (StateNo = [3301,3310]) && (var(20) = 2 || var(20) = 6)
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;疾風拳（表）
[State -1, reppuken]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = !var(12)
triggerall = !(var(0)&2**5)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "疾風拳1" || Command = "疾風拳2" || Command = "疾風拳3"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger3 = StateNo = 610 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger4 = StateNo = 620 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger5 = StateNo = 630 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger6 = StateNo = 640 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger7 = StateNo = 650 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger8 = StateNo = 651 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger9 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger10 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;疾風拳（裏）
[State -1, reppuken]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = var(12)
triggerall = !(var(0)&2**5)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "疾風拳1" || Command = "疾風拳2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger3 = StateNo = 610 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger4 = StateNo = 620 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger5 = StateNo = 630 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger6 = StateNo = 640 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger7 = StateNo = 650 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger8 = StateNo = 651 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger9 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger10 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ダブル疾風拳
[State -1, reppuken]
type = ChangeState
value = 1150
triggerall = !var(59)
triggerall = var(12)
triggerall = !(var(0)&2**5)
triggerall = !NumProj
triggerall = Command = "疾風拳3"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger3 = StateNo = 610 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger4 = StateNo = 620 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger5 = StateNo = 630 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger6 = StateNo = 640 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger7 = StateNo = 650 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger8 = StateNo = 651 && (((var(36) = 1||var(36) = 2) && var(16)) || time <= 2)
trigger9 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger10 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;下段当て身投げ
[State -1, reppuken]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (Command = "当て身投げ3" && !var(12)) || (Command = "当て身投げ6" && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;中段当て身投げ
[State -1, reppuken]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (Command = "当て身投げ2" && !var(12)) || (Command = "当て身投げ5" && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;上段当て身投げ
[State -1, reppuken]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (Command = "当て身投げ1" && !var(12)) || (Command = "当て身投げ4" && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;邪影拳
[State -1, reppuken]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((Command = "邪影拳1" || Command = "邪影拳2" || Command = "邪影拳3") && !var(12)) || ((Command = "邪影拳4" || Command = "邪影拳5" || Command = "邪影拳6") && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;烈風拳
[State -1, reppuken]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = ((Command = "烈風拳1" || Command = "烈風拳2") && !var(12)) || ((Command = "疾風拳1" || Command = "疾風拳2") && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ダブル烈風拳
[State -1, reppuken]
type = ChangeState
value = 1050
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = (Command = "烈風拳3" && !var(12)) || (Command = "疾風拳3" && var(12))
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1]
type = ChangeState
value = ifelse(var(12),2900,2800)
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
type = ChangeState
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
type = ChangeState
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
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101 || stateno = 40 || (stateno = 52 && anim = 57 && time >= 2)
trigger2 = StateNo = 200
trigger3 = StateNo = 210 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger4 = StateNo = 211 && prevstateno = 830 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger5 = StateNo = 211 && prevstateno != 830 && (var(16) || time <= 2)
trigger6 = StateNo = 220 && (var(16) || time <= 2)
trigger7 = StateNo = 221 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger8 = StateNo = 230 && (var(16) || time <= 2)
trigger9 = StateNo = 231
trigger10 = StateNo = 240 && (var(16) || time <= 2)
trigger11 = StateNo = 250 && (var(16) || time <= 2)
trigger12 = StateNo = 251 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(5) < 0))
trigger13 = StateNo = 400
trigger14 = StateNo = 410 && (var(16) || time <= 2)
trigger15 = StateNo = 420 && (var(16) || time <= 2 || ((var(36) = 1||var(36) = 2) && animelemtime(4) < 0))
trigger16 = StateNo = 430 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger17 = StateNo = 440 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger18 = StateNo = 450 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger19 = StateNo = 300 && (var(16) || time <= 2 || (var(36) = 1||var(36) = 2))
trigger20 = StateNo = 195 && var(36) && var(16)
trigger21 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger22 = StateNo = 1501 && var(36) && var(16)
trigger23 = StateNo = 1551 && var(36) && var(16)
trigger24 = (StateNo = [1600,2999]) && var(36) && var(16)
trigger25 = (StateNo = [3000,3099]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
trigger26 = (StateNo = [3400,3499]) && Var(5) = 1 && (var(36) = 1||var(36) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ラン
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = var(20) = 3 || var(20) = 4 || var(20) = 5 || var(20) = 6
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ステップ
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = !var(59)
triggerall = !var(20) || var(20) = 1 || var(20) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;受身
[State -1]
type = ChangeState
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
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = ((!var(20) || var(20) = 1 || var(20) = 4) && command = "recovery") || (var(20) = 6 && command = "holdfwd" && command = "recovery")
triggerall = statetype != A
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
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger21 = StateNo = 1501 && var(36) && var(16)
trigger22 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;避け
[State -1]
type = ChangeState
value = 830
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(20) = 3 || var(20) = 6
triggerall = command = "recovery"
triggerall = statetype != A
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
trigger19 = (StateNo = [195,799]) && var(36) && var(16)
trigger20 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger21 = StateNo = 1501 && var(36) && var(16)
trigger22 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;パワー溜め
[State -1]
type = ChangeState
value = 850
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (power < 1000 && var(20) = 3) || (power < 3000 && var(20) = 6)
triggerall = !var(15) && !var(16) && !var(14)
triggerall = (command = "chargec" && command = "chargez")
triggerall = statetype != A
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

;---------------------------------------------------------------------------
;パワーMAX発動
[State -1]
type = ChangeState
value = 860
triggerall = !var(59)
triggerall = (var(20) = 4 && Command = "oc") || (var(20) = 6 && Command = "gc")
triggerall = Power >= 1000
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
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

;---------------------------------------------------------------------------
;オリコン発動（地上）
[State -1]
type = ChangeState
value = 870
triggerall = !var(59)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype != A
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

;---------------------------------------------------------------------------
;オリコン発動（空中）
[State -1]
type = ChangeState
value = 875
triggerall = !var(59)
triggerall = !(var(0)&2**5)
triggerall = var(20) = 1 || var(20) = 6
triggerall = Power >= 3000 && Command = "oc"
triggerall = !var(15) && !var(16)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && time <= 2
trigger3 = StateNo = 610 && time <= 2
trigger4 = StateNo = 620 && time <= 2
trigger5 = StateNo = 630 && time <= 2
trigger6 = StateNo = 640 && time <= 2
trigger7 = StateNo = 650 && time <= 2
trigger8 = StateNo = 651 && time <= 2

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z" || command = "c")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = P2MoveType != H || var(16)

;---------------------------------------------------------------------------
;不動活殺裏拳
[State -1, Taunt]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 231 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger6 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger7 = StateNo = 1501 && var(36) && var(16)
trigger8 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（パンチ）
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "x" || command = "y" || command = "z" 
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 221
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-30,30]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Taunt]
type = ChangeState
value = 231
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 231 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger6 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger7 = StateNo = 1501 && var(36) && var(16)
trigger8 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 231 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger6 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger7 = StateNo = 1501 && var(36) && var(16)
trigger8 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ち中キック
[State -1, Taunt]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;カウンター攻撃（キック）
[State -1, Taunt]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = command = "a" || command = "b" || command = "c"
trigger1 = StateNo = 830 && Time =[14,24]

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Taunt]
type = ChangeState
value = 251
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Taunt]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 231 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger6 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger7 = StateNo = 1501 && var(36) && var(16)
trigger8 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 231 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger6 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger7 = StateNo = 1501 && var(36) && var(16)
trigger8 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && animelemtime(2) > 1) || stateno = 101
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
trigger3 = (StateNo = [1000,1201]) && var(36) && var(16)
trigger4 = StateNo = 1501 && var(36) && var(16)
trigger5 = StateNo = 1551 && var(36) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
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
type = ChangeState
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
type = ChangeState
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
type = ChangeState
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
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0
  
;---------------------------------------------------------------------------
;斜めジャンプ強キック
[State -1]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = Vel X
trigger1 = ctrl
trigger2 = (StateNo = [195,799]) && (var(36) = 1||var(36) = 2) && var(16)
ignorehitpause = 0

;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 651
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = !Vel X
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
name = "レイジングストーム1"
command = ~D, B, D, B, x
time = 30

[Command]
name = "レイジングストーム1"
command = ~D, B, D, B, ~x
time = 30

[Command]
name = "レイジングストーム2"
command = ~D, B, D, B, y
time = 30

[Command]
name = "レイジングストーム2"
command = ~D, B, D, B, ~y
time = 30

[Command]
name = "レイジングストーム3"
command = ~D, B, D, B, z
time = 30

[Command]
name = "レイジングストーム3"
command = ~D, B, D, B, ~z
time = 30

[Command]
name = "サンダーストーム"
command = ~F, DF, D, x
time = 10

[Command]
name = "サンダーストーム"
command = ~F, DF, D, ~x
time = 10

[Command]
name = "サンダーストーム"
command = ~F, DF, D, y
time = 10

[Command]
name = "サンダーストーム"
command = ~F, DF, D, ~y
time = 10

[Command]
name = "サンダーストーム"
command = ~F, DF, D, z
time = 10

[Command]
name = "サンダーストーム"
command = ~F, DF, D, ~z
time = 10

[Command]
name = "デッドリーレイブ"
command = ~F, DF, D, DB, B, F, a
time = 30

[Command]
name = "デッドリーレイブ"
command = ~F, DF, D, DB, B, F, ~a
time = 30

[Command]
name = "阿修羅疾風拳1"
command = ~D, DF, F, D, DF, x
time = 21

[Command]
name = "阿修羅疾風拳1"
command = ~D, DF, F, D, DF, ~x
time = 21

[Command]
name = "阿修羅疾風拳2"
command = ~D, DF, F, D, DF, y
time = 21

[Command]
name = "阿修羅疾風拳2"
command = ~D, DF, F, D, DF, ~y
time = 21

[Command]
name = "阿修羅疾風拳3"
command = ~D, DF, F, D, DF, z
time = 21

[Command]
name = "阿修羅疾風拳3"
command = ~D, DF, F, D, DF, ~z
time = 21

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, x
time = 30

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, ~x
time = 30

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, y
time = 30

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, ~y
time = 30

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, z
time = 30

[Command]
name = "羅生門"
command = ~F, D, B, F, D, B, ~z
time = 30

;-| 必殺技 |------------------------------------------------------
[Command]
name = "烈風拳1"
command = ~D, DF, F, x
time = 12

[Command]
name = "烈風拳1"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "烈風拳2"
command = ~D, DF, F, y
time = 12

[Command]
name = "烈風拳2"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "烈風拳3"
command = ~D, DF, F, z
time = 12

[Command]
name = "烈風拳3"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "疾風拳1"
command = ~D, DB, B, x
time = 12

[Command]
name = "疾風拳1"
command = ~D, DB, B, ~x
time = 12

[Command]
name = "疾風拳2"
command = ~D, DB, B, y
time = 12

[Command]
name = "疾風拳2"
command = ~D, DB, B, ~y
time = 12

[Command]
name = "疾風拳3"
command = ~D, DB, B, z
time = 12

[Command]
name = "疾風拳3"
command = ~D, DB, B, ~z
time = 12

[Command]
name = "当て身投げ1"
command = ~F, DF, D, DB, B, x
time = 18

[Command]
name = "当て身投げ1"
command = ~F, DF, D, DB, B, ~x
time = 18

[Command]
name = "当て身投げ2"
command = ~F, DF, D, DB, B, y
time = 18

[Command]
name = "当て身投げ2"
command = ~F, DF, D, DB, B, ~y
time = 18

[Command]
name = "当て身投げ3"
command = ~F, DF, D, DB, B, z
time = 18

[Command]
name = "当て身投げ3"
command = ~F, DF, D, DB, B, ~z
time = 18

[Command]
name = "当て身投げ4"
command = ~B, DB, D, DF, F, a
time = 18

[Command]
name = "当て身投げ4"
command = ~B, DB, D, DF, F, ~a
time = 18

[Command]
name = "当て身投げ5"
command = ~B, DB, D, DF, F, b
time = 18

[Command]
name = "当て身投げ5"
command = ~B, DB, D, DF, F, ~b
time = 18

[Command]
name = "当て身投げ6"
command = ~B, DB, D, DF, F, c
time = 18

[Command]
name = "当て身投げ6"
command = ~B, DB, D, DF, F, ~c
time = 18

[Command]
name = "邪影拳1"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "邪影拳1"
command = ~F, DF, D, DB, B, ~a
time = 18

[Command]
name = "邪影拳2"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "邪影拳2"
command = ~F, DF, D, DB, B, ~b
time = 18

[Command]
name = "邪影拳3"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "邪影拳3"
command = ~F, DF, D, DB, B, ~c
time = 18

[Command]
name = "邪影拳4"
command = ~B, F, a
time = 10

[Command]
name = "邪影拳4"
command = ~B, F, ~a
time = 10

[Command]
name = "邪影拳5"
command = ~B, F, b
time = 10

[Command]
name = "邪影拳5"
command = ~B, F, ~b
time = 10

[Command]
name = "邪影拳6"
command = ~B, F, c
time = 10

[Command]
name = "邪影拳6"
command = ~B, F, ~c
time = 10

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
name = "back"
command = B
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "downback"
command = DB
time = 1