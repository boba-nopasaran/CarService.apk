.class Lcom/car/systemfunc/SystemEventHandler$2$3;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SystemEventHandler$2;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$2$3;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$3;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v1, v1, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v1}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/CarUtil;->enableGpsApps(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.showmaplist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$3;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v1, v1, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v1}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
