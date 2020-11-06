THEOS_DEVICE_IP = localhost
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64e arm64 armv7

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = stife
stife_FILES = Tweak.x
stife_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
