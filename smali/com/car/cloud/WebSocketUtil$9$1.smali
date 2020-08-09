.class Lcom/car/cloud/WebSocketUtil$9$1;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/WebSocketUtil$9;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil$9;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/car/cloud/WebSocketUtil$9$1$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/car/cloud/WebSocketUtil$9$1$1;-><init>(Lcom/car/cloud/WebSocketUtil$9$1;Lorg/json/JSONObject;I[B)V

    invoke-virtual {v0}, Lcom/car/cloud/WebSocketUtil$9$1$1;->start()V

    :cond_0
    return-void
.end method
