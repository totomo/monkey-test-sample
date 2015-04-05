# Makefile

crash_monkey_result:
	xcodebuild -target "test"  -sdk iphonesimulator -configuration "Release" install DSTROOT="out" clean build
	xcrun simctl install booted out/Applications/test.app
	crash_monkey -a ./out/Applications/test.app -w "iPhone 5 (8.2 Simulator) [79CDDA0D-80DF-40A5-9768-F978BDABCF6B]" -c test.json -n 1

clean:
	rm -rf out;
	rm -rf build;
	rm -rf instrumentscli*;
	rm -rf crash_monkey_result;
