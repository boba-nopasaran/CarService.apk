.class Lcom/car/speech/SpeechManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SpeechManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/SpeechManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/SpeechManager;


# direct methods
.method constructor <init>(Lcom/car/speech/SpeechManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/SpeechManager$1;->this$0:Lcom/car/speech/SpeechManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.car.set.navi.app"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "navi_app_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->setDefaultMap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
