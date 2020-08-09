.class Lcom/car/cloud/WebSocketUtil$6;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->getAllMsglist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$6;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$6;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v0}, Lcom/car/cloud/WebSocketUtil;->access$700(Lcom/car/cloud/WebSocketUtil;)V

    return-void
.end method
