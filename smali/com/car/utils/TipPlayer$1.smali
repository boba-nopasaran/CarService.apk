.class Lcom/car/utils/TipPlayer$1;
.super Landroid/os/Handler;
.source "TipPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/utils/TipPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/utils/TipPlayer;


# direct methods
.method constructor <init>(Lcom/car/utils/TipPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/car/utils/TipPlayer$1;->this$0:Lcom/car/utils/TipPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/car/utils/TipPlayer$1;->this$0:Lcom/car/utils/TipPlayer;

    invoke-static {v2}, Lcom/car/utils/TipPlayer;->access$000(Lcom/car/utils/TipPlayer;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v2, "com.iflytek.speechcloud"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/car/utils/TipPlayer$1;->this$0:Lcom/car/utils/TipPlayer;

    invoke-virtual {v2}, Lcom/car/utils/TipPlayer;->reInit()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CarSvc_TipPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
