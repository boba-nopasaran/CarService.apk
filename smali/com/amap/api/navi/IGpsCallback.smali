.class public interface abstract Lcom/amap/api/navi/IGpsCallback;
.super Ljava/lang/Object;
.source "IGpsCallback.java"


# static fields
.field public static final GPS_OFFSET_AFTER:I = 0x2

.field public static final GPS_OFFSET_BEFORE:I = 0x1


# virtual methods
.method public abstract onGpsStarted()V
.end method

.method public abstract onLocationChanged(ILandroid/location/Location;)V
.end method
