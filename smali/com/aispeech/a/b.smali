.class public final Lcom/aispeech/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/a/e;


# static fields
.field private static a:I

.field private static b:Lcom/aispeech/a/a;

.field private static d:Ljava/util/concurrent/locks/Lock;

.field private static e:I


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/aispeech/a/b;->a:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/aispeech/a/b;->d:Ljava/util/concurrent/locks/Lock;

    sput v1, Lcom/aispeech/a/b;->e:I

    return-void
.end method

.method private constructor <init>(Lcom/aispeech/AISampleRate;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/aispeech/a/b;->c:J

    sget-object v0, Lcom/aispeech/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/a/b;->c:J

    invoke-static {}, Lcom/aispeech/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aispeech/a/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/aispeech/a/a;-><init>(Lcom/aispeech/AISampleRate;II)V

    sput-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    :cond_0
    sget v0, Lcom/aispeech/a/b;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aispeech/a/b;->a:I

    const-string v0, "AIAudioRecorderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A proxy create, TokenId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/a/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", increase RefCount, current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/aispeech/a/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static a(Lcom/aispeech/AISampleRate;II)Lcom/aispeech/a/b;
    .locals 1

    new-instance v0, Lcom/aispeech/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/aispeech/a/b;-><init>(Lcom/aispeech/AISampleRate;II)V

    return-object v0
.end method

.method private static g()Z
    .locals 1

    sget v0, Lcom/aispeech/a/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aispeech/a/d;)J
    .locals 2

    sget v0, Lcom/aispeech/a/b;->e:I

    if-nez v0, :cond_0

    sget v0, Lcom/aispeech/a/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/aispeech/a/b;->e:I

    :cond_0
    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a/a;->b(Lcom/aispeech/a/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()V
    .locals 6

    const-wide/32 v4, 0x3b9aca00

    sget-object v0, Lcom/aispeech/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v0, p0, Lcom/aispeech/a/b;->c:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    sget v0, Lcom/aispeech/a/b;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/aispeech/a/b;->a:I

    const-string v0, "AIAudioRecorderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A proxy release, TokenId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/aispeech/a/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", decrease RefCount, current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/aispeech/a/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIAudioRecorderProxy"

    const-string v1, "refCountEqualZero releaseRecorder"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0}, Lcom/aispeech/a/a;->b()V

    const/4 v0, 0x0

    sput v0, Lcom/aispeech/a/b;->e:I

    :cond_0
    iput-wide v4, p0, Lcom/aispeech/a/b;->c:J

    :cond_1
    sget-object v0, Lcom/aispeech/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final b()Lcom/aispeech/AISampleRate;
    .locals 1

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0}, Lcom/aispeech/a/a;->e()Lcom/aispeech/AISampleRate;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/aispeech/a/d;)V
    .locals 1

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a/a;->c(Lcom/aispeech/a/d;)V

    return-void
.end method

.method public final c()I
    .locals 1

    invoke-static {}, Lcom/aispeech/a/a;->f()I

    move-result v0

    return v0
.end method

.method public final c(Lcom/aispeech/a/d;)Z
    .locals 1

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0}, Lcom/aispeech/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a/a;->a(Lcom/aispeech/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    invoke-static {}, Lcom/aispeech/a/a;->g()I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0}, Lcom/aispeech/a/a;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    sget-object v0, Lcom/aispeech/a/b;->b:Lcom/aispeech/a/a;

    invoke-virtual {v0}, Lcom/aispeech/a/a;->d()V

    return-void
.end method
