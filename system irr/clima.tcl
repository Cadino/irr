#############################################################################
# Generated by PAGE version 5.4
#  in conjunction with Tcl version 8.6
#  Aug 24, 2020 07:01:33 PM CAT  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { \
    logo_gif "./logo.gif" \
    rsz_1rsz_cyber_gif "./rsz_1rsz_cyber.gif" \
    rsz_1th_gif "./rsz_1th.gif" \
    rsz_1umidade_gif "./rsz_1umidade.gif" \
    rsz_agua_gif "./rsz_agua.gif" \
    rsz_definicao_gif "./rsz_definicao.gif" \
    rsz_historico_gif "./rsz_historico.gif" \
    rsz_time_gif "./rsz_time.gif" \
}
vTcl:create_project_images $image_list   ;# In image.tcl


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background #ffffff -highlightbackground #ffffff \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 858x708+335+0
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1351 738
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "SysIrr"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    labelframe $top.lab45 \
        -font TkDefaultFont -foreground black -text Clima -background #ffffff \
        -height 159 -highlightcolor black -width 750 
    vTcl:DefineAlias "$top.lab45" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab45
    label $site_3_0.lab48 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -image rsz_1th_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab48" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab45 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Time 
    vTcl:DefineAlias "$site_3_0.lab45" "lbl_time" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab46 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Temperature 
    vTcl:DefineAlias "$site_3_0.lab46" "lbd_temp1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text weather 
    vTcl:DefineAlias "$site_3_0.lab47" "lbl_weather1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab49 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground #ffffff -highlightcolor black -text wing 
    vTcl:DefineAlias "$site_3_0.lab49" "Lbl_wing1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab50 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Time 
    vTcl:DefineAlias "$site_3_0.lab50" "lbl_time2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab51 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Temperatura 
    vTcl:DefineAlias "$site_3_0.lab51" "lbl_temp2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab52 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Weather 
    vTcl:DefineAlias "$site_3_0.lab52" "lbl_weather2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab53 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Wing 
    vTcl:DefineAlias "$site_3_0.lab53" "lbl_wing" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab56 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Time 
    vTcl:DefineAlias "$site_3_0.lab56" "lbl_time3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab57 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Temperatura 
    vTcl:DefineAlias "$site_3_0.lab57" "lbl_temp3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab58 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text weather 
    vTcl:DefineAlias "$site_3_0.lab58" "lbl_weather3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab59 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Wing 
    vTcl:DefineAlias "$site_3_0.lab59" "lbl_wing3" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab48 \
        -in $site_3_0 -x 0 -relx 0.067 -y 0 -rely 0.057 -width 0 \
        -relwidth 0.152 -height 0 -relheight 0.903 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab45 \
        -in $site_3_0 -x 0 -relx 0.26 -y 0 -rely 0.248 -width 0 \
        -relwidth 0.195 -height 0 -relheight 0.106 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 0 -relx 0.267 -y 0 -rely 0.398 -width 0 \
        -relwidth 0.189 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 0 -relx 0.267 -y 0 -rely 0.568 -width 0 \
        -relwidth 0.181 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.267 -y 0 -rely 0.739 -width 0 \
        -relwidth 0.181 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 0 -relx 0.48 -y 0 -rely 0.227 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab51 \
        -in $site_3_0 -x 0 -relx 0.48 -y 0 -rely 0.398 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab52 \
        -in $site_3_0 -x 0 -relx 0.48 -y 0 -rely 0.568 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab53 \
        -in $site_3_0 -x 0 -relx 0.48 -y 0 -rely 0.739 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.108 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab56 \
        -in $site_3_0 -x 0 -relx 0.72 -y 0 -rely 0.241 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.114 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab57 \
        -in $site_3_0 -x 0 -relx 0.72 -y 0 -rely 0.422 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.114 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab58 \
        -in $site_3_0 -x 0 -relx 0.72 -y 0 -rely 0.602 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.114 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab59 \
        -in $site_3_0 -x 0 -relx 0.72 -y 0 -rely 0.783 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.114 -anchor nw \
        -bordermode ignore 
    label $top.lab46 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -font {-family {Droid Serif} -size 16 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text SysIrr 
    vTcl:DefineAlias "$top.lab46" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab54 \
        -background #fff -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -image rsz_1rsz_cyber_gif -text Label 
    vTcl:DefineAlias "$top.lab54" "Label7" vTcl:WidgetProc "Toplevel1" 1
    labelframe $top.lab60 \
        -font TkDefaultFont -foreground black -text {Humidade do solo} \
        -background #ffffff -height 146 -width 230 
    vTcl:DefineAlias "$top.lab60" "Labelframe2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab60
    label $site_3_0.lab63 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -image rsz_1umidade_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab63" "Label3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab68 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab68" "lbl_hum1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab69 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab69" "lbl_hum2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab71 \
        -background #fff -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text Label 
    vTcl:DefineAlias "$site_3_0.lab71" "lbl_hum4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab91 \
        -background #fff -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text Label 
    vTcl:DefineAlias "$site_3_0.lab91" "lbl_hum3" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab63 \
        -in $site_3_0 -x 0 -relx 0.391 -y 0 -rely 0.342 -width 0 \
        -relwidth 0.157 -height 0 -relheight 0.404 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab68 \
        -in $site_3_0 -x 0 -relx 0.087 -y 0 -rely 0.205 -width 0 \
        -relwidth 0.157 -height 0 -relheight 0.13 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab69 \
        -in $site_3_0 -x 0 -relx 0.739 -y 0 -rely 0.205 -height 0 \
        -relheight 0.13 -anchor nw -bordermode ignore 
    place $site_3_0.lab71 \
        -in $site_3_0 -x 0 -relx 0.739 -y 0 -rely 0.753 -height 0 \
        -relheight 0.13 -anchor nw -bordermode ignore 
    place $site_3_0.lab91 \
        -in $site_3_0 -x 0 -relx 0.087 -y 0 -rely 0.753 -height 0 \
        -relheight 0.13 -anchor nw -bordermode ignore 
    labelframe $top.lab61 \
        -font TkDefaultFont -foreground black -text {Nivel de Agua} \
        -background #ffffff -height 135 -width 230 
    vTcl:DefineAlias "$top.lab61" "Labelframe3" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab61
    label $site_3_0.lab64 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -image rsz_agua_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab64" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab67 \
        -background #ffffff \
        -font {-family {DejaVu Sans} -size 16 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab67" "lbl_nivel_agua" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab64 \
        -in $site_3_0 -x 0 -relx 0.652 -y 0 -rely 0.342 -width 0 \
        -relwidth 0.157 -height 0 -relheight 0.404 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab67 \
        -in $site_3_0 -x 0 -relx 0.13 -y 0 -rely 0.479 -width 0 \
        -relwidth 0.461 -height 0 -relheight 0.13 -anchor nw \
        -bordermode ignore 
    labelframe $top.lab62 \
        -font TkDefaultFont -foreground black -text Tempo -background #ffffff \
        -height 135 -width 230 
    vTcl:DefineAlias "$top.lab62" "Labelframe4" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab62
    label $site_3_0.lab65 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -image rsz_time_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab65" "Label5" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab66 \
        -background #ffffff \
        -font {-family {DejaVu Sans} -size 16 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab66" "lbl_time_now" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab65 \
        -in $site_3_0 -x 0 -relx 0.696 -y 0 -rely 0.342 -width 0 \
        -relwidth 0.226 -height 0 -relheight 0.336 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab66 \
        -in $site_3_0 -x 0 -relx 0.087 -y 0 -rely 0.479 -width 0 \
        -relwidth 0.548 -height 0 -relheight 0.13 -anchor nw \
        -bordermode ignore 
    labelframe $top.lab72 \
        -font TkDefaultFont -foreground black -text Historico \
        -background #ffffff -height 85 -width 750 
    vTcl:DefineAlias "$top.lab72" "Labelframe5" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab72
    label $site_3_0.lab74 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab74" "lbl_dia1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab75 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab75" "lbl_dia2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab76 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab76" "lbl_dia3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab77 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab77" "lbl_dia4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab78 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab78" "lbl_dia5" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab79 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab79" "lbl_dia6" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab80 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab80" "lbl_dia7" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab89 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -image rsz_historico_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab89" "Label20" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab92 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab92" "lbl_dia8" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab93 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab93" "lbl_dia9" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab94 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab94" "lbl_dia1_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab95 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab95" "lbl_dia2_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab96 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab96" "lbl_dia3_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab97 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab97" "lbl_dia4_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab98 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab98" "lbl_dia5_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab99 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab99" "lbl_dia6_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab100 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab100" "lbl_dia7_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab101 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab101" "lbl_dia8_rega" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab102 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Label 
    vTcl:DefineAlias "$site_3_0.lab102" "lbl_dia9_rega" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab74 \
        -in $site_3_0 -x 0 -relx 0.12 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab75 \
        -in $site_3_0 -x 0 -relx 0.213 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab76 \
        -in $site_3_0 -x 0 -relx 0.307 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab77 \
        -in $site_3_0 -x 0 -relx 0.4 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab78 \
        -in $site_3_0 -x 0 -relx 0.493 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab79 \
        -in $site_3_0 -x 0 -relx 0.587 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab80 \
        -in $site_3_0 -x 0 -relx 0.68 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab89 \
        -in $site_3_0 -x 0 -relx 0.027 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.056 -height 0 -relheight 0.694 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab92 \
        -in $site_3_0 -x 0 -relx 0.76 -y 0 -rely 0.235 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab93 \
        -in $site_3_0 -x 0 -relx 0.853 -y 0 -rely 0.235 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab94 \
        -in $site_3_0 -x 0 -relx 0.12 -y 0 -rely 0.588 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab95 \
        -in $site_3_0 -x 0 -relx 0.213 -y 0 -rely 0.588 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab96 \
        -in $site_3_0 -x 0 -relx 0.307 -y 0 -rely 0.588 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab97 \
        -in $site_3_0 -x 0 -relx 0.4 -y 0 -rely 0.588 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab98 \
        -in $site_3_0 -x 0 -relx 0.493 -y 0 -rely 0.588 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab99 \
        -in $site_3_0 -x 0 -relx 0.587 -y 0 -rely 0.588 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    place $site_3_0.lab100 \
        -in $site_3_0 -x 0 -relx 0.68 -y 0 -rely 0.588 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab101 \
        -in $site_3_0 -x 0 -relx 0.76 -y 0 -rely 0.588 -width 0 \
        -relwidth 0.048 -height 0 -relheight 0.224 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab102 \
        -in $site_3_0 -x 0 -relx 0.853 -y 0 -rely 0.588 -height 0 \
        -relheight 0.224 -anchor nw -bordermode ignore 
    labelframe $top.lab73 \
        -font TkDefaultFont -foreground black -text Configuracao \
        -background #ffffff -height 85 -highlightbackground #ffffff \
        -width 750 
    vTcl:DefineAlias "$top.lab73" "Labelframe6" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab73
    button $site_3_0.but81 \
        -background #ff0000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Val1 
    vTcl:DefineAlias "$site_3_0.but81" "btn_valvula1" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but82 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Config 
    vTcl:DefineAlias "$site_3_0.but82" "btn_config" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but83 \
        -background #ff0000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Bomba 
    vTcl:DefineAlias "$site_3_0.but83" "btn_bomba" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab85 \
        -background #ffffff -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -image rsz_definicao_gif -text Label 
    vTcl:DefineAlias "$site_3_0.lab85" "Label19" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but86 \
        -background #ff0000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Val2 
    vTcl:DefineAlias "$site_3_0.but86" "btn_val2" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but87 \
        -background #ff0000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Val3 
    vTcl:DefineAlias "$site_3_0.but87" "btn_val3" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but88 \
        -background #ff0000 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Val4 
    vTcl:DefineAlias "$site_3_0.but88" "btn_val4" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.but81 \
        -in $site_3_0 -x 0 -relx 0.4 -y 0 -rely 0.353 -height 29 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $site_3_0.but82 \
        -in $site_3_0 -x 0 -relx 0.133 -y 0 -rely 0.353 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but83 \
        -in $site_3_0 -x 0 -relx 0.267 -y 0 -rely 0.353 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab85 \
        -in $site_3_0 -x 0 -relx 0.013 -y 0 -rely 0.235 -width 0 \
        -relwidth 0.069 -height 0 -relheight 0.659 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but86 \
        -in $site_3_0 -x 0 -relx 0.533 -y 0 -rely 0.353 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but87 \
        -in $site_3_0 -x 0 -relx 0.667 -y 0 -rely 0.353 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but88 \
        -in $site_3_0 -x 0 -relx 0.8 -y 0 -rely 0.353 -height 29 -relheight 0 \
        -anchor nw -bordermode ignore 
    label $top.lab103 \
        -background #fff -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -image logo_gif -text Label 
    vTcl:DefineAlias "$top.lab103" "Label6" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 0 -relx 0.07 -y 0 -rely 0.113 -width 0 -relwidth 0.874 \
        -height 0 -relheight 0.225 -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 0 -relx 0.431 -y 0 -rely 0.042 -width 0 -relwidth 0.147 \
        -height 0 -relheight 0.066 -anchor nw -bordermode ignore 
    place $top.lab54 \
        -in $top -x 0 -relx 0.35 -y 0 -rely 0.918 -width 0 -relwidth 0.293 \
        -height 0 -relheight 0.045 -anchor nw -bordermode ignore 
    place $top.lab60 \
        -in $top -x 0 -relx 0.07 -y 0 -rely 0.353 -width 0 -relwidth 0.268 \
        -height 0 -relheight 0.206 -anchor nw -bordermode ignore 
    place $top.lab61 \
        -in $top -x 0 -relx 0.373 -y 0 -rely 0.353 -width 0 -relwidth 0.268 \
        -height 0 -relheight 0.206 -anchor nw -bordermode ignore 
    place $top.lab62 \
        -in $top -x 0 -relx 0.676 -y 0 -rely 0.353 -width 0 -relwidth 0.268 \
        -height 0 -relheight 0.206 -anchor nw -bordermode ignore 
    place $top.lab72 \
        -in $top -x 0 -relx 0.07 -y 0 -rely 0.579 -width 0 -relwidth 0.874 \
        -height 0 -relheight 0.12 -anchor nw -bordermode ignore 
    place $top.lab73 \
        -in $top -x 0 -relx 0.07 -y 0 -rely 0.72 -width 0 -relwidth 0.874 \
        -height 0 -relheight 0.12 -anchor nw -bordermode ignore 
    place $top.lab103 \
        -in $top -x 0 -relx 0.037 -y 0 -rely 0.014 -width 0 -relwidth 0.089 \
        -height 0 -relheight 0.082 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

