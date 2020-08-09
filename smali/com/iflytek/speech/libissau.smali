.class public Lcom/iflytek/speech/libissau;
.super Ljava/lang/Object;
.source "libissau.java"


# static fields
.field private static final tag:Ljava/lang/String; = "libissau"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "iau-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native aecCreate(II)I
.end method

.method public static native aecDestory()I
.end method

.method public static native aecProcessAudio([B[BI[B[I)I
.end method

.method public static native aecReset(I)I
.end method

.method public static native setParam(ILjava/lang/String;Ljava/lang/String;)I
.end method
