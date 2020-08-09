.class public Lcom/iflytek/speech/libisstts;
.super Ljava/lang/Object;
.source "libisstts.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ichip-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "itts-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create(Lcom/iflytek/speech/NativeHandle;Lcom/iflytek/speech/ITtsListener;)V
.end method

.method public static native destroy(Lcom/iflytek/speech/NativeHandle;)V
.end method

.method public static native getAudioData(Lcom/iflytek/speech/NativeHandle;[BI[I)V
.end method

.method public static native initRes(Ljava/lang/String;I)I
.end method

.method public static native setParam(Lcom/iflytek/speech/NativeHandle;II)V
.end method

.method public static native setParamEx(Lcom/iflytek/speech/NativeHandle;ILjava/lang/String;)V
.end method

.method public static native start(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;)V
.end method

.method public static native stop(Lcom/iflytek/speech/NativeHandle;)V
.end method

.method public static native unInitRes()I
.end method
