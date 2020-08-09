.class public Lcom/amap/api/col/cs;
.super Ljava/lang/Object;
.source "AE8Temp.java"


# static fields
.field private static a:[Lcom/autonavi/ae/route/model/RoutePoi;

.field private static b:[Lcom/autonavi/ae/route/model/RoutePoi;

.field private static c:[Lcom/autonavi/ae/route/model/RoutePoi;

.field private static d:I

.field private static e:Lcom/amap/api/navi/model/NaviLatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/amap/api/col/cs;->d:I

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-direct {v0}, Lcom/amap/api/navi/model/NaviLatLng;-><init>()V

    sput-object v0, Lcom/amap/api/col/cs;->e:Lcom/amap/api/navi/model/NaviLatLng;

    new-array v0, v1, [Lcom/autonavi/ae/route/model/RoutePoi;

    sput-object v0, Lcom/amap/api/col/cs;->a:[Lcom/autonavi/ae/route/model/RoutePoi;

    new-array v0, v1, [Lcom/autonavi/ae/route/model/RoutePoi;

    sput-object v0, Lcom/amap/api/col/cs;->b:[Lcom/autonavi/ae/route/model/RoutePoi;

    new-array v0, v1, [Lcom/autonavi/ae/route/model/RoutePoi;

    sput-object v0, Lcom/amap/api/col/cs;->c:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/amap/api/col/cs;->d:I

    return-void
.end method

.method public static a(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    sput-object p0, Lcom/amap/api/col/cs;->e:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method public static a([Lcom/autonavi/ae/route/model/RoutePoi;)V
    .locals 0

    sput-object p0, Lcom/amap/api/col/cs;->a:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/amap/api/col/cs;->a:[Lcom/autonavi/ae/route/model/RoutePoi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/cs;->c:[Lcom/autonavi/ae/route/model/RoutePoi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/cs;->c:[Lcom/autonavi/ae/route/model/RoutePoi;

    array-length v0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/cs;->a:[Lcom/autonavi/ae/route/model/RoutePoi;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([Lcom/autonavi/ae/route/model/RoutePoi;)V
    .locals 0

    sput-object p0, Lcom/amap/api/col/cs;->b:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-void
.end method

.method public static b()[Lcom/autonavi/ae/route/model/RoutePoi;
    .locals 1

    sget-object v0, Lcom/amap/api/col/cs;->a:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-object v0
.end method

.method public static c([Lcom/autonavi/ae/route/model/RoutePoi;)V
    .locals 0

    sput-object p0, Lcom/amap/api/col/cs;->c:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-void
.end method

.method public static c()[Lcom/autonavi/ae/route/model/RoutePoi;
    .locals 1

    sget-object v0, Lcom/amap/api/col/cs;->b:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-object v0
.end method

.method public static d()[Lcom/autonavi/ae/route/model/RoutePoi;
    .locals 1

    sget-object v0, Lcom/amap/api/col/cs;->c:[Lcom/autonavi/ae/route/model/RoutePoi;

    return-object v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/amap/api/col/cs;->d:I

    return v0
.end method

.method public static f()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    sget-object v0, Lcom/amap/api/col/cs;->e:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method
