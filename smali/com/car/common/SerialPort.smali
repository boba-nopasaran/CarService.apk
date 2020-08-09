.class public Lcom/car/common/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "serial_port"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/car/common/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/car/common/SerialPort;->mFd:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lcom/car/common/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_2

    const-string v0, "SerialPort"

    const-string v1, "native open returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/car/common/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/car/common/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/car/common/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/car/common/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private native close()V
.end method

.method private native config(I)V
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public doClose()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/common/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Lcom/car/common/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/car/common/SerialPort;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/car/common/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/car/common/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
