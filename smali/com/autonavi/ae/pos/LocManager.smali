.class public Lcom/autonavi/ae/pos/LocManager;
.super Ljava/lang/Object;
.source "LocManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addLocListener(Lcom/autonavi/ae/pos/LocListener;I)V
.end method

.method public static native addParallelRoadObserver(Lcom/autonavi/ae/pos/LocParallelRoadObserver;)V
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native init()J
.end method

.method public static native saveLocStorage()V
.end method

.method public static native setCarPosByCoord(IID)V
.end method

.method public static native setCompass(DJ)V
.end method

.method public static native setDoorIn(Lcom/autonavi/ae/pos/LocDoorIn;)V
.end method

.method public static native setGSVData(Lcom/autonavi/ae/pos/LocGSVData;)V
.end method

.method public static native setGpsInfo(Lcom/autonavi/ae/pos/GpsInfo;)V
.end method

.method public static native setGyro(IIFFFIIJ)V
.end method

.method public static native setLogSwitch(I)V
.end method

.method public static native setMatchMode(I)V
.end method

.method public static native setMode(I)V
.end method

.method public static native setPressure(DJ)V
.end method

.method public static native setPulse(IIIJ)V
.end method

.method public static native switchParallelRoad(Lcom/autonavi/ae/pos/LocObjectId;)V
.end method

.method public static native uninit()V
.end method
