.class public Lcom/aispeech/AIEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/AIEngine$aiengine_callback;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/aispeech/AIEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    const-string v1, "before load aiengine library"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "library path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "java.library.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aiengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    const-string v1, "after load aiengine library"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AISpeech Error"

    const-string v1, "Please check useful libaiengine.so, and put it in your libs dir!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native aiengine_cancel(J)I
.end method

.method public static native aiengine_delete(J)I
.end method

.method public static native aiengine_echo(J[B[BII)I
.end method

.method public static native aiengine_feed(J[BI)I
.end method

.method public static native aiengine_log(JLjava/lang/String;)I
.end method

.method public static native aiengine_new(Ljava/lang/String;Ljava/lang/Object;)J
.end method

.method public static native aiengine_opt(JI[BI)I
.end method

.method public static native aiengine_start(JLjava/lang/String;[BLcom/aispeech/AIEngine$aiengine_callback;)I
.end method

.method public static native aiengine_stop(J)I
.end method


# virtual methods
.method public final a([B)I
    .locals 3

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/aispeech/AIEngine;->aiengine_feed(J[BI)I

    move-result v0

    return v0
.end method

.method public final a([BI)I
    .locals 6

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/aispeech/AIEngine;->aiengine_echo(J[B[BII)I

    move-result v0

    return v0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)J
    .locals 4

    invoke-static {p1, p2}, Lcom/aispeech/AIEngine;->aiengine_new(Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIEngine.new():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Lcom/aispeech/AIEngine$aiengine_callback;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x40

    new-array v1, v1, [B

    sget-object v2, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AIEngine.start():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-static {v2, v3, p1, v1, p2}, Lcom/aispeech/AIEngine;->aiengine_start(JLjava/lang/String;[BLcom/aispeech/AIEngine$aiengine_callback;)I

    move-result v2

    if-gez v2, :cond_1

    sget-object v1, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AIEngine.start() failed! Error code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()I
    .locals 4

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIEngine.stop():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-static {v0, v1}, Lcom/aispeech/AIEngine;->aiengine_stop(J)I

    move-result v0

    return v0
.end method

.method public final b([B)V
    .locals 4

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIEngine.opt(): type:2 data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    const/4 v2, 0x2

    array-length v3, p1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    return-void
.end method

.method public final c()I
    .locals 4

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIEngine.cancel():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-static {v0, v1}, Lcom/aispeech/AIEngine;->aiengine_cancel(J)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 6

    sget-object v0, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIEngine.delete():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-static {v0, v1}, Lcom/aispeech/AIEngine;->aiengine_delete(J)I

    move-result v0

    sget-object v1, Lcom/aispeech/AIEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIEngine.delete() finished:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/aispeech/AIEngine;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/aispeech/AIEngine;->b:J

    return v0
.end method
