.class public Lcom/car/systemfunc/NaviManager;
.super Landroid/content/BroadcastReceiver;
.source "NaviManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CarSvc_NaviManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.navi.go"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.car.navi.go"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lat"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v3, "lng"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v3, "addr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "coordtype"

    const/4 v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-nez v3, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v16, :cond_4

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-nez v3, :cond_3

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-eqz v3, :cond_1

    :cond_3
    sget-object v14, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    move-object/from16 v9, p1

    move-wide v10, v4

    move-wide v12, v6

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-nez v3, :cond_5

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-eqz v3, :cond_1

    :cond_5
    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-wide v10, v4

    move-wide v12, v6

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V

    goto :goto_0
.end method
