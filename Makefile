ARCHS = armv7 arm64
TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = IGProfileNavTextColorer
IGProfileNavTextColorer_FILES = Tweak.xm
IGProfileNavTextColorer_FRAMEWORKS = UIKit
IGProfileNavTextColorer += -Wl,-segalign,4000
IGProfileNavTextColorer_CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
