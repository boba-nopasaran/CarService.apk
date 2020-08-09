.class Lcom/amap/api/services/a/o$1;
.super Landroid/os/HandlerThread;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/o;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x3

    const-string v1, "run"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "ManifestConfigThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/o;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v3

    const-string v4, "11K;001"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/services/a/ba$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/amap/api/services/a/ba$a;->u:Lcom/amap/api/services/a/ba$a$a;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/amap/api/services/a/p;

    iget-object v4, v0, Lcom/amap/api/services/a/ba$a;->u:Lcom/amap/api/services/a/ba$a$a;

    iget-boolean v4, v4, Lcom/amap/api/services/a/ba$a$a;->b:Z

    iget-object v5, v0, Lcom/amap/api/services/a/ba$a;->u:Lcom/amap/api/services/a/ba$a$a;

    iget-boolean v5, v5, Lcom/amap/api/services/a/ba$a$a;->a:Z

    invoke-direct {v3, v4, v5}, Lcom/amap/api/services/a/p;-><init>(ZZ)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/amap/api/services/a/ba$a;->v:Lcom/amap/api/services/a/ba$a$d;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/amap/api/services/a/ba$a;->v:Lcom/amap/api/services/a/ba$a$d;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/amap/api/services/a/ba$a$d;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/amap/api/services/a/ba$a$d;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/amap/api/services/a/ba$a$d;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    new-instance v0, Lcom/amap/api/services/a/ch;

    invoke-static {}, Lcom/amap/api/services/a/o;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/amap/api/services/a/ch;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ci;Lcom/amap/api/services/a/bh;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/ch;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/o$a;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_4
    :try_start_2
    new-instance v5, Lcom/amap/api/services/a/ci;

    invoke-direct {v5, v4, v3, v0}, Lcom/amap/api/services/a/ci;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/a/ch;

    invoke-static {}, Lcom/amap/api/services/a/o;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v4

    invoke-direct {v0, v3, v5, v4}, Lcom/amap/api/services/a/ch;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ci;Lcom/amap/api/services/a/bh;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/ch;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "ManifestConfig"

    invoke-static {v0, v3, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/o$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    :try_start_4
    new-instance v0, Lcom/amap/api/services/a/ch;

    invoke-static {}, Lcom/amap/api/services/a/o;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/amap/api/services/a/ch;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ci;Lcom/amap/api/services/a/bh;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/ch;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v6, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v1}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/services/a/o$1;->a:Lcom/amap/api/services/a/o;

    invoke-static {v1}, Lcom/amap/api/services/a/o;->a(Lcom/amap/api/services/a/o;)Lcom/amap/api/services/a/o$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/o$a;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
