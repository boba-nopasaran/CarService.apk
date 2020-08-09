.class Lcom/car/systemfunc/BeidouAgpsManager$3;
.super Ljava/lang/Object;
.source "BeidouAgpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/BeidouAgpsManager;->doFetchDataGmouse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/BeidouAgpsManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/BeidouAgpsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    :try_start_0
    new-instance v21, Ljava/net/Socket;

    invoke-direct/range {v21 .. v21}, Ljava/net/Socket;-><init>()V

    new-instance v23, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->SERVER:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->PORT:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v24, 0x2710

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v23, 0x7530

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    new-instance v18, Ljava/io/PrintWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->AUTH:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->USER:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->PWD:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/car/common/map/MyLocation;->curLatitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/car/common/map/MyLocation;->curLongitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v11, v0, [B

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_0
    if-nez v8, :cond_0

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v13, v11, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    :cond_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    const/16 v14, 0x2710

    const-string v23, "Content-Length: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_1

    const-string v23, "Content-Length: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    add-int/lit8 v24, v9, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "len="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v23, "Content-Type: application/ubx"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_6

    new-array v5, v14, [B

    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_2
    sub-int v23, v14, v19

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v13, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    if-ltz v20, :cond_3

    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "data read = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v19, v19, v20

    move/from16 v0, v19

    if-ne v0, v14, :cond_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/car/systemfunc/BeidouAgpsManager;->doWrite([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/car/systemfunc/BeidouAgpsManager;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/car/systemfunc/BeidouAgpsManager;->backupData2Cache([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    :goto_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    :goto_2
    return-void

    :cond_4
    :try_start_1
    aget-byte v23, v11, v17

    packed-switch v23, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    :goto_3
    :pswitch_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :pswitch_2
    if-nez v6, :cond_5

    const/4 v8, 0x1

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Retry in 30 seconds dues to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/car/systemfunc/BeidouAgpsManager;->usingCacheData()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x65

    const-wide/16 v26, 0x7530

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    :goto_4
    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v24, "Maybe network error and retry in 30 seconds"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/car/systemfunc/BeidouAgpsManager;->usingCacheData()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x65

    const-wide/16 v26, 0x7530

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :catch_1
    move-exception v7

    :try_start_3
    sget-object v23, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    goto :goto_4

    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$3;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    throw v23

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
