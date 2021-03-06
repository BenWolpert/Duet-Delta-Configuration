; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Sun Sep 06 2020 03:22:32 GMT-0400 (Eastern Daylight Time)

; General preferences
G90                                                ; send absolute coordinates...
M83                                                ; ...but relative extruder moves
M550 P"Duet Delta"                                 ; set printer name
M665 R121.969 L269.88 B105 H341.85               ; Set delta radius, diagonal rod length, printable radius (was 117.8) and homed height H339.279
;M665 R122.359 L269.88 B105 H341.65 
M666 X0.27 Y0.13 Z-0.4 
;M666 X-0.11 Y0.13 Z-0.02                           ; put your endstop adjustments here, or let auto calibration find them

; Network
M552 S1                                            ; enable network
M586 P0 S1                                         ; enable HTTP
M586 P1 S0                                         ; disable FTP
M586 P2 S0                                         ; disable Telnet

; Drives
M569 P0 S0                                         ; physical drive 0 goes forwards
M569 P1 S0                                         ; physical drive 1 goes forwards
M569 P2 S0                                         ; physical drive 2 goes forwards
M569 P3 S1                                         ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                                   ; set drive mapping
M350 X16 Y16 Z16 E16 I1                            ; configure microstepping with interpolation
M92 X200.00 Y200.00 Z200.00 E809.75                ; set steps per mm. Used to be 830
M566 X1200.00 Y1200.00 Z1200.00 E1200.00           ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z18000.00 E1200.00        ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z1000.00 E1000.00           ; set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E1000 I40                   ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                            ; Set idle timeout

; Axis Limits
M208 Z0 S1                                         ; set minimum Z

; Endstops
M574 X2 Y2 Z2 S1                                   ; set active high endstops

; Z-Probe
M558 P4 H10 F120 T6000                              ; set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y-3 Z12.371                                 ; set Z probe trigger value, offset and trigger height
M557 R100 S20                                      ; define mesh grid

; Heaters
M305 P0 T100000 B4138 R4700                        ; set thermistor + ADC parameters for heater 0
M143 H0 S120                                       ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4138 R4700                        ; set thermistor + ADC parameters for heater 1
M143 H1 S280                                       ; set temperature limit for heater 1 to 280C

; Fans
M106 P0 S0 I0 F500 H-1                             ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T45                          ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                                   ; define tool 0
G10 P0 X0 Y0 Z0                                    ; set tool 0 axis offsets
G10 P0 R0 S0                                       ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M911 S10 R11 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000" ; set voltage thresholds and actions to run on power loss

