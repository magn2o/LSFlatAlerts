include theos/makefiles/common.mk

TWEAK_NAME = LSFlatAlerts
LSFlatAlerts_FILES = Tweak.xm
LSFlatAlerts_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk
