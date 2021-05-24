/* blatantly cribbed from IWD2 */

BEGIN ~u#conlan~

IF ~Global("U#MetConlan","GLOBAL",0)~ THEN BEGIN 0 SAY @1000
  IF ~~ THEN REPLY @1001 DO ~SetGlobal("U#MetConlan","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @1002 DO ~SetGlobal("U#MetConlan","GLOBAL",1)~ GOTO 1
END

IF ~True()~ THEN BEGIN 1 SAY @1003
  IF ~Global("U#ExplainConlan", "GLOBAL", 0)~ THEN REPLY @1004 DO ~SetGlobal("U#ExplainConlan", "GLOBAL", 1)~ GOTO 15
  IF ~Global("U#ExplainConlan", "GLOBAL", 1)~ THEN REPLY @1004 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1005 GOTO 17
  IF ~~ THEN REPLY @1006 EXIT
END

IF ~~ THEN BEGIN 15 SAY @1007
  IF ~~ THEN REPLY @1008 GOTO 16
  IF ~~ THEN REPLY @1009 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1010 EXIT
END

IF ~~ THEN BEGIN 16 SAY @1011
  IF ~~ THEN REPLY @1012 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1009 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1010 EXIT
END

IF ~~ THEN BEGIN 17 SAY @1013
  IF ~Global("U#ExplainConlan", "GLOBAL", 0)~ THEN REPLY @1014 DO ~SetGlobal("U#ExplainConlan", "GLOBAL", 1)~ GOTO 15
  IF ~Global("U#ExplainConlan", "GLOBAL", 1)~ THEN REPLY @1015 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~Global("U#ExplainConlan", "GLOBAL", 1)~ THEN REPLY @1009 DO ~StartStore("u#conlan",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @1016 EXIT
END
