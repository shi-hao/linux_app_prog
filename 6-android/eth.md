
# How to config ethernet interface?

(1) root device, use shell ifconfig
	need root tool 
	unsafe
	root every device impossiable

(2) use hidden class ethernetmanager reflection
	need sign the apk, need signature keys of platform source code

(3) custom jar calling hidden api ethernetmanager
	need create custom jar package using SDK android.jar and device framwork.jar

(4) ndk / jni config?

(5) android os source code framwork ethernet config
	platform os source code
	framwork develop
