.class Lcom/car/systemfunc/NaviHudActivity$2;
.super Landroid/os/Handler;
.source "NaviHudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/NaviHudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/NaviHudActivity;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/NaviHudActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/NaviHudActivity$2;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x65

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity$2;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    invoke-virtual {v0}, Lcom/car/systemfunc/NaviHudActivity;->setFullscreen()V

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/car/systemfunc/NaviHudActivity$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
