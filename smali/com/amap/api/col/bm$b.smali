.class Lcom/amap/api/col/bm$b;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/bm$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amap/api/col/bm$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/bm$a;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/amap/api/col/bm$a;->a:Lcom/amap/api/col/bm;

    iget-object v0, v0, Lcom/amap/api/col/bm$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/amap/api/col/bm;->c(Lcom/amap/api/col/bm;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/amap/api/col/bm$a;->a:Lcom/amap/api/col/bm;

    iget-object v0, v0, Lcom/amap/api/col/bm$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/bm;->b([Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
