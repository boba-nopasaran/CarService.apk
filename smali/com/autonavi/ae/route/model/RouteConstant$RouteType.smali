.class public final Lcom/autonavi/ae/route/model/RouteConstant$RouteType;
.super Ljava/lang/Object;
.source "RouteConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/route/model/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteType"
.end annotation


# static fields
.field public static final ROUTE_TYPE_CHANGE_END:I = 0x9

.field public static final ROUTE_TYPE_CHANGE_PARALLEL_WAY:I = 0x4

.field public static final ROUTE_TYPE_CHANGE_STRATEGY:I = 0x3

.field public static final ROUTE_TYPE_DAMAGED_ROAD:I = 0x7

.field public static final ROUTE_TYPE_LIMIT_FORBID:I = 0xb

.field public static final ROUTE_TYPE_LIMIT_LINE:I = 0x6

.field public static final ROUTE_TYPE_MANUAL_REFRESH:I = 0xc

.field public static final ROUTE_TYPE_NONE:I = -0x1

.field public static final ROUTE_TYPE_NORMAL:I = 0x1

.field public static final ROUTE_TYPE_OFFLINE_LIMIT_FORBID:I = 0xd

.field public static final ROUTE_TYPE_OFF_ROUTE:I = 0x2

.field public static final ROUTE_TYPE_PRESSURE:I = 0x8

.field public static final ROUTE_TYPE_TRAFFIC_JAM:I = 0x5

.field public static final ROUTE_TYPE_UPDATE_CITY_DATA:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
