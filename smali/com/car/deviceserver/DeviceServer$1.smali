.class Lcom/car/deviceserver/DeviceServer$1;
.super Ljava/lang/Object;
.source "DeviceServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/deviceserver/DeviceServer;->onReceived(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/deviceserver/DeviceServer;

.field final synthetic val$msg:Lcom/car/deviceserver/JsonCodec$BaseMsg;


# direct methods
.method constructor <init>(Lcom/car/deviceserver/DeviceServer;Lcom/car/deviceserver/JsonCodec$BaseMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/car/deviceserver/DeviceServer$1;->this$0:Lcom/car/deviceserver/DeviceServer;

    iput-object p2, p0, Lcom/car/deviceserver/DeviceServer$1;->val$msg:Lcom/car/deviceserver/JsonCodec$BaseMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/car/deviceserver/DeviceServer$1;->this$0:Lcom/car/deviceserver/DeviceServer;

    invoke-static {v2}, Lcom/car/deviceserver/DeviceServer;->access$000(Lcom/car/deviceserver/DeviceServer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/deviceserver/DeviceServer$Listener;

    iget-object v2, p0, Lcom/car/deviceserver/DeviceServer$1;->val$msg:Lcom/car/deviceserver/JsonCodec$BaseMsg;

    invoke-interface {v0, v2}, Lcom/car/deviceserver/DeviceServer$Listener;->onDevServerJsonMessage(Lcom/car/deviceserver/JsonCodec$BaseMsg;)V

    goto :goto_0

    :cond_0
    return-void
.end method
