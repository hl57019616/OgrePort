LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE        := ogreapp

LOCAL_C_INCLUDES    := \
               $(LOCAL_PATH)/../../deps/ogre \
               $(OGRENATIVE_ROOT) \
               $(OGRE_ROOT)/OgreMain/include \
               $(OGRE_ROOT)/OgreMain/include/Android \
               $(OGRE_ROOT)/Components/RTShaderSystem/include \
               $(OGRE_ROOT)/Components/Overlay/include \
               $(OGRE_ROOT)/RenderSystems/GLES2/include \
               $(OGRE_ROOT)/RenderSystems/GLES2/src/GLSLES/include \
               $(OGRE_ROOT)/RenderSystems/GLES2/include/Android \
               $(OGRE_ROOT)/RenderSystems/GLES2/include/EGL \
               $(OGRE_ROOT)/RenderSystems/GLES2/include/EGL/Android \
               $(OGRE_ROOT)/PlugIns/OctreeSceneManager/include \
               $(OGRE_ROOT)/Plugins/ParticleFX/include \
               $(OIS_ROOT)/includes \
               $(MYGUI_ROOT)/MyGUIEngine/include \
               $(MYGUI_ROOT)/Platforms/Ogre/OgrePlatform/include \
               $(OGRESDK_ROOT)/ \
               $(OGREAPP_ROOT) \
               $(OGRE_ROOT)/ \
               $(OGRENATIVE_ROOT)/ \

LOCAL_LDLIBS        := -ldl -llog -lz -landroid -lEGL -lGLESv2

LOCAL_SRC_FILES        := \
                 $(OGREAPP_ROOT)/OgreApplication.cpp \

LOCAL_STATIC_LIBRARIES := \
                libzzip \
                libFreeImage \
                libogrecomponents \
                libogremain \
                libogrerendersystems \
                libogreplugins \
                cpufeatures \
                libois \
                libmygui \
                ogresdk \

LOCAL_CFLAGS += -DBUILD_TARGET_ANDROID

LOCAL_SHARED_LIBRARIES := \
                ogrenative \

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/cpufeatures)