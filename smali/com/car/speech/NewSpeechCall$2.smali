.class Lcom/car/speech/NewSpeechCall$2;
.super Landroid/content/BroadcastReceiver;
.source "NewSpeechCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/NewSpeechCall;->reportBTState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/NewSpeechCall;


# direct methods
.method constructor <init>(Lcom/car/speech/NewSpeechCall;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/NewSpeechCall$2;->this$0:Lcom/car/speech/NewSpeechCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
