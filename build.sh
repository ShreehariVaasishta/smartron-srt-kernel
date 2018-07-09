export CROSS_COMPILE="/home/amog787/toolchain/bin/aarch64-linux-android-"
export ARCH=arm64 && export SUBARCH=arm64
export KBUILD_BUILD_HOST="SpaceX"
export KBUILD_BUILD_USER="amog787"


mkdir -p out
make O=out clean
make O=out mrproper
make O=out msm-perf_defconfig
make O=out -j$(nproc --all)
