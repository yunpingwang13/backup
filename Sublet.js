var	offer_monthly_rate,
              offer_bathroom,
              offer_room_size,
              offer_roommates,
              offer_bedrooms,
              offer_available_month,
              dist_to_tech,
              dist_to_norris;
var model = 0;

if(offer_roommates <= 0.5){
    if(offer_bedrooms <= 1.5){ model = 1 ; }
    if(offer_bedrooms >  1.5){
        if(offer_bathroom <= 0.5){ model = 2 ; }
        if(offer_bathroom >  0.5){
            if(offer_bedrooms <= 2.5){
                if(offer_room_size <= 977.5){ model = 3 ; }
                if(offer_room_size >  977.5){
                    if(dist_to_tech <= 0.75){
                        if(dist_to_tech <= 0.65){ model = 4 ; }
                        if(dist_to_tech >  0.65){ model = 5 ; }
                    }
                    if(dist_to_tech >  0.75){ model = 6 ; }
                }
            }
            if(offer_bedrooms >  2.5){
                if(+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9) <= 0.5){ model = 7 ; }
                if(+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9) >  0.5){ model = 8 ; }
            }
        }
    }
}
if(offer_roommates >  0.5){
    if(offer_room_size <= 845){
        if(offer_room_size <= 626.265){ model = 9 ; }
        if(offer_room_size >  626.265){
            if(+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9) <= 0.5){
                if(offer_bedrooms <= 0.5){ model = 10 ; }
                if(offer_bedrooms >  0.5){ model = 11 ; }
            }
            if(+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9) >  0.5){
                if(dist_to_tech <= 1.05){ model = 12 ; }
                if(dist_to_tech >  1.05){ model = 13 ; }
            }
        }
    }
    if(offer_room_size >  845){
        if(offer_bathroom <= 0.5){
            if(offer_room_size <= 1046.5){ model = 14 ; }
            if(offer_room_size >  1046.5){ model = 15 ; }
        }
        if(offer_bathroom >  0.5){ model = 16 ; }
    }
}

if(model==1){
offer_monthly_rate = 
	243.6245 * offer_bathroom 
	+ 0.4065 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 192.2927 * offer_bedrooms 
	+ 112.1979 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9)) 
	- 143.3811 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 102.666 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 136.4237 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 8.5392 * (+(offer_available_month==9 ))
	+ 356.7238 * dist_to_tech 
	- 471.2726 * dist_to_norris 
	+ 508.6978;
}

if(model==2){
offer_monthly_rate = 
	80.0128 * offer_bathroom 
	+ 0.4727 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 14.7992 * offer_bedrooms 
	+ 297.1974 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 30.9941 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 345.5691 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 259.6294 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 528.4997 * (+(offer_available_month==9 ))
	+ 8.156 * dist_to_tech 
	+ 190.0183 * dist_to_norris 
	+ 316.4154;
}

if(model==3){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 0.4881 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 35.5884 * offer_bedrooms 
	+ 223.1008 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 5.0178 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 130.8448 * (+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 36.9372 * (+(offer_available_month==9 ))
	+ 321.8737 * dist_to_tech 
	- 826.3344 * dist_to_norris 
	+ 1405.8443;
}

if(model==4){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 0.0358 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 35.5884 * offer_bedrooms 
	- 160.3742 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 5.0178 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 36.9372 * (+(offer_available_month==9 ))
	- 604.4153 * dist_to_tech 
	- 795.8746 * dist_to_norris 
	+ 2206.9441;
}

if(model==5){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 0.0358 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 35.5884 * offer_bedrooms 
	- 47.6565 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 5.0178 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 36.9372 * (+(offer_available_month==9 ))
	- 530.203 * dist_to_tech 
	- 898.6592 * dist_to_norris 
	+ 2069.2258;
}

if(model==6){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 1.1757 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 35.5884 * offer_bedrooms 
	+ 85.8854 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 5.0178 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 36.9372 * (+(offer_available_month==9 ))
	+ 52.4123 * dist_to_tech 
	- 320.0815 * dist_to_norris 
	+ 451.5429;
}

if(model==7){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 0.5025 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 48.0788 * offer_bedrooms 
	+ 30.1312 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 132.57 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 73.3182 * (+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 44.0852 * (+(offer_available_month==9 ))
	- 82.9494 * dist_to_tech 
	+ 46.2208 * dist_to_norris 
	+ 935.256;
}

if(model==8){
offer_monthly_rate = 
	49.2126 * offer_bathroom 
	+ 0.0676 * offer_room_size 
	- 2.0307 * offer_roommates 
	+ 48.0788 * offer_bedrooms 
	+ 30.1312 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 71.3608 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 5.6628 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 9.0735 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.1359 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 35.1628 * (+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.3115 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.5104 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 4.546 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 44.0852 * (+(offer_available_month==9 ))
	- 293.4205 * dist_to_tech 
	- 14.5102 * dist_to_norris 
	+ 2065.5968;
}

if(model==9){
offer_monthly_rate = 
	73.7404 * offer_bathroom 
	+ 0.0049 * offer_room_size 
	- 15.0585 * offer_roommates 
	+ 0.5445 * offer_bedrooms 
	+ 62.8347 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 31.8824 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 58.7548 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 4.5197 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 0.9972 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 39.9038 * (+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 49.1467 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 90.2184 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 6.0518 * (+(offer_available_month==9 ))
	+ 1.1483 * dist_to_tech 
	- 125.2194 * dist_to_norris 
	+ 793.8341;
}

if(model==10){
offer_monthly_rate = 
	16.276 * offer_bathroom 
	- 0.1155 * offer_room_size 
	- 12.867 * offer_roommates 
	- 8.4675 * offer_bedrooms 
	+ 5.7789 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.6044 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 29.5582 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 28.7734 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 8.7088 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.1255 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 15.7469 * (+(offer_available_month==9 ))
	- 5.4843 * dist_to_tech 
	- 41.2997 * dist_to_norris 
	+ 951.0426;
}

if(model==11){
offer_monthly_rate = 
	16.276 * offer_bathroom 
	- 0.0551 * offer_room_size 
	- 33.6942 * offer_roommates 
	- 3.5605 * offer_bedrooms 
	+ 5.7789 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.6044 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 29.5582 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 28.7734 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 8.7088 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 2.1255 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 15.7469 * (+(offer_available_month==9 ))
	- 5.4843 * dist_to_tech 
	- 25.9169 * dist_to_norris 
	+ 798.871;
}

if(model==12){
offer_monthly_rate = 
	40.1643 * offer_bathroom 
	- 0.5723 * offer_room_size 
	- 44.1529 * offer_roommates 
	+ 2.8456 * offer_bedrooms 
	+ 7.2699 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.6044 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 40.7601 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1320.7297 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 11.9661 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 127.2544 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 95.6706 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 121.7418 * (+(offer_available_month==9 ))
	- 241.5469 * dist_to_tech 
	- 21.1781 * dist_to_norris 
	+ 2571.2385;
}

if(model==13){
offer_monthly_rate = 
	27.3941 * offer_bathroom 
	+ 0.9684 * offer_room_size 
	- 45.6405 * offer_roommates 
	+ 10.4195 * offer_bedrooms 
	+ 7.2699 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.6044 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 40.7601 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 179.8058 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 11.9661 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 52.4276 * (+(offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 47.1461 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 51.2104 * (+(offer_available_month==8||offer_available_month==9 ))
	+ 61.6527 * (+(offer_available_month==9 ))
	- 126.9548 * dist_to_tech 
	- 21.1781 * dist_to_norris 
	+ 341.5442;
}

if(model==14){
offer_monthly_rate = 
	37.1461 * offer_bathroom 
	- 0.0206 * offer_room_size 
	+ 2.4534 * offer_roommates 
	- 2.8866 * offer_bedrooms 
	- 4.6179 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 22.0542 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 37.1082 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 3.7032 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 7.8237 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.0137 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 208.6043 * (+(offer_available_month==9 ))
	+ 1.1483 * dist_to_tech 
	- 16.2269 * dist_to_norris 
	+ 796.6814;
}

if(model==15){
offer_monthly_rate = 
	37.1461 * offer_bathroom 
	- 0.0231 * offer_room_size 
	+ 2.4534 * offer_roommates 
	- 2.8866 * offer_bedrooms 
	- 4.6179 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 23.4961 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 39.6922 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 3.7032 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 8.8172 * (+(offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.0137 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 33.7214 * (+(offer_available_month==9 ))
	+ 1.1483 * dist_to_tech 
	- 52.9574 * dist_to_norris 
	+ 773.3405;
}

if(model==16){
offer_monthly_rate = 
	61.5381 * offer_bathroom 
	- 0.01 * offer_room_size 
	+ 172.2123 * offer_roommates 
	- 126.7895 * offer_bedrooms 
	- 9.422 * (+(offer_available_month==3||offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 21.829 * (+(offer_available_month==2||offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 31.1623 * (+(offer_available_month==12||offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 3.7032 * (+(offer_available_month==4||offer_available_month==11||offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 0.878 * (+(offer_available_month==7||offer_available_month==1||offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	- 1.0137 * (+(offer_available_month==10||offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 1.9404 * (+(offer_available_month==5||offer_available_month==8||offer_available_month==9 ))
	+ 492.4948 * (+(offer_available_month==9 ))
	+ 1.1483 * dist_to_tech 
	- 6.9056 * dist_to_norris 
	+ 1007.9445;
}