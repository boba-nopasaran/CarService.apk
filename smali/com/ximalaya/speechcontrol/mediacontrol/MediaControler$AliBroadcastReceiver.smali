.class public Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AliBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method public constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "MediaControler"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
