.class Lcom/car/cloud/WebSocketUtil$2;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->getUnsentMsgList(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$count:I

.field final synthetic val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

.field final synthetic val$other:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$2;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$2;->val$other:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/WebSocketUtil$2;->val$type:Ljava/lang/String;

    iput p4, p0, Lcom/car/cloud/WebSocketUtil$2;->val$count:I

    iput-object p5, p0, Lcom/car/cloud/WebSocketUtil$2;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$2;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$2;->val$other:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$2;->val$type:Ljava/lang/String;

    iget v3, p0, Lcom/car/cloud/WebSocketUtil$2;->val$count:I

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$2;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/car/cloud/WebSocketUtil;->access$400(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V

    return-void
.end method
