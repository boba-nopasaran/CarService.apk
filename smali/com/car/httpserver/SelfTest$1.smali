.class Lcom/car/httpserver/SelfTest$1;
.super Landroid/os/Handler;
.source "SelfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/SelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/SelfTest;


# direct methods
.method constructor <init>(Lcom/car/httpserver/SelfTest;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v1}, Lcom/car/httpserver/SelfTest;->access$000(Lcom/car/httpserver/SelfTest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v1}, Lcom/car/httpserver/SelfTest;->access$000(Lcom/car/httpserver/SelfTest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    iget-object v1, v1, Lcom/car/httpserver/SelfTest;->mLedColors:[Ljava/lang/String;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    iget v3, v2, Lcom/car/httpserver/SelfTest;->mLedIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/car/httpserver/SelfTest;->mLedIndex:I

    rem-int/lit8 v2, v3, 0x4

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    const-string v2, "/sys/power/led_set_control"

    invoke-virtual {v1, v2, v0}, Lcom/car/httpserver/SelfTest;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$1;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v1}, Lcom/car/httpserver/SelfTest;->access$000(Lcom/car/httpserver/SelfTest;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
