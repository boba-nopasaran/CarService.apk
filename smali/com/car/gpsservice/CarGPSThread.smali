.class public final Lcom/car/gpsservice/CarGPSThread;
.super Ljava/lang/Thread;
.source "CarGPSThread.java"


# static fields
.field public static final GPS_COMPRESS_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final GPS_DISPLAY_MILE_DEFAULT:Z

.field public static final GPS_LED_KEY:Ljava/lang/String;

.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field public static final GPS_SUFFIX:Ljava/lang/String; = ".gps"

.field static final MSG_GPS_LED_ON_AND_OFF:I = 0x65

.field static final MSG_GPS_REOPEN:I = 0x64

.field private static mIsOn:Z


# instance fields
.field private final GPS_FILE_KEEP:I

.field private final GPS_FILE_NAME_FORMAT:Ljava/lang/String;

.field private final GPS_KEEP_DAYS_PROP:Ljava/lang/String;

.field private final GPS_WATERMARK_FMT:I

.field private TAG:Ljava/lang/String;

.field mAccOn:Z

.field public mAllCompressedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/gpsservice/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAllFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/gpsservice/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCompressGPSFileRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mCurrentGPSInfo:[I

.field private mDataStream:Ljava/io/DataOutputStream;

.field public mGPSFileName:Ljava/lang/String;

.field mGpsEver:Z

.field private final mHandler:Landroid/os/Handler;

.field mInterval:J

.field mLastAccOnTime:J

.field mLastReopenTime:J

.field private mLocationManager:Lcom/car/common/LocationManager;

.field private mLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mPath:Ljava/lang/String;

.field private mStartDate:Ljava/lang/String;

.field private mStorageMount:Z

.field private mTestGPSDataIndex:I

.field mTodayGpsCanUploadNow:Z

.field private testGPSData:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "persist.display.gps.mile"

    const-string v1, "sys.display.gps.mile"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/gpsservice/CarGPSThread;->GPS_DISPLAY_MILE_DEFAULT:Z

    sput-boolean v2, Lcom/car/gpsservice/CarGPSThread;->mIsOn:Z

    const-string v0, "gps_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "gps_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/car/gpsservice/CarGPSThread;->GPS_LED_KEY:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "gps"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "GPSServiceThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string v0, "CarSvc_GPSServiceThread"

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->GPS_FILE_NAME_FORMAT:Ljava/lang/String;

    const-string v0, "sys.gpsfile.keepdays"

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->GPS_KEEP_DAYS_PROP:Ljava/lang/String;

    const-string v0, "sys.gpsfile.keepdays"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/car/gpsservice/CarGPSThread;->GPS_FILE_KEEP:I

    const-string v0, "sys.watermark.gps.fmt"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/car/gpsservice/CarGPSThread;->GPS_WATERMARK_FMT:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    iput-wide v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLastAccOnTime:J

    iput-boolean v6, p0, Lcom/car/gpsservice/CarGPSThread;->mAccOn:Z

    iput-boolean v6, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    iput-boolean v6, p0, Lcom/car/gpsservice/CarGPSThread;->mGpsEver:Z

    new-instance v0, Lcom/car/gpsservice/CarGPSThread$1;

    invoke-direct {v0, p0}, Lcom/car/gpsservice/CarGPSThread$1;-><init>(Lcom/car/gpsservice/CarGPSThread;)V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/car/gpsservice/CarGPSThread;->mInterval:J

    iput-wide v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLastReopenTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    iput-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mCompressGPSFileRunnable:Ljava/lang/Runnable;

    iput-boolean v6, p0, Lcom/car/gpsservice/CarGPSThread;->mStorageMount:Z

    iput v6, p0, Lcom/car/gpsservice/CarGPSThread;->mTestGPSDataIndex:I

    const/16 v0, 0x2a4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->testGPSData:[D

    iput-object p1, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/car/gpsservice/CarGPSThread;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/gpsservice/CarGPSThread;->mLock:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/car/gpsservice/CarGPSThread;->mStorageMount:Z

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/LocationManager;->getInstance(Landroid/content/Context;)Lcom/car/common/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mLocationManager:Lcom/car/common/LocationManager;

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mLocationManager:Lcom/car/common/LocationManager;

    invoke-virtual {v0, v7}, Lcom/car/common/LocationManager;->recordLocation(Z)V

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    const/4 v5, 0x3

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v1, v7

    aput v6, v0, v6

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v1, "GPS Thread Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 8
        0x40368babda0dfdf0L    # 22.545591
        0x405c7c933e35c5b5L    # 113.946487
        0x40368bab53d640eaL    # 22.545583
        0x405c7c8d10f51acaL    # 113.94611
        0x40368baa369fcf3eL    # 22.545566
        0x405c7c88a47ecfeaL    # 113.94584
        0x40368ba89331a08cL    # 22.545541
        0x405c7c8123810e88L    # 113.945382
        0x40368ba80cf9e386L    # 22.545533
        0x405c7c7c49fd7a14L    # 113.945086
        0x40368ba80cf9e386L    # 22.545533
        0x405c7c7c49fd7a14L    # 113.945086
        0x40368c5564b662feL    # 22.548178
        0x405c7c7bd8be7297L    # 113.945059
        0x40368cb3700474daL    # 22.549613
        0x405c7c7a85015c21L    # 113.944978
        0x40368cdcfcc5b8dcL    # 22.550247
        0x405c7c7ad080b674L    # 113.944996
        0x40368d4e3bcd35a8L    # 22.551975
        0x405c7c7f84449dbfL    # 113.945283
        0x40368e27e0ef9980L    # 22.555296
        0x405c7c8a697aedddL    # 113.945948
        0x40368eb9e492bc30L    # 22.557524
        0x405c7c89f83be660L    # 113.945921
        0x40368eb9e492bc30L    # 22.557524
        0x405c7c89f83be660L    # 113.945921
        0x40368ebfdb4cc250L    # 22.557615
        0x405c7caa7ded6ba9L    # 113.947906
        0x40368ec17ebaf102L    # 22.55764
        0x405c7cbf8b9baa15L    # 113.949191
        0x40368eb8c75c4a84L    # 22.557507
        0x405c7cf06705c897L    # 113.952173
        0x40368eaf78feef5fL    # 22.557365
        0x405c7d11f926c7ebL    # 113.954222
        0x40368eab14ec204fL    # 22.557298
        0x405c7d1b152f3c2eL    # 113.954778
        0x40368eb1a2a4db16L    # 22.557398
        0x405c7d2f1a9fbe77L    # 113.956
        0x40368ed538ac18f8L    # 22.557941
        0x405c7d5ad106ee31L    # 113.958668
        0x40368ef4f0d844d0L    # 22.558425
        0x405c7d6a1e81cb47L    # 113.959602
        0x40368ef4f0d844d0L    # 22.558425
        0x405c7d6a1e81cb47L    # 113.959602
        0x40368f06f6944674L    # 22.5587
        0x405c7d7ee0b0af60L    # 113.960869
        0x40368f0e1b4bb5e1L    # 22.558809
        0x405c7d8de2ac3223L    # 113.961785
        0x40368f16d2aa5c5fL    # 22.558942
        0x405c7da9435ac8a3L    # 113.963456
        0x40368f34e7685986L    # 22.559401
        0x405c7e2fa5093965L    # 113.971658
        0x40368f3b7521144dL    # 22.559501
        0x405c7e3faf42784bL    # 113.972637
        0x40368f4784230fd0L    # 22.559685
        0x405c7e5132f87ad1L    # 113.973706
        0x40368f635e74299eL    # 22.56011
        0x405c7e703f2d3c79L    # 113.975601
        0x40368f779e9d0e99L    # 22.560419
        0x405c7e8bc59b8024L    # 113.977281
        0x40368f7fcfc3f812L    # 22.560544
        0x405c7ea936c58eebL    # 113.979078
        0x40368f7d0f1f57b4L    # 22.560502
        0x405c7ebc7b45f17cL    # 113.980254
        0x40368f7574f722e2L    # 22.560386
        0x405c7ed0f1f57b42L    # 113.981503
        0x40368f60ae9680e0L    # 22.560069
        0x405c7eeb24a6a876L    # 113.983102
        0x40368f4e11dbca97L    # 22.559785
        0x405c7efd3f5b5fa2L    # 113.984207
        0x40368f480a5accd5L    # 22.559693
        0x405c7f074213a0c7L    # 113.984818
        0x40368f46ed245b29L    # 22.559676
        0x405c7f1797cc3a00L    # 113.985815
        0x40368f49adc8fb87L    # 22.559718
        0x405c7f1f3e89a88bL    # 113.986282
        0x40368f5b2d4d4025L    # 22.559985
        0x405c7f357a355044L    # 113.987639
        0x40368fe7296f6513L    # 22.562121
        0x405c7fcb70ac3a86L    # 113.996792
        0x40368ff5e84f0953L    # 22.562346
        0x405c7fdf2a9d627cL    # 113.997996
        0x40368ff822bbecabL    # 22.56238
        0x405c7fe5321e603dL    # 113.998364
        0x40368ff822bbecabL    # 22.56238
        0x405c7ff4384ba0e8L    # 113.999281
        0x40368feb8d823422L    # 22.562188
        0x405c800b9dc2f406L    # 114.000709
        0x40368fe3e29307afL    # 22.562071
        0x405c801426fe718bL    # 114.00123
        0x40368fca31e7d999L    # 22.561679
        0x405c8025aab47410L    # 114.002299
        0x40368f480a5accd5L    # 22.559693
        0x405c806bb98c7e28L    # 114.006575
        0x40368f31a08bfc22L    # 22.559351
        0x405c807dfa00e27eL    # 114.007689
        0x40368f27cbf6e3f8L    # 22.559201
        0x405c808a7a41e57eL    # 114.008452
        0x40368f21c475e636L    # 22.559109
        0x405c809fd36f7e3dL    # 114.009755
        0x40368f23ee1bd1eeL    # 22.559142
        0x405c80b88ca3e7d1L    # 114.011264
        0x40368f2367e414e8L    # 22.559134
        0x405c80e0ded288ceL    # 114.013725
        0x40368f29f59ccfafL    # 22.559234
        0x405c80f3b645a1cbL    # 114.014875
        0x40368f43201040c0L    # 22.559618
        0x405c81093532e7b4L    # 114.016187
        0x40368fa3ec02f2faL    # 22.561095
        0x405c8141461b6d44L    # 114.019609
        0x40368fa3ec02f2faL    # 22.561095
        0x405c8141461b6d44L    # 114.019609
        0x40368fa355043e53L    # 22.561086
        0x405c814567125dd1L    # 114.019861
        0x40368fb5f1bef49dL    # 22.56137
        0x405c8151e75360d0L    # 114.020624
        0x40368fc5cdd50a89L    # 22.561612
        0x405c815b78cc9a78L    # 114.021208
        0x40368fc5cdd50a89L    # 22.561612
        0x405c815b78cc9a78L    # 114.021208
        0x40368bcc2938de6eL    # 22.546084
        0x405c7c8cc575c076L    # 113.946092
        0x40368bea2d2fe3f3L    # 22.546542
        0x405c7c8c5436b8faL    # 113.946065
        0x40368bee0b0af5fdL    # 22.546601
        0x405c7c8c5436b8faL    # 113.946065
        0x40368c0357a35504L    # 22.546926
        0x405c7c8c08b75ea6L    # 113.946047
        0x40368c0357a35504L    # 22.546926
        0x405c7c8c08b75ea6L    # 113.946047
        0x40368c01b4352652L    # 22.546901
        0x405c7c7d523b3637L    # 113.945149
        0x40368c024b33daf9L    # 22.54691
        0x405c7c7bd8be7297L    # 113.945059
        0x40368c024b33daf9L    # 22.54691
        0x405c7c7bd8be7297L    # 113.945059
        0x40368c5564b662feL    # 22.548178
        0x405c7c7bd8be7297L    # 113.945059
        0x40368cb3700474daL    # 22.549613
        0x405c7c7a85015c21L    # 113.944978
        0x40368cdcfcc5b8dcL    # 22.550247
        0x405c7c7ad080b674L    # 113.944996
        0x40368d4e3bcd35a8L    # 22.551975
        0x405c7c7f84449dbfL    # 113.945283
        0x40368e27e0ef9980L    # 22.555296
        0x405c7c8a697aedddL    # 113.945948
        0x40368eb9e492bc30L    # 22.557524
        0x405c7c89f83be660L    # 113.945921
        0x40368eb9e492bc30L    # 22.557524
        0x405c7c89f83be660L    # 113.945921
        0x40368ebfdb4cc250L    # 22.557615
        0x405c7caa7ded6ba9L    # 113.947906
        0x40368ec17ebaf102L    # 22.55764
        0x405c7cbf8b9baa15L    # 113.949191
        0x40368eb8c75c4a84L    # 22.557507
        0x405c7cf06705c897L    # 113.952173
        0x40368eaf78feef5fL    # 22.557365
        0x405c7d11f926c7ebL    # 113.954222
        0x40368eab14ec204fL    # 22.557298
        0x405c7d1b152f3c2eL    # 113.954778
        0x40368eb1a2a4db16L    # 22.557398
        0x405c7d2f1a9fbe77L    # 113.956
        0x40368ed538ac18f8L    # 22.557941
        0x405c7d5ad106ee31L    # 113.958668
        0x40368ef4f0d844d0L    # 22.558425
        0x405c7d6a1e81cb47L    # 113.959602
        0x40368ef4f0d844d0L    # 22.558425
        0x405c7d6a1e81cb47L    # 113.959602
        0x40368f06f6944674L    # 22.5587
        0x405c7d7ee0b0af60L    # 113.960869
        0x40368f0e1b4bb5e1L    # 22.558809
        0x405c7d8de2ac3223L    # 113.961785
        0x40368f16d2aa5c5fL    # 22.558942
        0x405c7da9435ac8a3L    # 113.963456
        0x40368f34e7685986L    # 22.559401
        0x405c7e2fa5093965L    # 113.971658
        0x40368f3b7521144dL    # 22.559501
        0x405c7e3faf42784bL    # 113.972637
        0x40368f4784230fd0L    # 22.559685
        0x405c7e5132f87ad1L    # 113.973706
        0x40368f635e74299eL    # 22.56011
        0x405c7e703f2d3c79L    # 113.975601
        0x40368f779e9d0e99L    # 22.560419
        0x405c7e8bc59b8024L    # 113.977281
        0x40368f7fcfc3f812L    # 22.560544
        0x405c7ea936c58eebL    # 113.979078
        0x40368f7d0f1f57b4L    # 22.560502
        0x405c7ebc7b45f17cL    # 113.980254
        0x40368f7574f722e2L    # 22.560386
        0x405c7ed0f1f57b42L    # 113.981503
        0x40368f60ae9680e0L    # 22.560069
        0x405c7eeb24a6a876L    # 113.983102
        0x40368f4e11dbca97L    # 22.559785
        0x405c7efd3f5b5fa2L    # 113.984207
        0x40368f480a5accd5L    # 22.559693
        0x405c7f074213a0c7L    # 113.984818
        0x40368f46ed245b29L    # 22.559676
        0x405c7f1797cc3a00L    # 113.985815
        0x40368f49adc8fb87L    # 22.559718
        0x405c7f1f3e89a88bL    # 113.986282
        0x40368f5b2d4d4025L    # 22.559985
        0x405c7f357a355044L    # 113.987639
        0x40368fe7296f6513L    # 22.562121
        0x405c7fcb70ac3a86L    # 113.996792
        0x40368ff5e84f0953L    # 22.562346
        0x405c7fdf2a9d627cL    # 113.997996
        0x40368ff822bbecabL    # 22.56238
        0x405c7fe5321e603dL    # 113.998364
        0x40368ff822bbecabL    # 22.56238
        0x405c7ff4384ba0e8L    # 113.999281
        0x40368feb8d823422L    # 22.562188
        0x405c800b9dc2f406L    # 114.000709
        0x40368fe3e29307afL    # 22.562071
        0x405c801426fe718bL    # 114.00123
        0x40368fca31e7d999L    # 22.561679
        0x405c8025aab47410L    # 114.002299
        0x40368f480a5accd5L    # 22.559693
        0x405c806bb98c7e28L    # 114.006575
        0x40368f31a08bfc22L    # 22.559351
        0x405c807dfa00e27eL    # 114.007689
        0x40368f27cbf6e3f8L    # 22.559201
        0x405c808a7a41e57eL    # 114.008452
        0x40368f21c475e636L    # 22.559109
        0x405c809fd36f7e3dL    # 114.009755
        0x40368f23ee1bd1eeL    # 22.559142
        0x405c80b88ca3e7d1L    # 114.011264
        0x40368f2367e414e8L    # 22.559134
        0x405c80e0ded288ceL    # 114.013725
        0x40368f29f59ccfafL    # 22.559234
        0x405c80f3b645a1cbL    # 114.014875
        0x40368f43201040c0L    # 22.559618
        0x405c81093532e7b4L    # 114.016187
        0x40368fa3ec02f2faL    # 22.561095
        0x405c8141461b6d44L    # 114.019609
        0x40368fa3ec02f2faL    # 22.561095
        0x405c8141461b6d44L    # 114.019609
        0x40368fd6c7219221L    # 22.561871
        0x405c815f99c38b05L    # 114.02146
        0x40368fea704bc276L    # 22.562171
        0x405c816d22424a27L    # 114.022286
        0x40369013fd0d0679L    # 22.562805
        0x405c818a6dacabc5L    # 114.024074
        0x4036902afdda8bd2L    # 22.563156
        0x405c819f9ce8d973L    # 114.025367
        0x40369034d26fa3fdL    # 22.563306
        0x405c81ad7518b0d1L    # 114.026212
        0x4036903ad9f0a1beL    # 22.563398
        0x405c81bc77143394L    # 114.027128
        0x40369034d26fa3fdL    # 22.563306
        0x405c82195464dc23L    # 114.032796
        0x40369040d0aaa7dfL    # 22.563489
        0x405c8232a497fa5dL    # 114.034341
        0x4036905b9e8c47a1L    # 22.563898
        0x405c825410f94c88L    # 114.036381
        0x4036906ec17ebaf1L    # 22.56419
        0x405c82704ff4341aL    # 114.038105
        0x403690804102ff8fL    # 22.564457
        0x405c8286b15f88fdL    # 114.039471
        0x403690bd87b56b87L    # 22.565392
        0x405c82ef0ae53650L    # 114.04584
        0x403690d1c7de5083L    # 22.565701
        0x405c8309635610aeL    # 114.047448
        0x40369101e2584f4cL    # 22.566435
        0x405c83510d38cda7L    # 114.051822
        0x40369122a6f3f530L    # 22.566935
        0x405c8374aba38759L    # 114.053996
        0x403691595feda661L    # 22.56777
        0x405c83a6223e186aL    # 114.057015
        0x4036915e4a383276L    # 22.567845
        0x405c83ae3a3a8e71L    # 114.057509
        0x403691633482be8cL    # 22.56792
        0x405c83bf01322f27L    # 114.058533
        0x4036916451b93038L    # 22.567937
        0x405c83ca5375c8daL    # 114.059224
        0x40369157bc7f77afL    # 22.567745
        0x405c8403254e6e22L    # 114.062692
        0x40369153dea465a5L    # 22.567686
        0x405c841fb3fa6df0L    # 114.064435
        0x40369156191148feL    # 22.56772
        0x405c842d87f88766L    # 114.065279
        0x403691595feda661L    # 22.56777
        0x405c843636f3b214L    # 114.065809
        0x403691681ecd4aa1L    # 22.567995
        0x405c84489d27c393L    # 114.066932
        0x403691799e518f3fL    # 22.568262
        0x405c8457082491b0L    # 114.067812
        0x40369186b9c304cdL    # 22.568462
        0x405c845fdcdf6988L    # 114.068351
        0x403691ee136e71ceL    # 22.570039
        0x405c8495e17e34b9L    # 114.071648
        0x40369231e7d9988dL    # 22.571074
        0x405c84b723ee1bd2L    # 114.073678
        0x4036923de6149c6fL    # 22.571257
        0x405c84c1bda5119dL    # 114.074325
        0x4036924473cd5736L    # 22.571357
        0x405c84c918e325d5L    # 114.074774
        0x4036924b9884c6a4L    # 22.571466
        0x405c84d551d68c69L    # 114.07552
        0x40369269ad42c3caL    # 22.571925
        0x405c85142b302f73L    # 114.079356
        0x4036926d7a56de33L    # 22.571983
        0x405c8517d6b65a9bL    # 114.07958
        0x403692858793dd98L    # 22.57235
        0x405c853e1c9b413aL    # 114.081916
        0x40369295e9e1b08aL    # 22.5726
        0x405c8552da98676aL    # 114.083182
        0x4036929d0e991ff7L    # 22.572709
        0x405c855a8155d5f5L    # 114.083649
        0x403692a4b9884c6aL    # 22.572826
        0x405c85601bc98a22L    # 114.083991
        0x403692ba8c586877L    # 22.573159
        0x405c856c050bd87bL    # 114.084718
        0x4036931e9f277814L    # 22.574686
        0x405c858fc9363f57L    # 114.086901
        0x40369336ac647779L    # 22.575053
        0x405c859aae6c8f75L    # 114.087566
        0x403693445ed4a1adL    # 22.575262
        0x405c85a22f6a50d7L    # 114.088024
        0x4036935a426bb55bL    # 22.575596
        0x405c85b634dad320L    # 114.089246
        0x40369362f9ca5bd9L    # 22.575729
        0x405c85c7219220ffL    # 114.090279
        0x40369363800218dfL    # 22.575737
        0x405c85ce5710880eL    # 114.090719
        0x4036935f2cb64170L    # 22.575671
        0x405c85e0008637bdL    # 114.091797
        0x40369349491f2dc3L    # 22.575337
        0x405c85f7fcfc3f81L    # 114.093261
        0x40369336ac647779L    # 22.575053
        0x405c8607bbb62414L    # 114.094222
        0x4036932a172abef0L    # 22.574861
        0x405c860e8427418dL    # 114.094636
        0x403692fb19e731d3L    # 22.574144
        0x405c861f70de8f6dL    # 114.095669
        0x403692e275ab7dc8L    # 22.573768
        0x405c8625785f8d2eL    # 114.096037
        0x403692ba0620ab71L    # 22.573151
        0x405c862ddbdb5d89L    # 114.096549
        0x403692a4b9884c6aL    # 22.572826
        0x405c863165d39970L    # 114.096765
        0x403692568a50507aL    # 22.571633
        0x405c863b42cc2d6bL    # 114.097367
        0x403692568a50507aL    # 22.571633
        0x405c863b42cc2d6bL    # 114.097367
        0x4036924edf612407L    # 22.571516
        0x405c863bafd976ffL    # 114.097393
        0x4036921ae70c1334L    # 22.570723
        0x405c8641e14bdfd2L    # 114.097771
        0x4036921ae70c1334L    # 22.570723
        0x405c8641e14bdfd2L    # 114.097771
        0x403691ebe9c88616L    # 22.570006
        0x405c8649adc8fb87L    # 114.098247
        0x403691d2bf551505L    # 22.569622
        0x405c864d7f0ed3d8L    # 114.09848
        0x4036917bc7f77af6L    # 22.568295
        0x405c8658afc47e4aL    # 114.099163
        0x4036917bc7f77af6L    # 22.568295
        0x405c8658afc47e4aL    # 114.099163
        0x4036907d912556d2L    # 22.564416
        0x405c8678c436fc16L    # 114.101121
        0x4036907e9d94d0ddL    # 22.564432
        0x405c867bb7308356L    # 114.101301
        0x4036907e9d94d0ddL    # 22.564432
        0x405c867bb7308356L    # 114.101301
        0x403690984e3ffef4L    # 22.564824
        0x405c868e432441ffL    # 114.102433
        0x403690a7a41e57daL    # 22.565058
        0x405c8718c197e564L    # 114.110886
        0x403690a7a41e57daL    # 22.565058
        0x405c8718c197e564L    # 114.110886
        0x403690ac083126e9L    # 22.565125
        0x405c875bdd76683cL    # 114.114982
        0x403690aec8d5c747L    # 22.565167
        0x405c876440f23897L    # 114.115494
        0x403690bc6a7ef9dbL    # 22.565375
        0x405c8773929ed395L    # 114.116429
        0x403690cb295e9e1bL    # 22.5656
        0x405c877fed20296bL    # 114.117183
        0x403690de4c51116bL    # 22.565892
        0x405c87935b91f70eL    # 114.118369
        0x403690e71476af8aL    # 22.566026
        0x405c879752977c89L    # 114.118611
        0x40368bcc2938de6eL    # 22.546084
        0x405c7c8cc575c076L    # 113.946092
        0x40368bea2d2fe3f3L    # 22.546542
        0x405c7c8c5436b8faL    # 113.946065
        0x40368bee0b0af5fdL    # 22.546601
        0x405c7c8c5436b8faL    # 113.946065
        0x40368c0357a35504L    # 22.546926
        0x405c7c8c08b75ea6L    # 113.946047
        0x40368c0357a35504L    # 22.546926
        0x405c7c8c08b75ea6L    # 113.946047
        0x40368c01b4352652L    # 22.546901
        0x405c7c7d523b3637L    # 113.945149
        0x40368c024b33daf9L    # 22.54691
        0x405c7c7bd8be7297L    # 113.945059
        0x40368c024b33daf9L    # 22.54691
        0x405c7c7bd8be7297L    # 113.945059
        0x40368c5564b662feL    # 22.548178
        0x405c7c7bd8be7297L    # 113.945059
        0x40368cb3700474daL    # 22.549613
        0x405c7c7a85015c21L    # 113.944978
        0x40368cdcfcc5b8dcL    # 22.550247
        0x405c7c7ad080b674L    # 113.944996
        0x40368d4690de0935L    # 22.551858
        0x405c7c7f5e84f095L    # 113.945274
        0x40368d4e3bcd35a8L    # 22.551975
        0x405c7c7f84449dbfL    # 113.945283
        0x40368d4da4ce8102L    # 22.551966
        0x405c7c7de939eaddL    # 113.945185
        0x40368d4da4ce8102L    # 22.551966
        0x405c7c7de939eaddL    # 113.945185
        0x40368d4c01605250L    # 22.551941
        0x405c7c54195cc858L    # 113.942633
        0x40368d4e3bcd35a8L    # 22.551975
        0x405c7c2c5e2cdc01L    # 113.940208
        0x40368d4e3bcd35a8L    # 22.551975
        0x405c7c2c5e2cdc01L    # 113.940208
        0x40368d7edc7ef178L    # 22.552717
        0x405c7c2dd7a99fa1L    # 113.940298
        0x40368d9b4dcebfecL    # 22.553151
        0x405c7c2c386d2ed8L    # 113.940199
        0x40368d9b4dcebfecL    # 22.553151
        0x405c7c2c386d2ed8L    # 113.940199
        0x40368edc4c9c90c5L    # 22.558049
        0x405c7c2a4db163bbL    # 113.940082
        0x40368fdbb16c1e36L    # 22.561946
        0x405c7c31f46ed246L    # 113.940549
        0x40369021af7d30adL    # 22.563014
        0x405c7c32d6ece13fL    # 113.940603
        0x403691e92923e5b8L    # 22.569964
        0x405c7c3059641f64L    # 113.940451
        0x403691e92923e5b8L    # 22.569964
        0x405c7c3059641f64L    # 113.940451
        0x40369240a6b93ccdL    # 22.571299
        0x405c7c30a0b1bbcfL    # 113.940468
        0x40369240a6b93ccdL    # 22.571299
        0x405c7c30a0b1bbcfL    # 113.940468
        0x403692858793dd98L    # 22.57235
        0x405c7c30c67168f9L    # 113.940477
        0x403692d81adea897L    # 22.57361
        0x405c7c2fe82517e7L    # 113.940424
        0x40369301a79fec9aL    # 22.574244
        0x405c7c2dd7a99fa1L    # 113.940298
        0x40369337c99ae925L    # 22.57507
        0x405c7c28f9f44d44L    # 113.940001
        0x40369384db9c7369L    # 22.576246
        0x405c7c1dcd7060bbL    # 113.939319
        0x403693eb18116ebdL    # 22.577806
        0x405c7c072085b185L    # 113.937935
        0x4036940f345069a5L    # 22.578357
        0x405c7bffeb074a77L    # 113.937495
        0x403694345cfede98L    # 22.578924
        0x405c7bfa2f05a709L    # 113.937145
        0x40369449ba5e353fL    # 22.57925
        0x405c7bf761cbccf3L    # 113.936974
        0x4036946594af4f0eL    # 22.579675
        0x405c7bf4ba51a006L    # 113.936812
        0x4036946594af4f0eL    # 22.579675
        0x405c7bf4ba51a006L    # 113.936812
        0x40369477143393abL    # 22.579942
        0x405c7bf52b90a783L    # 113.936839
        0x403695042d8c2a45L    # 22.582095
        0x405c7bf345069a4eL    # 113.936723
        0x403695c4113c6866L    # 22.585023
        0x405c7bf1a5ca2984L    # 113.936624
        0x403695d4738a3b58L    # 22.585273
        0x405c7bf15a4acf31L    # 113.936606
        0x403695e56cd6c2f0L    # 22.585532
        0x405c7bef240fa9c1L    # 113.936471
        0x403696109d0635a4L    # 22.586191
        0x405c7beed8904f6eL    # 113.936453
        0x403696bbba55d1c4L    # 22.588802
        0x405c7beefe4ffc98L    # 113.936462
        0x4036971c75818c5dL    # 22.590278
        0x405c7befe0ce0b91L    # 113.936516
        0x4036976cdf266ba5L    # 22.591505
        0x405c7bf1f14983d8L    # 113.936642
        0x4036982ba5a03819L    # 22.594416
        0x405c7bf9e3864cb6L    # 113.937127
        0x4036994cdb7ae579L    # 22.598829
        0x405c7c04ee7c49fdL    # 113.937801
        0x40369add8b60f1b2L    # 22.604943
        0x405c7c158fb43d8aL    # 113.938816
        0x40369b7e3d1cc101L    # 22.607395
        0x405c7c1a8ef77f28L    # 113.939121
        0x40369c0e8c8abd5eL    # 22.609597
        0x405c7c19d2391d58L    # 113.939076
        0x40369c4f09528f19L    # 22.610581
        0x405c7c17c1bda512L    # 113.93895
        0x40369ca1059ea572L    # 22.611832
        0x405c7c130df9bdc7L    # 113.938663
        0x40369ccbaf965b21L    # 22.612483
        0x405c7c0fcf80dc33L    # 113.938465
        0x40369d0374ff865dL    # 22.613334
        0x405c7c0a84be4042L    # 113.938142
        0x40369d5336deb95eL    # 22.614551
        0x405c7c00a7c5ac47L    # 113.93754
        0x40369d94d0dcfcc6L    # 22.615552
        0x405c7bf7164c729fL    # 113.936956
        0x40369e033e78e193L    # 22.617237
        0x405c7be279dd3bb0L    # 113.935698
        0x40369e5e02ea960bL    # 22.618622
        0x405c7bcf0f9d2bf5L    # 113.934513
        0x40369eab9b23dd55L    # 22.619806
        0x405c7bc0096feb4aL    # 113.933596
        0x40369ece032db1eaL    # 22.620331
        0x405c7bb7cbb3c819L    # 113.933093
        0x40369fc9795b35b1L    # 22.624168
        0x405c7b83b1d0c804L    # 113.929913
        0x4036a05b5b70691fL    # 22.626394
        0x405c7b64a59c065bL    # 113.928018
        0x4036a087229e9079L    # 22.627062
        0x405c7b5c42203600L    # 113.927506
        0x4036a1830e3cd9a5L    # 22.630906
        0x405c7b28027d88c2L    # 113.924317
        0x4036a1f42bb66730L    # 22.632632
        0x405c7b1212513b5cL    # 113.922978
        0x4036a257a786c227L    # 22.63415
        0x405c7b008e9b38d6L    # 113.921909
        0x4036a2787ce95fabL    # 22.634651
        0x405c7afb69984a0eL    # 113.921595
        0x4036a2df2ecf2064L    # 22.636218
        0x405c7aed4a1ad645L    # 113.920733
        0x4036a32c40d0aaa8L    # 22.637394
        0x405c7ae49b1fab97L    # 113.920203
        0x4036a383ad9f0a1cL    # 22.638728
        0x405c7adbec2480e9L    # 113.919673
        0x4036a3f0fe047d3dL    # 22.640396
        0x405c7ad33d29563bL    # 113.919143
        0x4036a43558a76102L    # 22.641439
        0x405c7ace8533b107L    # 113.918855
        0x4036a653fc0096ffL    # 22.649719
        0x405c7ab1af3a14cfL    # 113.917095
        0x4036a687e38eb032L    # 22.650511
        0x405c7aae9680e065L    # 113.916906
        0x4036a6d117b5286bL    # 22.651628
        0x405c7aa7f8012dfdL    # 113.916502
        0x4036a719c5a3e39fL    # 22.652737
        0x405c7a9f4906034fL    # 113.915972
        0x4036a771c970f7baL    # 22.65408
        0x405c7a914b167ec8L    # 113.915118
        0x4036a7c06e19b90fL    # 22.65528
        0x405c7a80a9de8b3bL    # 113.914103
        0x4036a7ea8112ba17L    # 22.655922
        0x405c7a75ea67e847L    # 113.913447
        0x4036a826138fffbdL    # 22.656831
        0x405c7a63886594afL    # 113.912325
        0x4036a87f23cc8de3L    # 22.65819
        0x405c7a3ee1bd1edaL    # 113.910088
        0x4036a87f23cc8de3L    # 22.65819
        0x405c7a3ee1bd1edaL    # 113.910088
        0x4036a892ddbdb5d9L    # 22.658491
        0x405c7a3b7d84901dL    # 113.909881
        0x4036a8b5cbff4773L    # 22.659024
        0x405c7a2f6e82949aL    # 113.909145
        0x4036a8cc35ce1826L    # 22.659366
        0x405c7a29d40ee06eL    # 113.908803
        0x4036a8e66cb10343L    # 22.659766
        0x405c7a25918a009fL    # 113.908543
        0x4036a8f041461b6dL    # 22.659916
        0x405c7a24894c447cL    # 113.90848
        0x4036a90c2c5e2cdcL    # 22.660342
        0x405c7a23a6ce3583L    # 113.908426
        0x4036a91f3e89a88bL    # 22.660633
        0x405c7a24180d3cffL    # 113.908453
        0x4036a91f3e89a88bL    # 22.660633
        0x405c7a24180d3cffL    # 113.908453
        0x4036a9495182a993L    # 22.661275
        0x405c7a2962cfd8f1L    # 113.908776
        0x4036a954c985f06fL    # 22.66145
        0x405c7a2c0a4a05deL    # 113.908938
        0x4036a95e17e34b94L    # 22.661592
        0x405c7a2f48c2e771L    # 113.909136
        0x4036a96cd6c2efd4L    # 22.661817
        0x405c7a360d024702L    # 113.909549
        0x4036a97507e9d94dL    # 22.661942
        0x405c7a3bc903ea70L    # 113.909899
        0x4036a97dd00f776cL    # 22.662076
        0x405c7a4af0bf1a5dL    # 113.910824
        0x4036a9796bfca85dL    # 22.662009
        0x405c7a6a7264a16aL    # 113.912747
        0x4036a9819d2391d5L    # 22.662134
        0x405c7a7531db445fL    # 113.913403
        0x4036a97507e9d94dL    # 22.661942
        0x405c7ab0813cab82L    # 113.917023
        0x4036a9701d9f4d38L    # 22.661867
        0x405c7ad095af294eL    # 113.918981
        0x4036a96df3f96180L    # 22.661834
        0x405c7af47f993d53L    # 113.921173
        0x4036a966490a350dL    # 22.661717
        0x405c7b1ae70c1334L    # 113.923517
        0x4036a963022dd7aaL    # 22.661667
        0x405c7b412cf0f9d3L    # 113.925853
        0x4036a966490a350dL    # 22.661717
        0x405c7b6013660e52L    # 113.927739
        0x4036a96df3f96180L    # 22.661834
        0x405c7b6fd651b0cdL    # 113.928701
        0x4036a97b0f6ad70eL    # 22.662034
        0x405c7b84dfce3151L    # 113.929985
        0x4036a989ce4a7b4eL    # 22.662259
        0x405c7b92ddbdb5d9L    # 113.930839
        0x4036a9ac36544fe3L    # 22.662784
        0x405c7baa433508f6L    # 113.932267
        0x4036a9e02ea960b7L    # 22.663577
        0x405c7bc5ef62f9caL    # 113.933956
        0x4036aa05dd8f92b0L    # 22.664152
        0x405c7bd5d3dc8b87L    # 113.934926
        0x4036aa393ee5eeddL    # 22.664936
        0x405c7be731d2e0e3L    # 113.935986
        0x4036aa84167a95c8L    # 22.666078
        0x405c7bfb1183b603L    # 113.937199
        0x4036aaa4db163bacL    # 22.666578
        0x405c7c02de00d1b7L    # 113.937675
        0x4036ab0f6ad70e6fL    # 22.668204
        0x405c7c193b3a68b2L    # 113.93904
        0x4036ab4117f8444aL    # 22.668962
        0x405c7c2491afc04dL    # 113.939732
        0x4036ab8ae31d712aL    # 22.670088
        0x405c7c3743632c1fL    # 113.940873
        0x4036abd3910c2c5eL    # 22.671197
        0x405c7c4d551d68c7L    # 113.94222
        0x4036ac17dae81883L    # 22.672239
        0x405c7c66f0cfe154L    # 113.943783
        0x4036ac45baf533f4L    # 22.672939
        0x405c7c7d77fae361L    # 113.945158
        0x4036ac70eb24a6a8L    # 22.673598
        0x405c7c93faf42785L    # 113.946532
        0x4036acb9991361ddL    # 22.674707
        0x405c7cc2efd438d2L    # 113.949398
        0x4036ad1105e1c151L    # 22.676041
        0x405c7ced2cbea4ecL    # 113.951976
        0x4036ad59a30984e4L    # 22.677149
        0x405c7d06ee30caa3L    # 113.953548
        0x4036ad9bc33f8551L    # 22.678158
        0x405c7d1c1d6cf851L    # 113.954841
        0x4036ae4b2314013fL    # 22.680834
        0x405c7d5011904b3cL    # 113.958012
        0x4036ae873bc903eaL    # 22.681751
        0x405c7d635a426bb5L    # 113.959189
        0x4036aecc0bdcad15L    # 22.682801
        0x405c7d7dfe32a066L    # 113.960815
        0x4036aeff6d330942L    # 22.683585
        0x405c7d937d1fe64fL    # 113.962127
        0x4036af587d6f9768L    # 22.684944
        0x405c7dbdba0a5269L    # 113.964705
        0x4036af8e086bdf4cL    # 22.685761
        0x405c7ddc7abfb9bfL    # 113.966582
        0x4036afbe121ee675L    # 22.686494
        0x405c7dffa7eb6bf4L    # 113.968729
        0x4036b0229a5ebb77L    # 22.688028
        0x405c7e57abb8800fL    # 113.974101
        0x4036b055fbb517a4L    # 22.688812
        0x405c7e8151a43782L    # 113.976643
        0x4036b055fbb517a4L    # 22.688812
        0x405c7e8151a43782L    # 113.976643
        0x4036b070329802c1L    # 22.689212
        0x405c7e9906cca2dbL    # 113.97809
        0x4036b094c447c30dL    # 22.68977
        0x405c7ebe1a826245L    # 113.980353
        0x4036b09fb6134ce4L    # 22.689937
        0x405c7ecb81733227L    # 113.981171
        0x4036b0aaa7ded6bbL    # 22.690104
        0x405c7ede33269df9L    # 113.982312
        0x4036b0b135979182L    # 22.690204
        0x405c7ef151e75361L    # 113.983479
        0x4036b0c21e1d2179L    # 22.690462
        0x405c7f360d024702L    # 113.987674
        0x4036b0cbf2b239a4L    # 22.690612
        0x405c7f461b6d43d0L    # 113.988654
        0x4036b0d9a52263d8L    # 22.690821
        0x405c7f54f7a91969L    # 113.989561
        0x4036b0f00ef1348bL    # 22.691163
        0x405c7f67a95c853cL    # 113.990702
        0x4036b0fecdd0d8cbL    # 22.691388
        0x405c7f7186551937L    # 113.991304
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/car/gpsservice/CarGPSThread;->mIsOn:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/car/gpsservice/CarGPSThread;->mIsOn:Z

    return p0
.end method

.method private checkUpdateGPSFile()V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/car/gpsservice/CarGPSThread;->needSplitGPSFile()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    :goto_1
    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const-string v3, "yyyy-MM-dd"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".gps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    const/16 v6, 0x800

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generate GPS File:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    invoke-virtual {p0}, Lcom/car/gpsservice/CarGPSThread;->buildGPSFileList()V

    invoke-direct {p0}, Lcom/car/gpsservice/CarGPSThread;->deleteOldestGPSFile()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mOutputStream:Ljava/io/FileOutputStream;

    throw v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private deleteOldestGPSFile()V
    .locals 12

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/gpsservice/FileInfo;

    iget-wide v4, v8, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    sub-long v8, v0, v4

    iget v10, p0, Lcom/car/gpsservice/CarGPSThread;->GPS_FILE_KEEP:I

    mul-int/lit16 v10, v10, 0xe10

    mul-int/lit8 v10, v10, 0x18

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/gpsservice/FileInfo;

    iget-object v3, v8, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete GPS File:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete GPS Compressed File:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete GPS Back File:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public static isStorageMounted(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private needSplitGPSFile()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "yyyy-MM-dd"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setGPSEnable(Z)V
    .locals 7

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v5, "to turn on GPS, is already on, do nothing ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v5, "to turn on GPS ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :goto_1
    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turn on/off gps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v5, "to turn off GPS, is already off, do nothing ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v5, "to turn off GPS ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGPSData()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mLocationManager:Lcom/car/common/LocationManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/gpsservice/CarGPSThread;->mLastReopenTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    const-wide/32 v28, 0x36ee80

    cmp-long v25, v26, v28

    if-ltz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    const-wide/32 v28, 0xea60

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x65

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    if-eqz v19, :cond_5

    const-string v25, "/sys/power/led_set_control"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/car/gpsservice/CarGPSThread;->GPS_LED_KEY:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "on"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/gpsservice/CarGPSThread;->mGpsEver:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/car/gpsservice/CarGPSThread;->updateGPSWaterMark(Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x49742400    # 1000000.0f

    mul-float v18, v25, v26

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x49742400    # 1000000.0f

    mul-float v22, v25, v26

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getSpeed()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getBearing()F

    move-result v25

    move/from16 v0, v25

    float-to-int v5, v0

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getAltitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v4, v0

    const/4 v7, 0x0

    and-int/lit16 v0, v4, 0x3fff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int/lit8 v25, v25, 0x0

    and-int/lit16 v0, v5, 0x1ff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x7

    or-int v25, v25, v26

    and-int/lit8 v26, v23, 0x7f

    or-int v6, v25, v26

    if-nez v23, :cond_3

    const-string v25, "sys.current.gpsinfo"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v25, ":"

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    array-length v0, v13

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v25, 0x2

    aget-object v25, v13, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    and-int/lit8 v15, v14, 0x7f

    if-nez v15, :cond_3

    move v6, v14

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aput v6, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v25, "sys.current.gpsinfo"

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/gpsservice/CarGPSThread;->mInterval:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    mul-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Lcom/car/gpsservice/CarGPSThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->lastLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object v25

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/gpsservice/CarGPSThread;->mGpsEver:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->curLatitude()D

    move-result-wide v16

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->curLongitude()D

    move-result-wide v20

    const-wide v26, 0x412e848000000000L    # 1000000.0

    mul-double v26, v26, v16

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v18, v0

    const-wide v26, 0x412e848000000000L    # 1000000.0

    mul-double v26, v26, v20

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v22, v0

    if-nez v18, :cond_6

    if-nez v22, :cond_6

    const-wide/16 v26, 0x3e8

    :try_start_3
    invoke-static/range {v26 .. v27}, Lcom/car/gpsservice/CarGPSThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->lastLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->lastLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v25

    move/from16 v0, v25

    float-to-int v5, v0

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/car/common/map/MyLocation;->lastLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v4, v0

    const/4 v7, 0x2

    const/high16 v25, -0x80000000

    and-int/lit16 v0, v4, 0x3fff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    and-int/lit16 v0, v5, 0x1ff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x7

    or-int v25, v25, v26

    and-int/lit8 v26, v23, 0x7f

    or-int v6, v25, v26

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aput v18, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aput v22, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aput v6, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/gpsservice/CarGPSThread;->mGpsEver:Z

    move/from16 v25, v0

    if-nez v25, :cond_4

    :try_start_6
    const-string v25, "sys.gpsdata.test"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/gpsservice/CarGPSThread;->mTestGPSDataIndex:I

    move/from16 v25, v0

    add-int/lit8 v26, v25, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/gpsservice/CarGPSThread;->mTestGPSDataIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->testGPSData:[D

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    rem-int v12, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v24, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->testGPSData:[D

    move-object/from16 v27, v0

    mul-int/lit8 v28, v12, 0x2

    aget-wide v28, v27, v28

    const-wide v30, 0x412e848000000000L    # 1000000.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->testGPSData:[D

    move-object/from16 v27, v0

    mul-int/lit8 v28, v12, 0x2

    add-int/lit8 v28, v28, 0x1

    aget-wide v28, v27, v28

    const-wide v30, 0x412e848000000000L    # 1000000.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const/16 v27, 0x0

    aput v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/gpsservice/CarGPSThread;->mDataStream:Ljava/io/DataOutputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private updateGPSWaterMark(III)V
    .locals 10

    const-wide v8, 0x412e848000000000L    # 1000000.0

    int-to-double v0, p1

    div-double v2, v0, v8

    int-to-double v0, p2

    div-double v4, v0, v8

    int-to-float v0, p3

    const v1, 0x40666666    # 3.6f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/car/gpsservice/CarGPSThread;->updateProp(DDI)V

    return-void
.end method

.method private updateGPSWaterMark(Landroid/location/Location;)V
    .locals 7

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v1, 0x40666666    # 3.6f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/car/gpsservice/CarGPSThread;->updateProp(DDI)V

    return-void
.end method

.method private updateProp(DDI)V
    .locals 21

    const-string v3, ""

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-string v16, "persist.display.gps.mile"

    sget-boolean v17, Lcom/car/gpsservice/CarGPSThread;->GPS_DISPLAY_MILE_DEFAULT:Z

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/gpsservice/CarGPSThread;->GPS_WATERMARK_FMT:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    double-to-int v6, v4

    int-to-double v0, v6

    move-wide/from16 v16, v0

    sub-double v16, v4, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v14, v16, v18

    double-to-int v7, v14

    int-to-double v0, v7

    move-wide/from16 v16, v0

    sub-double v16, v14, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    double-to-int v9, v10

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v10, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v14, v16, v18

    double-to-int v12, v14

    int-to-double v0, v12

    move-wide/from16 v16, v0

    sub-double v16, v14, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v13, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v18, 0x0

    cmpl-double v16, p1, v18

    if-lez v16, :cond_1

    const-string v16, "N"

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "`"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v18, 0x0

    cmpl-double v16, p3, v18

    if-lez v16, :cond_2

    const-string v16, "E"

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "`"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_2
    if-eqz v2, :cond_6

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 p5, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Mph"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v16, "persist.dvr.gps.watermark"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v16, "S"

    goto/16 :goto_0

    :cond_2
    const-string v16, "W"

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/gpsservice/CarGPSThread;->GPS_WATERMARK_FMT:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v18, 0x0

    cmpl-double v16, p1, v18

    if-lez v16, :cond_4

    const-string v16, "N"

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%.6f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v18, 0x0

    cmpl-double v16, p3, v18

    if-lez v16, :cond_5

    const-string v16, "E"

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%.6f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " V:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    const-string v16, "S"

    goto/16 :goto_4

    :cond_5
    const-string v16, "W"

    goto :goto_5

    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "km/h"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method


# virtual methods
.method public buildCompressGPSFileList()V
    .locals 6

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/car/gpsservice/CarGPSThread;->findGPSCompressFileinPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compressed File number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/gpsservice/FileInfo;

    iget-object v1, v1, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " StartTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/gpsservice/FileInfo;

    iget-wide v4, v1, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public buildGPSFileList()V
    .locals 6

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/car/gpsservice/CarGPSThread;->findGPSFileinPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/gpsservice/FileInfo;

    iget-object v1, v1, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " StartTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/gpsservice/FileInfo;

    iget-wide v4, v1, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected compressGPSFile(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v8, 0x400

    new-array v2, v8, [B

    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v0, v2, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compressed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public externalStorageChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/car/gpsservice/CarGPSThread;->mStorageMount:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findGPSCompressFileinPath(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    const-string v6, ".gps.zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/car/gpsservice/FileInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/car/gpsservice/FileInfo;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findGPSFileinPath(Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    aget-object v7, v1, v3

    const-string v8, ".gps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/car/gpsservice/FileInfo;

    invoke-direct {v4, v2}, Lcom/car/gpsservice/FileInfo;-><init>(Ljava/lang/String;)V

    iget-wide v8, v4, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->mAllFileList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    if-eqz v7, :cond_8

    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v2}, Lcom/car/gpsservice/CarGPSThread;->compressGPSFile(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.car.uploadgps"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_7
    invoke-virtual {p0, v2}, Lcom/car/gpsservice/CarGPSThread;->compressGPSFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "don\'t compress today GPS File mStartDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/gpsservice/CarGPSThread;->mStartDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " filename = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getCurrentGPSFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mGPSFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentGPSInfo()[I
    .locals 2

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mCurrentGPSInfo:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOldestGPSZipFileName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/car/gpsservice/CarGPSThread;->buildCompressGPSFileList()V

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread;->mAllCompressedFileList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/gpsservice/FileInfo;

    iget-object v0, v0, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method gpsReopen()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/gpsservice/CarGPSThread;->mLastReopenTime:J

    invoke-virtual {p0}, Lcom/car/gpsservice/CarGPSThread;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/gpsservice/CarGPSThread;->setGPSEnable(Z)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/gpsservice/CarGPSThread;->setGPSEnable(Z)V

    :cond_0
    return-void
.end method

.method isAccOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method isGpsEnabled()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "location_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    const-string v4, "GPS Thread Started"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/car/gpsservice/CarGPSThread;->isAccOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAccOn:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/car/gpsservice/CarGPSThread;->mAccOn:Z

    iget-boolean v1, p0, Lcom/car/gpsservice/CarGPSThread;->mAccOn:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLastAccOnTime:J

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/car/gpsservice/CarGPSThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS Thread Started, mTodayGpsCanUploadNow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    :cond_1
    invoke-direct {p0}, Lcom/car/gpsservice/CarGPSThread;->checkUpdateGPSFile()V

    invoke-direct {p0}, Lcom/car/gpsservice/CarGPSThread;->updateGPSData()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLastAccOnTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/car/gpsservice/CarGPSThread;->mLastAccOnTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/gpsservice/CarGPSThread;->mTodayGpsCanUploadNow:Z

    goto :goto_1
.end method

.method public setInterval(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/car/gpsservice/CarGPSThread;->mInterval:J

    invoke-virtual {p0}, Lcom/car/gpsservice/CarGPSThread;->interrupt()V

    return-void
.end method
