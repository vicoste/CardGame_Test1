QT += quick

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Sources/Model/card.cpp \
        Sources/Model/deck.cpp \
        Sources/Model/emplacement.cpp \
        Sources/Model/hand.cpp \
        Sources/Model/player.cpp \
        Sources/main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    Sources/Model/card.h \
    Sources/Model/deck.h \
    Sources/Model/emplacement.h \
    Sources/Model/hand.h \
    Sources/Model/includes.h \
    Sources/Model/player.h

DISTFILES += \
    View/Board.qml \
    View/Card.qml \
    View/CardAttribut.qml \
    View/Hand.qml \
    View/Popup.qml \
    View/TestCreate.js \
    View/main.qml
