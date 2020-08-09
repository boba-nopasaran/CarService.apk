.class Lcom/car/cloud/WebSocketUtil$14;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$binary:[B

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

.field final synthetic val$jso:Lorg/json/JSONObject;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$14;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$14;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    iput p3, p0, Lcom/car/cloud/WebSocketUtil$14;->val$progress:I

    iput-object p4, p0, Lcom/car/cloud/WebSocketUtil$14;->val$jso:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/car/cloud/WebSocketUtil$14;->val$binary:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$14;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    iget v1, p0, Lcom/car/cloud/WebSocketUtil$14;->val$progress:I

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$14;->val$jso:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$14;->val$binary:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;->cloudReply(ILorg/json/JSONObject;[B)V

    return-void
.end method
