.class public final Lcom/autonavi/ae/route/model/RouteConstant$NetError;
.super Ljava/lang/Object;
.source "RouteConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/route/model/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetError"
.end annotation


# static fields
.field public static final ETbtNetError_NoNetConn:I = 0x3

.field public static final ETbtNetError_Other:I = -0x1

.field public static final ETbtNetError_TimeOut:I = 0x1

.field public static final ETbtNetError_UserCancel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
