﻿;#SingleInstance force
;#NoTrayIcon
;#NoEnv 





Gui, Add, Tab, x2 y9 w570 h500 , 기본설정|물약설정|사냥설정|버프설정|기타설정
Gui, Tab, 기본설정
Gui, Add, GroupBox, x22 y49 w530 h120 , 단축키 정보
Gui, Add, Text, x52 y69 w90 h20 +Left, Text
Gui, Add, Text, x52 y99 w90 h20 , Text
Gui, Add, Text, x52 y129 w90 h20 , Text
Gui, Add, GroupBox, x22 y199 w530 h60 , 설정저장/불러오기
Gui, Add, GroupBox, x22 y289 w530 h200 , 부가기능
Gui, Add, DropDownList, x132 y219 w100 h20 ,
Gui, Add, Text, x52 y219 w70 h20 , 설정선택 :
Gui, Add, Button, x242 y219 w110 h20 , 현재설정저장
Gui, Add, Button, x362 y219 w110 h20 , 설정 삭제

;////////////////////////////////////////////////////////////////////////////////

Gui, Tab, 물약설정
Gui, Add, GroupBox, x22 y49 w530 h210 , GroupBox

;////////////////////////////////////////////////////////////////////////////////
Gui, Tab, 사냥설정
;////////////////////////////////////////////////////////////////////////////////

Gui, Tab, 버프설정
Gui, Add, GroupBox, x22 y49 w530 h320 , 버프스킬/버프물약 설정
Gui, Add, CheckBox, x42 y69 w90 h20 , 설정1
Gui, Add, CheckBox, x42 y99 w90 h20 , 설정2
Gui, Add, CheckBox, x42 y129 w90 h20 , 설정3
Gui, Add, CheckBox, x42 y159 w90 h20 , 설정4
Gui, Add, CheckBox, x42 y189 w90 h20 , 설정5
Gui, Add, CheckBox, x42 y219 w90 h20 , 설정6
Gui, Add, CheckBox, x42 y249 w90 h20 , 설정7
Gui, Add, CheckBox, x42 y279 w90 h20 , 설정8
Gui, Add, CheckBox, x42 y309 w90 h20 , 설정9
Gui, Add, CheckBox, x42 y339 w90 h20 , 설정10

Gui, Add, Edit, x132 y69 w100 h20 , 
Gui, Add, Edit, x132 y99 w100 h20 ,
Gui, Add, Edit, x132 y129 w100 h20 , 
Gui, Add, Edit, x132 y159 w100 h20 , 
Gui, Add, Edit, x132 y189 w100 h20 , 
Gui, Add, Edit, x132 y219 w100 h20 , 
Gui, Add, Edit, x132 y249 w100 h20 , 
Gui, Add, Edit, x132 y279 w100 h20 , 
Gui, Add, Edit, x132 y309 w100 h20 , 
Gui, Add, Edit, x132 y339 w100 h20 , 
Gui, Add, Text, x232 y69 w60 h20 , 초마다
Gui, Add, Text, x232 y99 w60 h20 , 초마다
Gui, Add, Text, x232 y129 w60 h20 , 초마다
Gui, Add, Text, x232 y159 w60 h20 , 초마다
Gui, Add, Text, x232 y189 w60 h20 , 초마다
Gui, Add, Text, x232 y219 w60 h20 , 초마다
Gui, Add, Text, x232 y249 w60 h20 , 초마다
Gui, Add, Text, x232 y279 w60 h20 , 초마다
Gui, Add, Text, x232 y309 w60 h20 , 초마다
Gui, Add, Text, x232 y339 w60 h20 , 초마다
Gui, Add, DropDownList, x292 y69 w140 h20 , %Keylist%
Gui, Add, DropDownList, x292 y99 w140 h20 , DropDownList 
Gui, Add, DropDownList, x292 y129 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y159 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y189 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y219 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y249 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y279 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y309 w140 h20 , DropDownList
Gui, Add, DropDownList, x292 y339 w140 h20 , DropDownList
Gui, Add, Text, x442 y69 w60 h20 , 사용
Gui, Add, Text, x442 y99 w60 h20 , 사용
Gui, Add, Text, x442 y159 w60 h20 , 사용
Gui, Add, Text, x442 y189 w60 h20 , 사용
Gui, Add, Text, x442 y219 w60 h20 , 사용
Gui, Add, Text, x442 y249 w60 h20 , 사용
Gui, Add, Text, x442 y279 w60 h20 , 사용
Gui, Add, Text, x442 y309 w60 h20 , 사용
Gui, Add, Text, x442 y339 w60 h20 , 사용
Gui, Add, Text, x442 y129 w60 h20 , 사용

;////////////////////////////////////////////////////////////////////////////////
Gui, Show, x499 y215 h515 w575, Project
Return

GuiClose:
ExitApp