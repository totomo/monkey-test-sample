# Makefile

crash_monkey_result:
	xcodebuild -target "test"  -sdk "iphoneos" -configuration "Debug" install DSTROOT="out" clean build
	crash_monkey -a ./out/Applications/test.app -w "iPhone 6 (8.2 Simulator) [5B19364A-6C97-4DE4-A15F-EB7027CB8D13]" -c test.json -n 1

clean:
	rm -rf out;
	rm -rf build;
	rm -rf instrumentscli*;
	rm -rf crash_monkey_result;
