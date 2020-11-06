THEOS_DEVICE_IP = localhost
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = stife
stife_FILES = Tweak.x
stife_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk
