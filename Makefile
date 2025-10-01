obj-m := xradio_btlpm.o
PWD  := $(shell pwd)
KDIR ?= $(PWD)/kernel

all:
	$(MAKE) -C $(KDIR) ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
