cmd_drivers/irqchip/built-in.o :=  arm-linux-gnueabi-ld -EL    -r -o drivers/irqchip/built-in.o drivers/irqchip/irqchip.o drivers/irqchip/irq-gic.o drivers/irqchip/irq-gic-common.o 
