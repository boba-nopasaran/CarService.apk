.class public Lcom/iflytek/cata/libisscata;
.super Ljava/lang/Object;
.source "libisscata.java"


# static fields
.field private static final tag:Ljava/lang/String; = "libisscata"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cata"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cataIndex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cata-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IndexAddIdxEntity(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)V
.end method

.method public static native IndexCreate(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/cata/ICataListener;)V
.end method

.method public static native IndexCreateEx(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/cata/ICataListener;)V
.end method

.method public static native IndexDelIdxEntity(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)V
.end method

.method public static native IndexDestroy(Lcom/iflytek/cata/CataNativeHandle;)V
.end method

.method public static native IndexDropRes(Lcom/iflytek/cata/CataNativeHandle;)V
.end method

.method public static native IndexEndIdxEntity(Lcom/iflytek/cata/CataNativeHandle;)V
.end method

.method public static native SearchAsync(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)V
.end method

.method public static native SearchCreate(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cata/ICataListener;)V
.end method

.method public static native SearchCreateEx(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/cata/ICataListener;)V
.end method

.method public static native SearchDestroy(Lcom/iflytek/cata/CataNativeHandle;)V
.end method

.method public static native SearchSync(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native SetParam(Lcom/iflytek/cata/CataNativeHandle;II)V
.end method
