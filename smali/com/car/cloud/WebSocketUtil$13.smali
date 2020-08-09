.class Lcom/car/cloud/WebSocketUtil$13;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->doGetMsg(Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$MsgListener;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$13;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$13;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    iput-object p3, p0, Lcom/car/cloud/WebSocketUtil$13;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$13;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$13;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil$MsgListener;->onMsgNotify(Ljava/util/List;)V

    return-void
.end method
