#Persistent
SetTimer, DetectIdle

DetectIdle:
If ( A_TimeIdle > 1500 ) {
	Random, rand, 1, 20
	sleep 300000 ;master wait, set to high for waiting some minutes instead, standard: 5 minutes

	if(rand == 1){
		Random, randWait, 10000, 20000
		Send {Enter}
		SendInput, /dance
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 2){
		loop, 8
		{
			Random, randOrder, 1, 10
			Random, randWait, 1000, 5000
			if(randOrder == 1){
				SendInput, b
			}
			if(randOrder == 2){
				SendInput, j
			}
			if(randOrder == 3){
				SendInput, c
			}
			if(randOrder == 4){
				SendInput, m
			}
			if(randOrder == 5){
				SendInput, l
			}
			sleep randWait
			Send {escape}
			sleep 800
		}
	}
	if(rand == 3){
		Random, randLoop, 10, 30
		loop, randLoop
		{
			Random, randWait, 1000, 1337
			Random, randWaitStep, 400, 999
			SendInput, w
			sleep randWaitStep
			SendInput, a
			sleep randWaitStep
			SendInput, s
			sleep randWaitStep
			SendInput, d
			sleep randWait
		}
	}
	if(rand == 4){
		Random, randLoop, 10, 15
		loop, randLoop
		{
			Random, randWaitStep, 600, 1209
			SendInput, a
			sleep randWaitStep
			SendInput, d
			sleep randWait
		}
	}
	if(rand == 5){
		Send {Enter}
		SendInput, /sit
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 6){
		Random, randLoop, 10, 15
		loop, randLoop
		{
			Random, randWaitStep, 600, 1209
			Send {space}
			SendInput, a
			sleep randWaitStep
			Send {space}
			SendInput, d
			sleep randWait
		}
	}
	if(rand == 15){
		Random, randWait, 10000, 20000
		Send {Enter}
		SendInput, /train
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 17){
		Random, randWait, 10000, 20000
		Send {Enter}
		SendInput, /bark
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 9){
		Random, randWait, 10000, 20000
		Send {Enter}
		SendInput, /sneeze
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 13){
		Random, randWait, 10000, 20000
		Send {Enter}
		SendInput, /sleep
		sleep 1000
		Send {Enter}
		sleep randWait
		SendInput, w
		SendInput, s
	}
	if(rand == 14){ 
		Send {Enter}
		SendInput, Corona är bara på låtsas - precis som att jorden är platt och grisar kan flyga
		sleep 1000
		Send {Esc}
	}
	if(rand == 20){ ; go apeshit
		Random, randDestinationX, 1300, 1700
		Random, randDestinationY, 400, 800
		Random, randStartX, 1200, 1437
		Random, randStartY, 400, 800
		Random, randLoop, 5, 7
		loop, randLoop
		{
			sleep 200
			MouseClickDrag, left, randStartX, randStartY, randDestinationX, randDestinationY
			sleep 200
			MouseClickDrag, left, randDestinationX, randDestinationY, randStartX, randStartY
			sleep 200
		}
		sleep 1000
		MouseMove, 1, 1,, R
		MouseMove, -1, -1,, R
	}
}
Return