.class Lcom/car/tencent/TencentTts$1;
.super Landroid/os/Handler;
.source "TencentTts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/tencent/TencentTts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/tencent/TencentTts;


# direct methods
.method constructor <init>(Lcom/car/tencent/TencentTts;)V
    .locals 0

    iput-object p1, p0, Lcom/car/tencent/TencentTts$1;->this$0:Lcom/car/tencent/TencentTts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/tencent/TencentTts$1;->this$0:Lcom/car/tencent/TencentTts;

    const-string v1, ""

    iput-object v1, v0, Lcom/car/tencent/TencentTts;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/tencent/TencentTts$1;->this$0:Lcom/car/tencent/TencentTts;

    iget-object v0, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
