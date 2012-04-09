# Execute make_*.bat/make_*.sh to Create project

################################################
# Build vc project with CMake

PROJECT(Zigzag)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

# Set cocos2d-x path
SET(COCOSX_SDK_LIB ${PROJECT_SOURCE_DIR}/../sdk/cocos2d_x/lib/Debug.win32)
SET(COCOSX_SDK_HEADER ${COCOS2DX_PATH})

# process sub directories
SUBDIRS(Zigzag)
################################################

