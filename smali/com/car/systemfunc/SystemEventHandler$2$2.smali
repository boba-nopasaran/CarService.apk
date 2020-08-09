.class Lcom/car/systemfunc/SystemEventHandler$2$2;
.super Landroid/app/PackageInstallObserver;
.source "SystemEventHandler.java"


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

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$2;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iput-object p2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v2, v2, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v2, v2, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    const-string v2, "CarSvc_SystemEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onPackageInstalled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$className:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$className:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
