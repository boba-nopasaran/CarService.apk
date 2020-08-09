.class Lcom/car/cloud/WebSocketUtil$10;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->sendPhoto2User(Ljava/lang/String;Ljava/lang/String;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$relayid:J

.field final synthetic val$unionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JLjava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$10;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$10;->val$unionId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/WebSocketUtil$10;->val$relayid:J

    iput-object p5, p0, Lcom/car/cloud/WebSocketUtil$10;->val$path:Ljava/lang/String;

    iput-object p6, p0, Lcom/car/cloud/WebSocketUtil$10;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "peer"

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil$10;->val$unionId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cmd"

    const-string v7, "tpe"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "relayid"

    iget-wide v8, p0, Lcom/car/cloud/WebSocketUtil$10;->val$relayid:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil$10;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil$10;->val$path:Ljava/lang/String;

    const/16 v8, 0x258

    const/16 v9, 0x1e0

    invoke-static {v6, v7, v8, v9}, Lcom/car/cloud/WebSocketUtil;->access$1100(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v6, "CarSvc_WebSocketUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmap ok:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/WebSocketUtil$10;->val$path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v6, "cmd"

    const-string v7, "tpd"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "size"

    array-length v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil$10;->val$path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil$10;->this$0:Lcom/car/cloud/WebSocketUtil;

    const-string v7, "relay"

    iget-object v8, p0, Lcom/car/cloud/WebSocketUtil$10;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-static {v6, v7, v5, v2, v8}, Lcom/car/cloud/WebSocketUtil;->access$1200(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    :goto_1
    return-void

    :catch_0
    move-exception v4

    const-string v6, "CarSvc_WebSocketUtil"

    const-string v7, "doSendMedia err:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "CarSvc_WebSocketUtil"

    const-string v7, "sendPhoto2User err:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
