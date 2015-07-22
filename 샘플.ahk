﻿#NoTrayIcon
#SingleInstance Force



Gui, Add, Tab2, x2 y0 w670 h590 , 사용법|공격|버프|물약
Gui, Tab, 사용법
Gui, Add, GroupBox, x12 y30 w270 h220 , 핫키설명
Gui, Add, Text, x22 y60 w250 h30 , 왼쪽 좌표 설정 핫키: F1
Gui, Add, Text, x22 y90 w250 h30 , 오른쪽 좌표 설정 핫키: F2
Gui, Add, Text, x22 y120 w250 h30 , 이동매크로 시작 핫키: F5
Gui, Add, Button, x22 y270 w250 h30 , 매크로 사용법
Gui, Add, Text, x22 y150 w250 h30 , 공격매크로 시작 핫키: F6
Gui, Add, Text, x22 y180 w250 h30 , 일시정지/재생: F11   렉풀기(재시작): F12
Gui, Tab, 공격
Gui, Add, GroupBox, x12 y30 w270 h150 , 공격설정
Gui, Add, Text, x22 y50 w70 h20 , 공격키:
Gui, Add, Text, x22 y80 w70 h20 , 공격속도:
Gui, Add, Text, x22 y110 w70 h20 , 점프키:
Gui, Add, Text, x22 y140 w70 h20 , 텔레포트키:
Gui, Add, DropDownList, x92 y50 w100 h60 v공격키 Choose1, Ctrl|Shift
Gui, Add, DropDownList, x92 y110 w100 h20 v점프키 Choose1, Alt
Gui, Add, DropDownList, x92 y140 w100 h20 v텔포키 Choose1, Space
Gui, Add, Edit, x92 y80 w100 h20 v공격시간, 2
Gui, Add, Text, x192 y85 w80 h20 , 초마다 공격
Gui, Add, GroupBox, x12 y190 w270 h60 , 공격옵션
Gui, Add, Radio, x22 y210 w70 h30 v기본공격, 기본공격
Gui, Add, Radio, x102 y210 w70 h30 v점프공격, 점프공격
Gui, Add, Radio, x182 y210 w90 h30 v텔포공격, 텔포 후 공격
Gui, Add, Button, x22 y270 w250 h30 , 매크로 사용법
Gui, Tab, 버프
Gui, Add, Button, x12 y120 w270 h90 , 준비중입니다
Gui, Tab, 물약
Gui, Add, Button, x12 y120 w270 h90 , 준비중입니다
Gui, Show, w295 h327, 샘플
return

GuiClose:
send {left up}
send {right up}
ExitApp

button매크로사용법:
msgbox, 1. 미니맵에서 자신의 캐릭터를 찾습니다`(고버전일 경우 노란색`)`n`n2. 마우스를 캐릭터에 가져다 놓고 F1, F2를 눌러 왼쪽/오른쪽좌표를 설정합니다.`n`n3. 설정 후 F5를 누르면 캐릭터가 왼쪽/오른족좌표를 왕복합니다.`n`n4. F6을 누르면 캐릭터가 자동공격을 시작합니다.
return

F1::
MouseGetPos, 시작x, 시작y
mousemove, 0, 0
sleep,300
PixelGetColor, 시작색, %시작x%, %시작y%
MsgBox ,왼쪽좌표 지정완료!
return


F2::
MouseGetPos, 끝x, 끝y
mousemove, 0, 0
sleep,300
PixelGetColor, 끝색, %끝x%, %끝y%
MsgBox ,오른쪽좌표 지정완료!
return

F11::
pause
return



F12::
send {left up}
send {right up}
reload
return

F5::
gui, submit, nohide
Winactivate, MapleStory
msgbox, 이동 매크로를 시작합니다.`n설정하신 좌표에 캐릭터를 위치시켜야 정상작동합니다.

Loop
{
pixelgetcolor, 시작색2, %시작x%, %시작y% 
if (시작색 == 시작색2)
{
	send, {left up}
    send, {right down}
}
else 
	sleep, 10

pixelgetcolor, 끝색2, %끝x%, %끝y% 
if (끝색 == 끝색2)
{
	send, {right up}
    send, {left down}
}
else
	sleep, 10

}


F6::
gui, submit, nohide
Winactivate, MapleStory
msgbox, 공격 매크로를 시작합니다.
변환공격시간:=공격시간*1000 
if (점프공격 == 1)
{
settimer, 점프공격, %변환공격시간%
점프공격:
send {alt}
sleep, 100
send {%공격키%}
sleep, 100
return
}

else if(기본공격 == 1)
{
settimer, 기본공격, %변환공격시간%
기본공격:
send {%공격키%}
return
}

else if(텔포공격 == 1)
{
settimer, 텔포공격, %변환공격시간%
텔포공격:
send {Space}
sleep, 100
send {%공격키%}
sleep, 100
return
}

else
	msgbox, 공격옵션을 선택하고 다시시도해 주세요.
return

