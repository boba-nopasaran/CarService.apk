.class public Lcom/car/systemfunc/BeidouAgpsManager;
.super Landroid/content/BroadcastReceiver;
.source "BeidouAgpsManager.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field AUTH:Ljava/lang/String;

.field BIN_EX_LENGTH:I

.field BIN_HDTL_LENGTH:I

.field BIN_STN_LENGTH:I

.field GOKE_SERVER:Ljava/lang/String;

.field NMEA_STN_LENGTH:I

.field PORT:I

.field PWD:Ljava/lang/String;

.field SERVER:Ljava/lang/String;

.field USER:Ljava/lang/String;

.field mAgpsCachePath:Ljava/lang/String;

.field mCacheUsed:Z

.field mContext:Landroid/content/Context;

.field mEverUpdate:Z

.field mHandler:Landroid/os/Handler;

.field mIsChecking:Z

.field mLastUpdateTime:J

.field mLock:Ljava/lang/Object;

.field mSerialPort:Lcom/car/common/SerialPort;

.field mSleeping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CarSvc_BeidouAgpsManager"

    sput-object v0, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->NMEA_STN_LENGTH:I

    const/16 v0, 0x206

    iput v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    iget v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_STN_LENGTH:I

    const-string v0, "http://www.goke-agps.com:7777/brdcGPD.dat"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->GOKE_SERVER:Ljava/lang/String;

    const-string v0, "agps.u-blox.com"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->SERVER:Ljava/lang/String;

    const v0, 0xb562

    iput v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->PORT:I

    const-string v0, "Alex.Tseng@wtmec.com"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->USER:Ljava/lang/String;

    const-string v0, "Dtcoq"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->PWD:Ljava/lang/String;

    const-string v0, "cmd=full;user=%s;pwd=%s;lat=%.1f;lon=%.1f;pacc=100000\n"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->AUTH:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    iput-boolean v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    iput-boolean v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mSleeping:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mLastUpdateTime:J

    const-string v0, "/data/agps.dat"

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mAgpsCachePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/car/systemfunc/BeidouAgpsManager$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/BeidouAgpsManager$1;-><init>(Lcom/car/systemfunc/BeidouAgpsManager;)V

    iput-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final byte2hex([BI)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument b ( byte array ) is null! "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-gtz p1, :cond_1

    array-length p1, p0

    :cond_1
    const-string v0, ""

    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method MakeNmeaStn([CI[B)V
    .locals 8

    const/16 v7, 0x2a

    const/16 v6, 0xa

    const/4 v5, 0x0

    if-nez p2, :cond_0

    aput-byte v5, p3, v5

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->NMEA_STN_LENGTH:I

    add-int/lit8 v3, v3, -0x7

    if-le p2, v3, :cond_1

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->NMEA_STN_LENGTH:I

    add-int/lit8 p2, v3, -0x7

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_3

    aget-char v3, p1, v2

    if-eq v3, v7, :cond_2

    aget-char v3, p1, v2

    xor-int/2addr v3, v1

    int-to-byte v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move p2, v2

    :cond_3
    const/16 v3, 0x24

    aput-byte v3, p3, v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-char v4, p1, v2

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, p2, 0x1

    aput-byte v7, p3, v3

    and-int/lit16 v3, v1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v0, v3

    if-lt v0, v6, :cond_5

    add-int/lit8 v3, v0, 0x41

    add-int/lit8 v3, v3, -0xa

    int-to-byte v0, v3

    :goto_3
    add-int/lit8 v3, p2, 0x2

    aput-byte v0, p3, v3

    and-int/lit8 v3, v1, 0xf

    int-to-byte v0, v3

    if-lt v0, v6, :cond_6

    add-int/lit8 v3, v0, 0x41

    add-int/lit8 v3, v3, -0xa

    int-to-byte v0, v3

    :goto_4
    add-int/lit8 v3, p2, 0x3

    aput-byte v0, p3, v3

    add-int/lit8 v3, p2, 0x4

    const/16 v4, 0xd

    aput-byte v4, p3, v3

    add-int/lit8 v3, p2, 0x5

    aput-byte v6, p3, v3

    add-int/lit8 v3, p2, 0x6

    aput-byte v5, p3, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v0, 0x30

    int-to-byte v0, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v0, 0x30

    int-to-byte v0, v3

    goto :goto_4
.end method

.method SendBin2Nmea(I)[B
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    new-array v1, v2, [B

    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v2, v2, 0x5

    new-array v0, v2, [B

    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v2, v2, 0x5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v3, v3, 0x5

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, -0x6b

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->vMakeBinStn([BI[B)V

    return-object v0
.end method

.method SendBinGpdData(ISI[B)[B
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    new-array v2, v3, [B

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    add-int/lit8 v3, v3, 0x5

    new-array v1, v3, [B

    const/4 v3, 0x0

    iget v4, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_STN_LENGTH:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_STN_LENGTH:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x66

    aput-byte v3, v2, v5

    const/4 v3, 0x3

    aput-byte v5, v2, v3

    const/4 v3, 0x4

    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    shr-int/lit8 v4, p2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x200

    if-ge v0, v3, :cond_1

    add-int v3, p1, v0

    if-ge v3, p3, :cond_0

    add-int/lit8 v3, v0, 0x6

    add-int v4, p1, v0

    aget-byte v4, p4, v4

    aput-byte v4, v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x6

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/car/systemfunc/BeidouAgpsManager;->vMakeBinStn([BI[B)V

    return-object v1
.end method

.method SendBinGpdEndding()[B
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    new-array v1, v2, [B

    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v2, 0x0

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_HDTL_LENGTH:I

    add-int/lit8 v3, v3, 0x2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x66

    aput-byte v2, v1, v5

    const/4 v2, 0x3

    aput-byte v5, v1, v2

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->vMakeBinStn([BI[B)V

    return-object v0
.end method

.method backupData2Cache([B)V
    .locals 4

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mAgpsCachePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method doFetchData()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->isGoke()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchDataGoke()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchDataGmouse()V

    goto :goto_0
.end method

.method doFetchDataGmouse()V
    .locals 2

    iget-boolean v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/BeidouAgpsManager$3;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/BeidouAgpsManager$3;-><init>(Lcom/car/systemfunc/BeidouAgpsManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method doFetchDataGoke()V
    .locals 2

    iget-boolean v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mIsChecking:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/BeidouAgpsManager$2;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/BeidouAgpsManager$2;-><init>(Lcom/car/systemfunc/BeidouAgpsManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method doWrite([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->isGoke()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/BeidouAgpsManager;->doWriteGoke([B)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/BeidouAgpsManager;->doWriteGmouse([B)V

    goto :goto_0
.end method

.method doWriteGmouse([B)V
    .locals 11

    iget-object v8, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v6, Lcom/car/common/SerialPort;

    new-instance v7, Ljava/io/File;

    const-string v9, "ro.gps.tty"

    const-string v10, "/dev/ttyMT2"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2580

    const/4 v10, 0x0

    invoke-direct {v6, v7, v9, v10}, Lcom/car/common/SerialPort;-><init>(Ljava/io/File;II)V

    invoke-virtual {v6}, Lcom/car/common/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x10

    array-length v7, p1

    rem-int v2, v7, v5

    array-length v7, p1

    div-int v3, v7, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    mul-int v7, v1, v5

    invoke-virtual {v4, p1, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int v7, v5, v3

    invoke-virtual {v4, p1, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    sget-object v7, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Done{GMouse}: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int v10, v5, v3

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/car/common/SerialPort;->doClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method doWriteGoke([B)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    const/16 v19, 0x200

    :try_start_0
    move/from16 v0, v19

    new-array v15, v0, [B

    new-instance v18, Lcom/car/common/SerialPort;

    new-instance v19, Ljava/io/File;

    const-string v21, "ro.gps.tty"

    const-string v22, "/dev/ttyMT2"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x2580

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/car/common/SerialPort;-><init>(Ljava/io/File;II)V

    invoke-virtual/range {v18 .. v18}, Lcom/car/common/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/car/common/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v6, "PGKC149,1,9600"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x7

    move/from16 v0, v19

    new-array v7, v0, [B

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v7}, Lcom/car/systemfunc/BeidouAgpsManager;->MakeNmeaStn([CI[B)V

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Send:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v7, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v10, v0, :cond_0

    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v14, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    const/16 v19, 0x0

    const/16 v21, 0x200

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v15, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "read len="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACK: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15, v12}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_4

    const/16 v19, 0x0

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xaa

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xf0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x2

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xc

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x4

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x6

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0x95

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x8

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v21, "Binary mode succeed"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v21, "Not binary mode!!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    :cond_2
    :goto_1
    const/16 v19, 0x64

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v17

    mul-int/lit16 v13, v0, 0x200

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/BeidouAgpsManager;->SendBinGpdEndding()[B

    move-result-object v9

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Send: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write([B)V

    const/16 v19, 0x0

    const/16 v21, 0x200

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v15, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "len2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACK: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15, v12}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x2580

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/BeidouAgpsManager;->SendBin2Nmea(I)[B

    move-result-object v9

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Send: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write([B)V

    const/16 v19, 0x0

    const/16 v21, 0x200

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v15, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "len3="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACK: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15, v12}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Done[Goke]: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    add-int v22, v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", retryCount="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Lcom/car/common/SerialPort;->doClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/car/systemfunc/BeidouAgpsManager;->SendBinGpdData(ISI[B)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v19, 0x0

    const/16 v21, 0x200

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v11, v15, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-lez v12, :cond_2

    const/16 v19, 0x0

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xaa

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xf0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "read len1="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v12}, Lcom/car/systemfunc/BeidouAgpsManager;->byte2hex([BI)Ljava/lang/String;

    move-result-object v4

    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACK: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_7

    const/16 v19, 0x2

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0xc

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v19, 0x4

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v19, 0x6

    aget-byte v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    if-nez v19, :cond_6

    add-int/lit8 v19, v17, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    :cond_6
    sget-object v19, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v21, "Not a correct ack"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v19

    :cond_7
    add-int/lit8 v19, v17, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v17, v0

    goto/16 :goto_1
.end method

.method getDataFromCache()[B
    .locals 7

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mAgpsCachePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public init()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.agps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.wakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method isGoke()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "sys.gps.module"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.car.agps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchData()V

    goto :goto_0

    :cond_2
    const-string v1, "com.car.wakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mSleeping:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchData()V

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mSleeping:Z

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/car/systemfunc/BeidouAgpsManager$4;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/BeidouAgpsManager$4;-><init>(Lcom/car/systemfunc/BeidouAgpsManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mSleeping:Z

    iput-boolean v3, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method usingCacheData()V
    .locals 3

    iget-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/systemfunc/BeidouAgpsManager;->getDataFromCache()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v2, "Using cache data first"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/BeidouAgpsManager;->doWrite([B)V

    :cond_0
    return-void
.end method

.method vMakeBinStn([BI[B)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    aput-byte v3, p3, v3

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    if-le p2, v2, :cond_1

    iget p2, p0, Lcom/car/systemfunc/BeidouAgpsManager;->BIN_EX_LENGTH:I

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-byte v2, p1, v1

    xor-int/2addr v2, v0

    int-to-byte v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, -0x56

    aput-byte v2, p3, v3

    const/4 v2, 0x1

    const/16 v3, -0x10

    aput-byte v3, p3, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    add-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    aput-byte v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p2, 0x2

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p2, 0x3

    const/16 v3, 0xd

    aput-byte v3, p3, v2

    add-int/lit8 v2, p2, 0x4

    const/16 v3, 0xa

    aput-byte v3, p3, v2

    goto :goto_0
.end method
