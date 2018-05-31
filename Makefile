include theos/makefiles/common.mk

APPLICATION_NAME = m
m_FILES = main.m XXAppDelegate.m XXRootViewController.m
m_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk