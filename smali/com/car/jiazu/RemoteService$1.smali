.class Lcom/car/jiazu/RemoteService$1;
.super Landroid/database/ContentObserver;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/RemoteService;


# direct methods
.method constructor <init>(Lcom/car/jiazu/RemoteService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/RemoteService$1;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$1;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v1}, Lcom/car/jiazu/RemoteService;->access$000(Lcom/car/jiazu/RemoteService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$1;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v1}, Lcom/car/jiazu/RemoteService;->RemoteEnable()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/jiazu/RemoteService$1;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v1}, Lcom/car/jiazu/RemoteService;->RemoteDisable()V

    goto :goto_0
.end method
