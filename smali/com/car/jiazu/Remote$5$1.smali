.class Lcom/car/jiazu/Remote$5$1;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/jiazu/Remote$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/jiazu/Remote$5;

.field final synthetic val$device:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote$5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$5$1;->this$1:Lcom/car/jiazu/Remote$5;

    iput-object p2, p0, Lcom/car/jiazu/Remote$5$1;->val$device:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/Remote$5$1;->this$1:Lcom/car/jiazu/Remote$5;

    iget-object v0, v0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote$5$1;->val$device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->discoverServices(Ljava/lang/String;)Z

    return-void
.end method
