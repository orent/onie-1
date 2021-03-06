# Makefile fragment for Lenovo NE1072T

# Vendor's version number can be defined here.
# Available variables are 'VENDOR_VERSION' and 'UBOOT_IDENT_STRING'.
# e.g.,
# VENDOR_VERSION = .00.01
# UBOOT_IDENT_STRING = 1.4.0.1

ONIE_ARCH ?= powerpc-softfloat
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

VENDOR_VERSION = .0.3

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

EXT3_4_ENABLE = yes
I2CTOOLS_ENABLE = yes
#I2CTOOLS_SYSEEPROM = no

# Set the desired kernel version.
LINUX_TARBALL_URLS	= http://git.freescale.com/git/cgit.cgi/ppc/sdk/linux.git/snapshot
LINUX_RELEASE		= fsl-sdk-v1.8
LINUX_TARBALL		= linux-$(LINUX_RELEASE).tar.bz2

# Specify uClibc version
#UCLIBC_VERSION = 0.9.32.1
GCC_VERSION = 4.9.2

# Set the desired u-boot version.
UBOOT_TARBALL_URLS	= http://git.freescale.com/git/cgit.cgi/ppc/sdk/u-boot.git/snapshot
UBOOT_VERSION		= fsl-sdk-v1.7

UBOOT_MACHINE = LENOVO_NE10X2
KERNEL_DTB = ne10x2.dtb

#Disable BRTFS
BTRFS_PROGS_ENABLE = no

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 19046

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
