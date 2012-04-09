# Add subproject BTris
SET(ZIGZAG_TARGET Zigzag)

# Set enviroment path
SET(TARGET_BUILD_PATH ${PROJECT_BINARY_DIR}/Zigzag)

# List all source files
SET(HEADERFILES
	win32/main.h
	Classes/AppDelegate.h
	Classes/HelloWorldScene.h
)

SET(CXXFILES
	win32/main.cpp
	Classes/AppDelegate.cpp
	Classes/HelloWorldScene.cpp
)

# List all resource files
SET(RESOURCES ./Resources/
)

# Add defination
ADD_DEFINITIONS(-D_UNICODE -DUNICODE)

 

# Add lib include directories
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/cocos2dx)
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/cocos2dx/include)
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/cocos2dx/platform)
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/cocos2dx/platform/third_party/win32)
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/CocosDenshion/include)
INCLUDE_DIRECTORIES(${COCOSX_SDK_HEADER}/cocos2dx/platform/third_party/win32/OGLES)

# Add Executable
ADD_EXECUTABLE(${ZIGZAG_TARGET} ${HEADERFILES} ${CXXFILES})

# Set property
SET_PROPERTY(TARGET ${ZIGZAG_TARGET}
	PROPERTY WIN32_EXECUTABLE ON
)

# Add lib by list
# cocos2d-x libs
SET(LIBLIST libBox2D libchipmunk libcocos2d libCocosDenshion 
	libcurl_imp libEGL libgles_cm libiconv libjpeg liblua 
	libpng libxml2 libzlib pthreadVCE2)
FOREACH(EACHLIB ${LIBLIST})
	TARGET_LINK_LIBRARIES(${ZIGZAG_TARGET} ${COCOSX_SDK_LIB}/${EACHLIB}.lib)
ENDFOREACH(EACHLIB)

# Install Resrouces

INSTALL(DIRECTORY ${RESOURCES}
	DESTINATION ${TARGET_BUILD_PATH}
)

# cocos2d-x libs
SET(DLLLIST iconv libcocos2d libCocosDenshion 
	libcurl libEGL libgles_cm libxml2 zlib1
       	pthreadVCE2
)
FOREACH(EACHDLL ${DLLLIST})
	INSTALL(FILES ${COCOSX_SDK_LIB}/${EACHDLL}.dll
		DESTINATION ${TARGET_BUILD_PATH}/Debug
	)
ENDFOREACH(EACHDLL)



