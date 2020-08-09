.class public Lcom/car/cloud/Type;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/Type$GPSData;,
        Lcom/car/cloud/Type$GPSListHeadInfo;,
        Lcom/car/cloud/Type$MsgInfo;,
        Lcom/car/cloud/Type$DeviceInfo;,
        Lcom/car/cloud/Type$UserInfo;,
        Lcom/car/cloud/Type$LoginInfo;
    }
.end annotation


# static fields
.field public static COORD_TYPE_BD0911:I = 0x0

.field public static COORD_TYPE_GPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSvc_CloudType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/car/cloud/Type;->COORD_TYPE_GPS:I

    const/4 v0, 0x1

    sput v0, Lcom/car/cloud/Type;->COORD_TYPE_BD0911:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
