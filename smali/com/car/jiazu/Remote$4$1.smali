.class Lcom/car/jiazu/Remote$4$1;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/jiazu/Remote$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/jiazu/Remote$4;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote$4;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$4$1;->this$1:Lcom/car/jiazu/Remote$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/jiazu/Remote$4$1;->this$1:Lcom/car/jiazu/Remote$4;

    iget-object v0, v0, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    iget-object v1, p0, Lcom/car/jiazu/Remote$4$1;->this$1:Lcom/car/jiazu/Remote$4;

    iget-object v1, v1, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$800(Lcom/car/jiazu/Remote;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/car/jiazu/Remote;->StartScan(J)Z

    return-void
.end method
