.class Lcom/car/systemfunc/SettingsNotifier$1$2;
.super Ljava/lang/Object;
.source "SettingsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SettingsNotifier$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SettingsNotifier$1;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SettingsNotifier$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-static {v0}, Lcom/car/systemfunc/SettingsNotifier;->access$600(Lcom/car/systemfunc/SettingsNotifier;)V

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v0}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-virtual {v0}, Lcom/car/systemfunc/SettingsNotifier;->reportMobile()V

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$1$2;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/SettingsNotifier$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
