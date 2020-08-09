.class Lcom/car/systemfunc/CollisionSensor$2;
.super Landroid/database/ContentObserver;
.source "CollisionSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/CollisionSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/CollisionSensor;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/CollisionSensor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    invoke-static {v2}, Lcom/car/systemfunc/CollisionSensor;->access$000(Lcom/car/systemfunc/CollisionSensor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/car/systemfunc/CollisionSensor;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    iget v2, v2, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    iput v0, v2, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    iget v2, v2, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    invoke-static {v2}, Lcom/car/systemfunc/CollisionSensor;->changeThreshold(I)V

    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    iget-object v3, p0, Lcom/car/systemfunc/CollisionSensor$2;->this$0:Lcom/car/systemfunc/CollisionSensor;

    invoke-static {v3}, Lcom/car/systemfunc/CollisionSensor;->access$000(Lcom/car/systemfunc/CollisionSensor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/car/systemfunc/CollisionSensor;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, v2, Lcom/car/systemfunc/CollisionSensor;->mVideoLockEnable:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
