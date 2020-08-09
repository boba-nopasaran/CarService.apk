.class Lcom/car/speech/NewSpeechCall$1$1;
.super Ljava/lang/Object;
.source "NewSpeechCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/NewSpeechCall$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/speech/NewSpeechCall$1;


# direct methods
.method constructor <init>(Lcom/car/speech/NewSpeechCall$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/NewSpeechCall$1$1;->this$1:Lcom/car/speech/NewSpeechCall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/speech/NewSpeechCall$1$1;->this$1:Lcom/car/speech/NewSpeechCall$1;

    iget-object v1, v1, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    iget-object v2, p0, Lcom/car/speech/NewSpeechCall$1$1;->this$1:Lcom/car/speech/NewSpeechCall$1;

    iget-object v2, v2, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    iget-object v2, v2, Lcom/car/speech/NewSpeechCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/car/speech/NewSpeechCall;->readContactsFromDatabase(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->cleanContacts()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->syncContacts(Ljava/util/List;)V

    return-void
.end method
