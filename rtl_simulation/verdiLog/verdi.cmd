simSetSimulator "-vcssv" -exec \
           "/home/student/Documents/RTL2GDSII/rtl_simulation/simv" -args \
           "Verdi"
debImport "-dbdir" "/home/student/Documents/RTL2GDSII/rtl_simulation/simv.daidir"
debLoadSimResult /home/student/Documents/RTL2GDSII/rtl_simulation/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 57 1 2 1 1} -backward
wvAddSignal -win $_nWave2 "/testbench_8bit/A\[7:0\]" "/testbench_8bit/B\[7:0\]" \
           "/testbench_8bit/C_in" "/testbench_8bit/Clock" \
           "/testbench_8bit/SUM\[7:0\]" "/testbench_8bit/C_out" \
           "/testbench_8bit/dut/A\[7:0\]" "/testbench_8bit/dut/B\[7:0\]" \
           "/testbench_8bit/dut/C_in" "/testbench_8bit/dut/Clock" \
           "/testbench_8bit/dut/SUM\[7:0\]" "/testbench_8bit/dut/C_out"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1/testbench_8bit" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {testbench_8bit}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiCaptureWindow -dock windowDock_nWave_2
verdiCloseDialog -win $_Verdi_1 -widget capturePreview
verdiCaptureWindow -dock windowDock_nWave_2
verdiCaptureWindow -dock windowDock_nWave_2 \
           -file "/home/student/Documents/RTL2GDSII/RESULTS/VCS - Verdi/Waveform.png"
verdiCloseDialog -win $_Verdi_1 -widget capturePreview
wvCloseGetStreamsDialog -win $_nWave2
wvAttrOrderConfigDlg -win $_nWave2 -close
wvCloseDetailsViewDlg -win $_nWave2
wvCloseFilterColorizeDlg -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench_8bit"
verdiSetActWin -win $_nSchema_3
verdiCaptureWindow -dock windowDock_nSchema_3
verdiCaptureWindow -dock windowDock_nSchema_3 \
           -file "/home/student/Documents/RTL2GDSII/RESULTS/VCS - Verdi/Full Circuit.png"
verdiCloseDialog -win $_Verdi_1 -widget capturePreview
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
verdiCaptureWindow -dock windowDock_nSchema_3
verdiCaptureWindow -dock windowDock_nSchema_3 \
           -file "/home/student/Documents/RTL2GDSII/RESULTS/VCS - Verdi/Internal 8bit RCA Circuit.png"
verdiCloseDialog -win $_Verdi_1 -widget capturePreview
schSelect -win $_nSchema3 -inst "FA0"
schPushViewIn -win $_nSchema3
verdiCaptureWindow -dock windowDock_nSchema_3
verdiCaptureWindow -dock windowDock_nSchema_3 \
           -file "/home/student/Documents/RTL2GDSII/RESULTS/VCS - Verdi/Internal 1bit Full Adder Circuit.png"
verdiCloseDialog -win $_Verdi_1 -widget capturePreview
debExit
