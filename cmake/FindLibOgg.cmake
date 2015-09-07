FIND_PATH(OGG_INCLUDE_DIR ogg/ogg.h)

SET(OGG_NAMES ${OGG_NAMES} ogg libogg)
FIND_LIBRARY(OGG_LIBRARY NAMES ${OGG_NAMES} PATH)

IF(OGG_INCLUDE_DIR AND OGG_LIBRARY)
SET(OGG_FOUND TRUE)
ENDIF(OGG_INCLUDE_DIR AND OGG_LIBRARY)

IF(OGG_FOUND)
IF(NOT Ogg_FIND_QUIETLY)
MESSAGE(STATUS "Found Ogg: ${OGG_LIBRARY}")
ENDIF (NOT Ogg_FIND_QUIETLY)
ELSE(OGG_FOUND)
IF(Ogg_FIND_REQUIRED)
MESSAGE(FATAL_ERROR "Could not find ogg")
ENDIF(Ogg_FIND_REQUIRED)
ENDIF (OGG_FOUND)