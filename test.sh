echo "-------------- OS X / Xcode ----------------"
swift build
swift build -c release
swift test
echo "-------------- LINUX SWIFT 4.0 ----------------"
docker run -it -v $PWD:/home rockywei/swift:4.0 /bin/bash -c "cd /home;swift build --build-path=.build_linux; swift build -c release --build-path=.build_linux;swift test --build-path=.build_linux"

