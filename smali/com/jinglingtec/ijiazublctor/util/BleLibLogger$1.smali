.class final Lcom/jinglingtec/ijiazublctor/util/BleLibLogger$1;
.super Ljava/lang/Object;
.source "BleLibLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->startLoggingSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final self:Ljava/lang/Runnable;

.field final synthetic val$logHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger$1;->val$logHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger$1;->self:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger$1;->val$logHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger$1;->self:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->access$000()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->access$002(Ljava/util/List;)Ljava/util/List;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->access$100(Ljava/util/List;)V

    return-void
.end method
