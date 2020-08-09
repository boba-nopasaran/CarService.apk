.class Lcom/car/systemfunc/SettingsNotifier$1$1;
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

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v1}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/car/systemfunc/SettingsNotifier;->getVolumeSize(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->access$300(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mDVRSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->access$300(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mLockSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->access$300(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mCaptureSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-virtual {v1}, Lcom/car/systemfunc/SettingsNotifier;->reportSdcardChange()V

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mTotalSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mAvailableSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mDVRSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mLockSize:J

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier$1$1;->this$1:Lcom/car/systemfunc/SettingsNotifier$1;

    iget-object v1, v1, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-wide v2, v1, Lcom/car/systemfunc/SettingsNotifier;->mCaptureSize:J

    goto :goto_0
.end method
