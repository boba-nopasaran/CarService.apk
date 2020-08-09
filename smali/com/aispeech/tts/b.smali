.class public final Lcom/aispeech/tts/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/tts/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/tts/b$e;,
        Lcom/aispeech/tts/b$a;,
        Lcom/aispeech/tts/b$d;,
        Lcom/aispeech/tts/b$c;,
        Lcom/aispeech/tts/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/MediaPlayer;

.field private c:I

.field private d:Lcom/aispeech/tts/g;

.field private e:Lcom/aispeech/common/a;

.field private f:Ljava/io/File;

.field private g:Lcom/aispeech/tts/b$a;

.field private h:Lcom/aispeech/a/c;

.field private i:Z

.field private j:J

.field private k:Lcom/aispeech/tts/b$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/b;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->h:Lcom/aispeech/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/tts/b;[B)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/tts/b;->a([B)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/io/File;
    .locals 4

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/aispeech/tts/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AISpeech_tts_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/tts/b;Ljava/io/File;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/aispeech/tts/b;->i:Z

    iget-object v2, p0, Lcom/aispeech/tts/b;->h:Lcom/aispeech/a/c;

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11a0c

    const-string v5, "\u5408\u6210MediaPlayer\u64ad\u653e\u5668\u9519\u8bef:"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/aispeech/a/c;->a(Lcom/aispeech/AIError;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_3
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lcom/aispeech/tts/b;->i:Z

    iget-object v2, p0, Lcom/aispeech/tts/b;->h:Lcom/aispeech/a/c;

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11a0c

    const-string v5, "\u5408\u6210MediaPlayer\u64ad\u653e\u5668\u9519\u8bef:"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/aispeech/a/c;->a(Lcom/aispeech/AIError;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    :goto_4
    const/4 v2, 0x0

    :try_start_8
    iput-boolean v2, p0, Lcom/aispeech/tts/b;->i:Z

    iget-object v2, p0, Lcom/aispeech/tts/b;->h:Lcom/aispeech/a/c;

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11a0c

    const-string v5, "\u5408\u6210MediaPlayer\u64ad\u653e\u5668\u9519\u8bef:"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/aispeech/a/c;->a(Lcom/aispeech/AIError;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_1
    :goto_6
    throw v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/aispeech/tts/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/tts/b;->i:Z

    return p1
.end method

.method private static b(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    move p1, p0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/b$a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/g;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->d:Lcom/aispeech/tts/g;

    return-object v0
.end method

.method static synthetic d(Lcom/aispeech/tts/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/tts/b;->j:J

    return-wide v0
.end method

.method static synthetic e(Lcom/aispeech/tts/b;)Lcom/aispeech/common/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/tts/b;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private f()V
    .locals 6

    invoke-direct {p0}, Lcom/aispeech/tts/b;->g()V

    new-instance v0, Lcom/aispeech/tts/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aispeech/tts/b$e;-><init>(Lcom/aispeech/tts/b;B)V

    iput-object v0, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    :try_start_0
    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    invoke-virtual {v0}, Lcom/aispeech/tts/b$e;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/b;->k:Lcom/aispeech/tts/b$e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AIMediaPlayer"

    const-string v1, "AIMediaPlayer.play()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->f:Ljava/io/File;

    invoke-static {v0}, Lcom/aispeech/common/a;->a(Ljava/io/File;)Lcom/aispeech/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    invoke-virtual {v0}, Lcom/aispeech/tts/b$a;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/aispeech/tts/b;->f()V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/tts/b;->j:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/aispeech/tts/b;->j:J

    return-wide v0

    :cond_2
    const-string v0, "AIMediaPlayer"

    const-string v1, "MediaPlayer not response play() because is in playing!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-static {p1, v4}, Lcom/aispeech/tts/b;->b(FF)F

    move-result v1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v0}, Lcom/aispeech/tts/b;->b(FF)F

    move-result v0

    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    sub-float v0, v5, v0

    mul-float/2addr v0, v1

    :goto_0
    const-string v3, "AIMediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "volLeft="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",volRight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void

    :cond_1
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    add-float/2addr v0, v5

    mul-float/2addr v0, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/tts/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/aispeech/tts/b$b;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/b$b;-><init>(Lcom/aispeech/tts/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/aispeech/tts/b$c;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/b$c;-><init>(Lcom/aispeech/tts/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/aispeech/tts/b$d;

    invoke-direct {v1, p0}, Lcom/aispeech/tts/b$d;-><init>(Lcom/aispeech/tts/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/aispeech/tts/b$a;

    invoke-direct {v0, p0}, Lcom/aispeech/tts/b$a;-><init>(Lcom/aispeech/tts/b;)V

    iput-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    :cond_1
    return-void
.end method

.method public final a(Lcom/aispeech/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b;->h:Lcom/aispeech/a/c;

    return-void
.end method

.method public final a(Lcom/aispeech/tts/g;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b;->d:Lcom/aispeech/tts/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aispeech/tts/b;->f:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/b;->d:Lcom/aispeech/tts/g;

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->c()I

    move-result v0

    iput v0, p0, Lcom/aispeech/tts/b;->c:I

    const-string v0, "AIMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TotalDataSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aispeech/tts/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aispeech/tts/b;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/aispeech/tts/b;->g()V

    const-string v0, "AIMediaPlayer"

    const-string v1, "AIMediaPlayer.stop()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/b;->i:Z

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    invoke-virtual {v0}, Lcom/aispeech/tts/b$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    invoke-virtual {v0}, Lcom/aispeech/common/a;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "AIMediaPlayer"

    const-string v1, "media player not initialized , so not response to stop"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aispeech/tts/b;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "AIMediaPlayer"

    const-string v1, "AIMediaPlayer.resume()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/aispeech/tts/b;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AIMediaPlayer"

    const-string v1, "media player not initialized , so not response to resume"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aispeech/tts/b;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "AIMediaPlayer"

    const-string v1, "AIMediaPlayer.pause()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    invoke-direct {p0}, Lcom/aispeech/tts/b;->g()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "AIMediaPlayer"

    const-string v1, "media player not initialized , so not response to pause"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    invoke-direct {p0}, Lcom/aispeech/tts/b;->g()V

    const-string v0, "AIMediaPlayer"

    const-string v1, "AIMediaPlayer.release()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/b;->g:Lcom/aispeech/tts/b$a;

    invoke-virtual {v0}, Lcom/aispeech/tts/b$a;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/tts/b;->e:Lcom/aispeech/common/a;

    invoke-virtual {v0}, Lcom/aispeech/common/a;->a()V

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aispeech/tts/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AISpeech_tts_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v0, p0, Lcom/aispeech/tts/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/b;->a:Landroid/content/Context;

    :cond_4
    return-void
.end method
