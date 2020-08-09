.class public Lcom/amap/api/col/ct;
.super Ljava/lang/Object;
.source "Ae8Utils.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    const-string v0, "http://restapi.amap.com"

    sput-object v0, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/amap/api/col/gn;
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request host=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/ct$1;

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/amap/api/col/ct$1;-><init>(Landroid/content/Context;Lcom/amap/api/col/eo;[B)V

    invoke-static {}, Lcom/amap/api/col/gk;->b()Lcom/amap/api/col/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/gk;->c(Lcom/amap/api/col/gl;)Lcom/amap/api/col/gn;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v3/ae8/driving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/col/ee; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/col/ee;->printStackTrace()V

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    sget-object v3, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/ew;->a(Lcom/amap/api/col/eo;Ljava/lang/String;Lcom/amap/api/col/ee;)V

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v3/ae8/traffic/show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v3/ae8/traffic/broadcast/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v3/ae8/intersection/enlarged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/col/ee; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a([Lcom/autonavi/ae/route/model/RoutePoi;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autonavi/ae/route/model/RoutePoi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    new-instance v3, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v4, v2, Lcom/autonavi/ae/route/model/RoutePoi;->latitude:D

    iget-wide v6, v2, Lcom/autonavi/ae/route/model/RoutePoi;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(ILjava/lang/String;[B)[B
    .locals 3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    int-to-byte v0, p0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, p2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)[Lcom/autonavi/ae/route/model/RoutePoi;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)[",
            "Lcom/autonavi/ae/route/model/RoutePoi;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/autonavi/ae/route/model/RoutePoi;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v3, Lcom/autonavi/ae/route/model/RoutePoi;

    invoke-direct {v3}, Lcom/autonavi/ae/route/model/RoutePoi;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/autonavi/ae/route/model/RoutePoi;->naviLat:D

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/autonavi/ae/route/model/RoutePoi;->naviLon:D

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/autonavi/ae/route/model/RoutePoi;->latitude:D

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/autonavi/ae/route/model/RoutePoi;->longitude:D

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
