.class public final Lcom/autonavi/ae/route/model/RouteConstant$RequestState;
.super Ljava/lang/Object;
.source "RouteConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/route/model/RouteConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestState"
.end annotation


# static fields
.field public static final ETbtRequestState_CallCenterError:I = 0x5

.field public static final ETbtRequestState_DataBufError:I = 0x9

.field public static final ETbtRequestState_EncodeFalse:I = 0x7

.field public static final ETbtRequestState_EndNoRoad:I = 0xb

.field public static final ETbtRequestState_EndPointFalse:I = 0x6

.field public static final ETbtRequestState_HalfwayNoRoad:I = 0xc

.field public static final ETbtRequestState_IllegalRequest:I = 0x4

.field public static final ETbtRequestState_LackEndData:I = 0x18

.field public static final ETbtRequestState_LackPreview:I = 0x8

.field public static final ETbtRequestState_LackStartData:I = 0x12

.field public static final ETbtRequestState_LackViaData:I = 0x19

.field public static final ETbtRequestState_LackWayCityData:I = 0x14

.field public static final ETbtRequestState_NULL:I = 0x0

.field public static final ETbtRequestState_NetERROR:I = 0x2

.field public static final ETbtRequestState_NetTimeOut:I = 0x10

.field public static final ETbtRequestState_NoNetConn:I = 0x11

.field public static final ETbtRequestState_OfflineRouteFail:I = 0xe

.field public static final ETbtRequestState_SilentRerouteNoMeetCriteria:I = 0x17

.field public static final ETbtRequestState_StartNoRoad:I = 0xa

.field public static final ETbtRequestState_StartPointFalse:I = 0x3

.field public static final ETbtRequestState_Success:I = 0x1

.field public static final ETbtRequestState_TooFar:I = 0x13

.field public static final ETbtRequestState_UnknownRouteFail:I = 0xd

.field public static final ETbtRequestState_Updating:I = 0x16

.field public static final ETbtRequestState_UserCancel:I = 0xf

.field public static final ETbtRequestState_ViaPointFalse:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
