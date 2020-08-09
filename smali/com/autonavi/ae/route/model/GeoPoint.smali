.class public Lcom/autonavi/ae/route/model/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# static fields
.field public static final EarthCircumferenceInMeters:D = 4.007501668557849E7

.field public static final EarthRadiusInMeters:I = 0x615299

.field public static final MAXZOOMLEVEL:I = 0x14

.field public static final MaxLatitude:D = 85.0511287798

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.0511287798

.field public static final MinLongitude:D = -180.0

.field public static final PixelsPerTile:I = 0x100

.field public static final TileSplitLevel:I


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v6, 0x14

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/autonavi/ae/route/model/GeoPoint;->LatLongToPixels(DDI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/route/model/GeoPoint;->x:I

    iput p2, p0, Lcom/autonavi/ae/route/model/GeoPoint;->y:I

    return-void
.end method

.method private Clip(DDD)D
    .locals 3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private LatLongToPixels(DDI)V
    .locals 15

    const-wide v4, -0x3faabcba4e5ab7faL    # -85.0511287798

    const-wide v6, 0x40554345b1a54806L    # 85.0511287798

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/ae/route/model/GeoPoint;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v8, v0, v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/ae/route/model/GeoPoint;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x414854a600000000L    # 3189068.0

    mul-double v8, v4, v2

    const-wide/16 v2, 0x100

    shl-long v10, v2, p5

    const-wide v2, 0x41831bf8457c1093L    # 4.007501668557849E7

    long-to-double v4, v10

    div-double v12, v2, v4

    const-wide v2, 0x41731bf8457c1093L    # 2.0037508342789244E7

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x1

    sub-long v0, v10, v0

    long-to-double v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/ae/route/model/GeoPoint;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/autonavi/ae/route/model/GeoPoint;->x:I

    const-wide v0, 0x41731bf8457c1093L    # 2.0037508342789244E7

    sub-double/2addr v0, v8

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x1

    sub-long v0, v10, v0

    long-to-double v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/ae/route/model/GeoPoint;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/autonavi/ae/route/model/GeoPoint;->y:I

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 8

    const-wide v4, 0x41731bf8457c1093L    # 2.0037508342789244E7

    const-wide v0, 0x3fc31bf8457c1093L    # 0.14929107086948487

    iget v2, p0, Lcom/autonavi/ae/route/model/GeoPoint;->x:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    sub-double/2addr v2, v4

    iget v2, p0, Lcom/autonavi/ae/route/model/GeoPoint;->y:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    neg-double v0, v0

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 8

    const-wide v6, 0x41731bf8457c1093L    # 2.0037508342789244E7

    const-wide v0, 0x3fc31bf8457c1093L    # 0.14929107086948487

    iget v2, p0, Lcom/autonavi/ae/route/model/GeoPoint;->x:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    sub-double/2addr v2, v6

    iget v4, p0, Lcom/autonavi/ae/route/model/GeoPoint;->y:I

    int-to-double v4, v4

    mul-double/2addr v0, v4

    sub-double v0, v6, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    div-double v0, v2, v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/route/model/GeoPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/route/model/GeoPoint;->y:I

    return v0
.end method

.method public setLonLat(DD)V
    .locals 7

    const/16 v6, 0x14

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/autonavi/ae/route/model/GeoPoint;->LatLongToPixels(DDI)V

    return-void
.end method
