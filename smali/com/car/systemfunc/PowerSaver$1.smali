.class Lcom/car/systemfunc/PowerSaver$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerSaver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerSaver$1;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver$1;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v0, v2}, Lcom/car/systemfunc/PowerSaver;->access$002(Lcom/car/systemfunc/PowerSaver;I)I

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver$1;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v0, v2}, Lcom/car/systemfunc/PowerSaver;->access$102(Lcom/car/systemfunc/PowerSaver;I)I

    :cond_0
    return-void
.end method
