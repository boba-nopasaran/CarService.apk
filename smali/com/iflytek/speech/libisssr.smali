.class public Lcom/iflytek/speech/libisssr;
.super Ljava/lang/Object;
.source "libisssr.java"


# static fields
.field private static final tag:Ljava/lang/String; = "libisssr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ichip-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "iFlyPResBuild"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "iFlyNLI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "msc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cataIndex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cata"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "issauth"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SpWord"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "isr-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activate(Ljava/lang/String;)I
.end method

.method public static native appendAudioData([BI)I
.end method

.method public static native create(Ljava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)I
.end method

.method public static native createEx(ILjava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)I
.end method

.method public static native destroy()I
.end method

.method public static native endAudioData()I
.end method

.method public static native getActiveKey(Ljava/lang/String;)I
.end method

.method public static native localNli(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native mspSearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native setMachineCode(Ljava/lang/String;)I
.end method

.method public static native setParam(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setSerialNumber(Ljava/lang/String;)I
.end method

.method public static native start(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native stop()I
.end method

.method public static native uploadDict(Ljava/lang/String;I)I
.end method
