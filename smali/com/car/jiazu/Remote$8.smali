.class Lcom/car/jiazu/Remote$8;
.super Landroid/content/BroadcastReceiver;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/Remote;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    const-string v12, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, [B

    move-object v11, v12

    check-cast v11, [B

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    const-string v12, "0000ff11-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x1

    aget-byte v13, v11, v13

    or-int v4, v12, v13

    const-string v12, "ro.btkb.special"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.car.keyevent"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "key"

    invoke-virtual {v3, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v10, 0x43

    const v12, 0xa108

    if-ne v4, v12, :cond_4

    const/16 v10, 0x52

    :cond_3
    :goto_1
    const-string v12, "CarSvc_mybt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/car/jiazu/KeysClass$Keys;

    invoke-direct {v6}, Lcom/car/jiazu/KeysClass$Keys;-><init>()V

    iget-object v12, v6, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    new-instance v13, Lcom/car/jiazu/KeysClass$KeyVal;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v10}, Lcom/car/jiazu/KeysClass$KeyVal;-><init>(II)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    iget v13, v12, Lcom/car/jiazu/Remote;->mKeyOrder:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/car/jiazu/Remote;->mKeyOrder:I

    iput v13, v6, Lcom/car/jiazu/KeysClass$Keys;->order:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v12

    invoke-interface {v12, v6}, Lcom/car/jiazu/Remote$RemoteListener;->onKeyReceiver(Lcom/car/jiazu/KeysClass$Keys;)V

    goto :goto_0

    :cond_4
    const v12, 0xa110

    if-ne v4, v12, :cond_5

    const/16 v10, 0x4c

    goto :goto_1

    :cond_5
    const v12, 0xa101

    if-ne v4, v12, :cond_6

    const/16 v10, 0x42

    goto :goto_1

    :cond_6
    const v12, 0xa104

    if-ne v4, v12, :cond_8

    const-string v12, "ro.btkb.newjiazu"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/16 v10, 0x56

    goto :goto_1

    :cond_7
    const/16 v10, 0x43

    goto :goto_1

    :cond_8
    const v12, 0xa102

    if-ne v4, v12, :cond_a

    const-string v12, "ro.btkb.newjiazu"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/16 v10, 0x43

    goto :goto_1

    :cond_9
    const/16 v10, 0x56

    goto :goto_1

    :cond_a
    const v12, 0xa300

    if-le v4, v12, :cond_3

    const-string v12, "CarSvc_mybt"

    const-string v13, "long pressing not supported now"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v12, "0000fd11-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    aget-byte v12, v11, v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$600(Lcom/car/jiazu/Remote;)I

    move-result v12

    const/16 v13, 0x12

    if-ne v12, v13, :cond_c

    const/16 v12, 0x14

    new-array v5, v12, [B

    const/4 v12, 0x1

    const/4 v13, 0x0

    array-length v14, v11

    add-int/lit8 v14, v14, -0x1

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v2, v5}, Lcom/car/jiazu/KeysClass;->DeCrypt(Ljava/lang/String;[B)Lcom/car/jiazu/KeysClass$Keys;

    move-result-object v6

    :goto_2
    const-string v12, "CarSvc_mybt"

    const-string v13, "Remote Notify"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v12

    if-eqz v12, :cond_0

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const v12, 0x7fffffff

    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    iput v12, v6, Lcom/car/jiazu/KeysClass$Keys;->order:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v12

    invoke-interface {v12, v6}, Lcom/car/jiazu/Remote$RemoteListener;->onKeyReceiver(Lcom/car/jiazu/KeysClass$Keys;)V

    goto/16 :goto_0

    :cond_c
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    new-array v5, v12, [B

    const/4 v12, 0x1

    const/4 v13, 0x0

    array-length v14, v11

    add-int/lit8 v14, v14, -0x1

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$600(Lcom/car/jiazu/Remote;)I

    move-result v12

    invoke-static {v5, v12}, Lcom/car/jiazu/KeysClass;->DeCrypt([BI)Lcom/car/jiazu/KeysClass$Keys;

    move-result-object v6

    goto :goto_2

    :cond_d
    const-string v12, "00002a04-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    array-length v12, v11

    const/16 v13, 0x9

    if-lt v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    new-instance v13, Lcom/car/jiazu/Remote$ConnPara;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {v13, v14}, Lcom/car/jiazu/Remote$ConnPara;-><init>(Lcom/car/jiazu/Remote;)V

    invoke-static {v12, v13}, Lcom/car/jiazu/Remote;->access$1002(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$ConnPara;)Lcom/car/jiazu/Remote$ConnPara;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    const/4 v13, 0x2

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    iget v13, v12, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    const/4 v14, 0x3

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    mul-int/lit16 v14, v14, 0x100

    int-to-float v14, v14

    add-float/2addr v13, v14

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    iget v13, v12, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    float-to-double v14, v13

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    mul-double v14, v14, v16

    double-to-float v13, v14

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    const/4 v13, 0x4

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    iget v13, v12, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    const/4 v14, 0x5

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    mul-int/lit16 v14, v14, 0x100

    add-int/2addr v13, v14

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    const/4 v13, 0x6

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    iget v13, v12, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    const/4 v14, 0x7

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    mul-int/lit16 v14, v14, 0x100

    add-int/2addr v13, v14

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v12

    iget v13, v12, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    mul-int/lit8 v13, v13, 0xa

    iput v13, v12, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v12

    if-eqz v12, :cond_0

    const/16 v12, 0x8

    aget-byte v12, v11, v12

    and-int/lit16 v8, v12, 0xff

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v12}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/jiazu/Remote$8;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v13}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Lcom/car/jiazu/Remote$RemoteListener;->onConnUpdata(Lcom/car/jiazu/Remote$ConnPara;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
