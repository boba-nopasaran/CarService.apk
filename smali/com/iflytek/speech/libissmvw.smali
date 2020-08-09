.class public Lcom/iflytek/speech/libissmvw;
.super Ljava/lang/Object;
.source "libissmvw.java"


# static fields
.field private static instance:Lcom/iflytek/speech/libissmvw; = null

.field private static final tag:Ljava/lang/String; = "libissmvw"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/libissmvw;->instance:Lcom/iflytek/speech/libissmvw;

    const-string v0, "ichip-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "imvw-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addstartscene(Lcom/iflytek/speech/NativeHandle;I)I
.end method

.method public static native appendAudioData(Lcom/iflytek/speech/NativeHandle;[BI)I
.end method

.method public static native create(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;Lcom/iflytek/speech/mvw/IMVWListener;)I
.end method

.method public static native destroy(Lcom/iflytek/speech/NativeHandle;)I
.end method

.method public static native isCouldAppendAudioData()Z
.end method

.method public static native setMvwDefaultKeyWords(Lcom/iflytek/speech/NativeHandle;I)I
.end method

.method public static native setMvwKeyWords(Lcom/iflytek/speech/NativeHandle;ILjava/lang/String;)I
.end method

.method public static native setMvwLanguage(I)I
.end method

.method public static native setParam(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setThreshold(Lcom/iflytek/speech/NativeHandle;III)I
.end method

.method public static native start(Lcom/iflytek/speech/NativeHandle;I)I
.end method

.method public static native stop(Lcom/iflytek/speech/NativeHandle;)I
.end method

.method public static native stopscene(Lcom/iflytek/speech/NativeHandle;I)I
.end method
