; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Sun Sep 06 2020 03:22:32 GMT-0400 (Eastern Daylight Time)
M561 ; clear any bed transform
; Probe the bed at 6 peripheral and 6 halfway points, and perform 6-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.

G30 P0 X0 Y105 H0 Z-99999
G30 P1 X90.93 Y52.50 H0 Z-99999
G30 P2 X90.93 Y-52.50 H0 Z-99999
G30 P3 X0 Y-105 H0 Z-99999
G30 P4 X-90.93 Y-52.50 H0 Z-99999
G30 P5 X-90.93 Y52.50 H0 Z-99999
G30 P6 X0 Y52.50 H0 Z-99999
G30 P7 X45.47 Y-26.25 H0 Z-99999
G30 P8 X-45.47 Y-26.25 H0 Z-99999
G30 P9 X0 Y0 H0 Z-99999 S6

;OLD
;G30 P0 X0 Y117.7 H0 Z-99999
;G30 P1 X101.93 Y58.85 H0 Z-99999
;G30 P2 X101.93 Y-58.85 H0 Z-99999
;G30 P3 X0 Y-117.7 H0 Z-99999
;G30 P4 X-101.93 Y-58.85 H0 Z-99999
;G30 P5 X-101.93 Y58.85 H0 Z-99999
;G30 P6 X0 Y58.8 H0 Z-99999
;G30 P7 X50.92 Y29.4 H0 Z-99999
;G30 P8 X50.92 Y-29.4 H0 Z-99999
;G30 P9 X0 Y-58.8 H0 Z-99999
;G30 P10 X-50.92 Y-29.4 H0 Z-99999
;G30 P11 X-50.92 Y29.4 H0 Z-99999
;G30 P12 X0 Y0 H0 Z-99999 S6
; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)


