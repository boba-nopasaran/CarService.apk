.class Lcom/car/ServiceApplication$2;
.super Landroid/os/Handler;
.source "ServiceApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ServiceApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ServiceApplication;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, -0x1

    const/16 v4, 0x64

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    const-string v1, "ro.voice.localmusic"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/car/ServiceApplication;->access$000()Lcom/car/ServiceApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/car/speech/SpeechLocalMusic;->getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechLocalMusic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/speech/SpeechLocalMusic;->init()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/car/ServiceApplication;->access$000()Lcom/car/ServiceApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/car/speech/SpeechWakeupWord;->getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechWakeupWord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/speech/SpeechWakeupWord;->init()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    iget-object v1, v1, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    iget-object v1, v1, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getImei()V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sys_gaode_socol"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/car/ServiceApplication$2;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/car/common/ProviderUtils;->setEnableSocol(Landroid/content/Context;Z)V

    goto :goto_0
.end method
