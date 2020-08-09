.class Lcom/car/systemfunc/SystemEventHandler$2$4;
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

.field final synthetic val$packageString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iput-object p2, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->val$packageString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->val$packageString:Ljava/lang/String;

    const-string v1, "com.car.gpstest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v0}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.autonavi.amapautolite"

    invoke-static {v0, v1}, Lcom/car/common/CarUtil;->disableOtherMaps(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v0}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$4;->val$packageString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/car/common/CarUtil;->disableOtherMaps(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
