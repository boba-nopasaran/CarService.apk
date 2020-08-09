.class Lcom/aispeech/aios/aimedia/a/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/s;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iput-wide p2, p0, Lcom/aispeech/aios/aimedia/a/a/s;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/aispeech/aios/aimedia/a/a/k;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/s;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v2, v0, Lcom/aispeech/aios/aimedia/a/a/k;->d:J

    iget-wide v4, p0, Lcom/aispeech/aios/aimedia/a/a/s;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/s;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v2, p0, Lcom/aispeech/aios/aimedia/a/a/s;->a:J

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;JZ)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/s;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v2, p0, Lcom/aispeech/aios/aimedia/a/a/s;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
