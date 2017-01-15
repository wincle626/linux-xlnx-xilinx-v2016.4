cmd_arch/arm/boot/dts/zynq-zed.dtb := mkdir -p arch/arm/boot/dts/ ; arm-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.zynq-zed.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.zynq-zed.dtb.dts.tmp arch/arm/boot/dts/zynq-zed.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/zynq-zed.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.zynq-zed.dtb.d.dtc.tmp arch/arm/boot/dts/.zynq-zed.dtb.dts.tmp ; cat arch/arm/boot/dts/.zynq-zed.dtb.d.pre.tmp arch/arm/boot/dts/.zynq-zed.dtb.d.dtc.tmp > arch/arm/boot/dts/.zynq-zed.dtb.d

source_arch/arm/boot/dts/zynq-zed.dtb := arch/arm/boot/dts/zynq-zed.dts

deps_arch/arm/boot/dts/zynq-zed.dtb := \
  arch/arm/boot/dts/zynq-7000.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \

arch/arm/boot/dts/zynq-zed.dtb: $(deps_arch/arm/boot/dts/zynq-zed.dtb)

$(deps_arch/arm/boot/dts/zynq-zed.dtb):
