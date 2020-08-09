.class Lcom/car/voice/cmd/Dial$2;
.super Landroid/content/BroadcastReceiver;
.source "Dial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/cmd/Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/cmd/Dial;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Dial;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Dial$2;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/cmd/Dial$2;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-virtual {v0, p2}, Lcom/car/voice/cmd/Dial;->getBTStatus(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
