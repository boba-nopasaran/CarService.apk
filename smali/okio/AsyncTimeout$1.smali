.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    iget-object v2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    iget-object v2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    const-wide/16 v10, 0x0

    iget-object v7, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1
    const-wide/32 v0, 0x10000

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int v8, v0, v1

    int-to-long v0, v8

    add-long/2addr v10, v0

    cmp-long v0, v10, p2

    if-ltz v0, :cond_1

    move-wide v10, p2

    :cond_0
    const/4 v9, 0x0

    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0, p1, v10, v11}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, v10

    const/4 v9, 0x1

    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, v9}, Lokio/AsyncTimeout;->exit(Z)V

    goto :goto_0

    :cond_1
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, v6}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v9}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0

    :cond_2
    return-void
.end method
