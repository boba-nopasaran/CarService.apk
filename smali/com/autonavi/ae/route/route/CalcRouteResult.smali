.class public Lcom/autonavi/ae/route/route/CalcRouteResult;
.super Ljava/lang/Object;
.source "CalcRouteResult.java"


# instance fields
.field private mPtr:J

.field public mResultInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/route/route/CalcRouteResult;->mResultInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/ae/route/route/CalcRouteResult;->nativeDestroy()V

    return-void
.end method

.method public native getErrorCode()I
.end method

.method public getRoute(I)Lcom/autonavi/ae/route/route/Route;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/route/route/CalcRouteResult;->nativeGetRoute(I)Lcom/autonavi/ae/route/route/Route;

    move-result-object v0

    return-object v0
.end method

.method public native getRouteBound()[D
.end method

.method public native getRouteCount()I
.end method

.method public native nativeDestroy()V
.end method

.method public native nativeGetRoute(I)Lcom/autonavi/ae/route/route/Route;
.end method
