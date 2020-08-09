.class Lcom/car/systemfunc/PowerDialog$2;
.super Ljava/lang/Object;
.source "PowerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerDialog;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerDialog$2;->this$0:Lcom/car/systemfunc/PowerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v1, "CarSvc_PowerDialog"

    const-string v2, "broadcast shutdown intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.carservice.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog$2;->this$0:Lcom/car/systemfunc/PowerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/PowerDialog;->access$000(Lcom/car/systemfunc/PowerDialog;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog$2;->this$0:Lcom/car/systemfunc/PowerDialog;

    invoke-virtual {v1}, Lcom/car/systemfunc/PowerDialog;->dismiss()V

    return-void
.end method
