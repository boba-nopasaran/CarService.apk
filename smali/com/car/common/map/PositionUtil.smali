.class public Lcom/car/common/map/PositionUtil;
.super Ljava/lang/Object;
.source "PositionUtil.java"


# static fields
.field public static final BAIDU_LBS_TYPE:Ljava/lang/String; = "bd09ll"

.field public static a:D

.field public static ee:D

.field public static pi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/car/common/map/PositionUtil;->pi:D

    const-wide v0, 0x415854c140000000L    # 6378245.0

    sput-wide v0, Lcom/car/common/map/PositionUtil;->a:D

    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    sput-wide v0, Lcom/car/common/map/PositionUtil;->ee:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bd09_To_Gcj02(DD)Lcom/car/common/map/Gps;
    .locals 18

    const-wide v12, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v6, p2, v12

    const-wide v12, 0x3f789374bc6a7efaL    # 0.006

    sub-double v8, p0, v12

    mul-double v12, v6, v6

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v16, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v10, v12, v14

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v16, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v4, v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v2, v10, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v0, v10, v12

    new-instance v12, Lcom/car/common/map/Gps;

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/car/common/map/Gps;-><init>(DD)V

    return-object v12
.end method

.method public static bd09_To_Gps84(DD)Lcom/car/common/map/Gps;
    .locals 6

    invoke-static {p0, p1, p2, p3}, Lcom/car/common/map/PositionUtil;->bd09_To_Gcj02(DD)Lcom/car/common/map/Gps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/car/common/map/PositionUtil;->gcj_To_Gps84(DD)Lcom/car/common/map/Gps;

    move-result-object v1

    return-object v1
.end method

.method public static gcj02_To_Bd09(DD)Lcom/car/common/map/Gps;
    .locals 18

    move-wide/from16 v6, p2

    move-wide/from16 v8, p0

    mul-double v12, v6, v6

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v16, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v10, v12, v14

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v16, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v4, v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide v14, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double v2, v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide v14, 0x3f789374bc6a7efaL    # 0.006

    add-double v0, v12, v14

    new-instance v12, Lcom/car/common/map/Gps;

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/car/common/map/Gps;-><init>(DD)V

    return-object v12
.end method

.method public static gcj_To_Gps84(DD)Lcom/car/common/map/Gps;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, p2, p3}, Lcom/car/common/map/PositionUtil;->transform(DD)Lcom/car/common/map/Gps;

    move-result-object v0

    mul-double v6, p2, v10

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v8

    sub-double v4, v6, v8

    mul-double v6, p0, v10

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v8

    sub-double v2, v6, v8

    new-instance v1, Lcom/car/common/map/Gps;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/car/common/map/Gps;-><init>(DD)V

    return-object v1
.end method

.method public static gps84_To_Gcj02(DD)Lcom/car/common/map/Gps;
    .locals 22

    invoke-static/range {p0 .. p3}, Lcom/car/common/map/PositionUtil;->outOfChina(DD)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    const-wide v14, 0x405a400000000000L    # 105.0

    sub-double v14, p2, v14

    const-wide v16, 0x4041800000000000L    # 35.0

    sub-double v16, p0, v16

    invoke-static/range {v14 .. v17}, Lcom/car/common/map/PositionUtil;->transformLat(DD)D

    move-result-wide v0

    const-wide v14, 0x405a400000000000L    # 105.0

    sub-double v14, p2, v14

    const-wide v16, 0x4041800000000000L    # 35.0

    sub-double v16, p0, v16

    invoke-static/range {v14 .. v17}, Lcom/car/common/map/PositionUtil;->transformLon(DD)D

    move-result-wide v2

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double v14, p0, v14

    sget-wide v16, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v10, v14, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sget-wide v16, Lcom/car/common/map/PositionUtil;->ee:D

    mul-double v16, v16, v4

    mul-double v16, v16, v4

    sub-double v4, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v14, v0

    sget-wide v16, Lcom/car/common/map/PositionUtil;->a:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sget-wide v20, Lcom/car/common/map/PositionUtil;->ee:D

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    mul-double v18, v4, v12

    div-double v16, v16, v18

    sget-wide v18, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v18

    div-double v0, v14, v16

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v14, v2

    sget-wide v16, Lcom/car/common/map/PositionUtil;->a:D

    div-double v16, v16, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sget-wide v18, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v16, v18

    div-double v2, v14, v16

    add-double v6, p0, v0

    add-double v8, p2, v2

    new-instance v14, Lcom/car/common/map/Gps;

    invoke-direct {v14, v6, v7, v8, v9}, Lcom/car/common/map/Gps;-><init>(DD)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    new-instance v3, Lcom/car/common/map/Gps;

    const-wide v6, 0x403f6d490e66cb10L    # 31.426896

    const-wide v8, 0x405ddfc0d6f544bbL    # 119.496145

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/car/common/map/Gps;-><init>(DD)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/car/common/map/PositionUtil;->gps84_To_Gcj02(DD)Lcom/car/common/map/Gps;

    move-result-object v1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gcj :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/car/common/map/PositionUtil;->gcj_To_Gps84(DD)Lcom/car/common/map/Gps;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "star:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/car/common/map/PositionUtil;->gcj02_To_Bd09(DD)Lcom/car/common/map/Gps;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bd  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/car/common/map/Gps;->getWgLon()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/car/common/map/PositionUtil;->bd09_To_Gcj02(DD)Lcom/car/common/map/Gps;

    move-result-object v2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gcj :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static outOfChina(DD)Z
    .locals 4

    const/4 v0, 0x1

    const-wide v2, 0x4052004189374bc7L    # 72.004

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v1, p2, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transform(DD)Lcom/car/common/map/Gps;
    .locals 28

    invoke-static/range {p0 .. p3}, Lcom/car/common/map/PositionUtil;->outOfChina(DD)Z

    move-result v20

    if-eqz v20, :cond_0

    new-instance v20, Lcom/car/common/map/Gps;

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/car/common/map/Gps;-><init>(DD)V

    :goto_0
    return-object v20

    :cond_0
    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/car/common/map/PositionUtil;->transformLat(DD)D

    move-result-wide v6

    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/car/common/map/PositionUtil;->transformLon(DD)D

    move-result-wide v8

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v20, p0, v20

    sget-wide v22, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v16, v20, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-wide v22, Lcom/car/common/map/PositionUtil;->ee:D

    mul-double v22, v22, v10

    mul-double v22, v22, v10

    sub-double v10, v20, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v6

    sget-wide v22, Lcom/car/common/map/PositionUtil;->a:D

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sget-wide v26, Lcom/car/common/map/PositionUtil;->ee:D

    sub-double v24, v24, v26

    mul-double v22, v22, v24

    mul-double v24, v10, v18

    div-double v22, v22, v24

    sget-wide v24, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v22, v22, v24

    div-double v6, v20, v22

    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v8

    sget-wide v22, Lcom/car/common/map/PositionUtil;->a:D

    div-double v22, v22, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sget-wide v24, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double v22, v22, v24

    div-double v8, v20, v22

    add-double v12, p0, v6

    add-double v14, p2, v8

    new-instance v20, Lcom/car/common/map/Gps;

    move-object/from16 v0, v20

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/car/common/map/Gps;-><init>(DD)V

    goto :goto_0
.end method

.method public static transformLat(DD)D
    .locals 10

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, p2

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    sget-wide v8, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    sget-wide v6, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    sget-wide v6, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transformLon(DD)D
    .locals 10

    const-wide v2, 0x4072c00000000000L    # 300.0

    add-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    sget-wide v6, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/car/common/map/PositionUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
