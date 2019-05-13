setws ./
createhw -name R5_0_bsp -hwspec top_ZCU104_RPU.hdf
createapp -name R5_0_app -app {Empty Application} -proc psu_cortexr5_0 -hwproject R5_0_bsp -os standalone
importsources -name R5_0_app -path ../../R5_0_app/src
projects -build
exec bootgen -arch zynqmp -image ../../ZCU104_RPU/scripts/output.bif -w -o ../../../images/linux/BOOT.BIN
