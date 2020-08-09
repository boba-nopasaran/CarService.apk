.class public Lcom/aispeech/common/WavFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    invoke-direct/range {p0 .. p5}, Lcom/aispeech/common/WavFileWriter;->a(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/aispeech/a/e;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    invoke-interface {p2}, Lcom/aispeech/a/e;->b()Lcom/aispeech/AISampleRate;

    move-result-object v2

    invoke-interface {p2}, Lcom/aispeech/a/e;->c()I

    move-result v3

    invoke-interface {p2}, Lcom/aispeech/a/e;->d()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/aispeech/common/WavFileWriter;->a(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)V

    return-void
.end method

.method private a(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x2c

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    invoke-virtual {p0}, Lcom/aispeech/common/WavFileWriter;->closeWav()V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez p5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    if-eqz p5, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_4
    sget-object v0, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    const-string v1, "writer header to Wav File."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v0, p3, p4

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    int-to-short v2, p3

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    shl-int/lit8 v1, p4, 0x3

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized createWavFileWriter(Ljava/io/File;Lcom/aispeech/AISampleRate;II)Lcom/aispeech/common/WavFileWriter;
    .locals 2

    const-class v0, Lcom/aispeech/common/WavFileWriter;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/aispeech/common/WavFileWriter;->createWavFileWriter(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)Lcom/aispeech/common/WavFileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createWavFileWriter(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)Lcom/aispeech/common/WavFileWriter;
    .locals 8

    const/4 v6, 0x0

    const-class v7, Lcom/aispeech/common/WavFileWriter;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    const-string v1, "create WavFileWriter."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    move-object v0, v6

    :goto_0
    monitor-exit v7

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/aispeech/common/WavFileWriter;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aispeech/common/WavFileWriter;-><init>(Ljava/io/File;Lcom/aispeech/AISampleRate;IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static createWavFileWriter(Ljava/io/File;Lcom/aispeech/a/e;)Lcom/aispeech/common/WavFileWriter;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/aispeech/common/WavFileWriter;->createWavFileWriter(Ljava/io/File;Lcom/aispeech/a/e;Z)Lcom/aispeech/common/WavFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized createWavFileWriter(Ljava/io/File;Lcom/aispeech/a/e;Z)Lcom/aispeech/common/WavFileWriter;
    .locals 3

    const/4 v0, 0x0

    const-class v2, Lcom/aispeech/common/WavFileWriter;

    monitor-enter v2

    if-nez p0, :cond_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/aispeech/common/WavFileWriter;

    invoke-direct {v1, p0, p1, p2}, Lcom/aispeech/common/WavFileWriter;-><init>(Ljava/io/File;Lcom/aispeech/a/e;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static removeWaveHeader([B)[B
    .locals 5

    const/16 v4, 0x46

    const/16 v3, 0x2c

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v3, :cond_0

    aget-byte v0, p0, v2

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2c

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    const-string v2, "remove wav header!"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized closeWav()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    const-string v1, "close wav File."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    add-int/lit8 v2, v0, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    add-int/lit8 v0, v0, -0x2c

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "unknown exception in closeWav"

    :goto_2
    invoke-static {v1, v0}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    const/4 v1, 0x0

    :try_start_b
    iput-object v1, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized deleteIfOpened()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeWavData([B)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/common/WavFileWriter;->b:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/aispeech/common/WavFileWriter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "unknown exception in writeWavData"

    :goto_1
    invoke-static {v1, v0}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/common/WavFileWriter;->closeWav()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
