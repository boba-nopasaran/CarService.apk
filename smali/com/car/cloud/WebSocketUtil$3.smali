.class Lcom/car/cloud/WebSocketUtil$3;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->updateMsgContent(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$rowId:J


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$3;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-wide p2, p0, Lcom/car/cloud/WebSocketUtil$3;->val$rowId:J

    iput-object p4, p0, Lcom/car/cloud/WebSocketUtil$3;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$3;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v0}, Lcom/car/cloud/WebSocketUtil;->access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$3;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1}, Lcom/car/cloud/WebSocketUtil;->access$500(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/car/cloud/WebSocketUtil$3;->val$rowId:J

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$3;->val$content:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/car/cloud/CloudMsgProviderUtils;->updateMsgContent(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;)I

    return-void
.end method
