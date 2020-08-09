.class Lcom/car/systemfunc/PowerConnectionReceiver$15;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->initRebootDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$15;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput-object p2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$15;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "CarSvc_PowerConnectionReceiver"

    const-string v1, "onClicked to call Reboot!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$15;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$1200(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    return-void
.end method
