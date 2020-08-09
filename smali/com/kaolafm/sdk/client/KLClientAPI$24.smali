.class Lcom/kaolafm/sdk/client/KLClientAPI$24;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$800(Lcom/kaolafm/sdk/client/KLClientAPI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$100(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/AppLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$24;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$100(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/AppLifecycleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/AppLifecycleListener;->onAppLaunch()V

    :cond_1
    return-void
.end method
