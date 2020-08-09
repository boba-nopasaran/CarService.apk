.class public Lcom/car/speech/SpeechManager;
.super Ljava/lang/Object;
.source "SpeechManager.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/car/speech/SpeechManager$1;

    invoke-direct {v0, p0}, Lcom/car/speech/SpeechManager$1;-><init>(Lcom/car/speech/SpeechManager;)V

    iput-object v0, p0, Lcom/car/speech/SpeechManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.set.navi.app"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/SpeechManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
