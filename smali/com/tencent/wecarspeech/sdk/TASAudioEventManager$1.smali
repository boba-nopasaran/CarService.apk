.class Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$1;
.super Ljava/lang/Object;
.source "TASAudioEventManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    const-string v0, "tas.focus.audio.event"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;

    invoke-static {v0, p1, p3}, Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;->access$000(Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;Ljava/lang/String;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 0

    return-void
.end method
