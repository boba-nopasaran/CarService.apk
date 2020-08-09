.class Lcom/aispeech/aios/aimedia/a/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/t;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iput-wide p2, p0, Lcom/aispeech/aios/aimedia/a/a/t;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/aimedia/a/a/k;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/t;->b:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v2, p0, Lcom/aispeech/aios/aimedia/a/a/t;->a:J

    invoke-static {v0, v2, v3}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
