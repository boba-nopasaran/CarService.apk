.class Lcom/car/systemfunc/SystemEventHandler$5;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Lcom/car/systemfunc/CollisionSensor$onCollisionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SystemEventHandler;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollision()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/SystemEventHandler$5$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/SystemEventHandler$5$1;-><init>(Lcom/car/systemfunc/SystemEventHandler$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
