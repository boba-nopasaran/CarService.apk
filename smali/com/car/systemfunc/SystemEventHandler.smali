.class public Lcom/car/systemfunc/SystemEventHandler;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/SystemEventHandler$PackageDeleteObserverAdapter;
    }
.end annotation


# static fields
.field private static final ACCIDENT_BACK_HAPPEN_PROP:Ljava/lang/String; = "sys.car.dvr.accident.b"

.field private static final ACCIDENT_FRONT_HAPPEN_PROP:Ljava/lang/String; = "sys.car.dvr.accident.f"

.field public static final ACTION_WAKEUP:Ljava/lang/String; = "com.car.syswakeup"

.field public static final APN_TABLE_URI:Landroid/net/Uri;

.field private static BACK_CAM_RECORD_DISABLED:Z = false

.field public static final CURRENT_APN_URI:Landroid/net/Uri;

.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field static final IMAGE_CAPTURE_ALRAM:I = 0x4

.field static final MSG_VIDEO_LOCK:I = 0x3e8

.field private static final NOTICE_LIST:Ljava/lang/String;

.field public static final PREFERRED_APN_URI:Landroid/net/Uri;

.field public static SETTINGS_TABLE_GLOBAL:I = 0x0

.field public static SETTINGS_TABLE_SECURE:I = 0x0

.field public static SETTINGS_TABLE_SYSTEM:I = 0x0

.field public static SETTINGS_TYPE_FLOAT:I = 0x0

.field public static SETTINGS_TYPE_INT:I = 0x0

.field public static SETTINGS_TYPE_LONG:I = 0x0

.field public static SETTINGS_TYPE_STRING:I = 0x0

.field private static final SHOW_POWER_DIALOG:Ljava/lang/String; = "com.car.carservice.power.dialog"

.field private static final TAG:Ljava/lang/String; = "CarSvc_SystemEventHandler"

.field static final VIDEO_CAPTURE_ALRAM:I = 0x5


# instance fields
.field mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

.field private mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

.field private mCollisionSensor:Lcom/car/systemfunc/CollisionSensor;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHttpServiceConnection:Landroid/content/ServiceConnection;

.field mLastWakeupTimeByGsensor:J

.field mLock:Ljava/lang/Object;

.field mMyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mPowerConnectionReceiver:Lcom/car/systemfunc/PowerConnectionReceiver;

.field private mPowerDialog:Lcom/car/systemfunc/PowerDialog;

.field mPowerSaveDetector:Lcom/car/systemfunc/PowerSaver;

.field mSleeping:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field mTimeChangeReceiver:Lcom/car/systemfunc/TimeChangeReceiver;

.field myWakeLock:Lcom/car/common/util/MyWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SystemEventHandler;->APN_TABLE_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SystemEventHandler;->PREFERRED_APN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SystemEventHandler;->CURRENT_APN_URI:Landroid/net/Uri;

    const-string v0, "persist.notice.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SystemEventHandler;->NOTICE_LIST:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_GLOBAL:I

    const/4 v0, 0x2

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_SECURE:I

    const/4 v0, 0x4

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_SYSTEM:I

    const/16 v0, 0x8

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_INT:I

    const/16 v0, 0x10

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_STRING:I

    const/16 v0, 0x20

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_LONG:I

    const/16 v0, 0x40

    sput v0, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_FLOAT:I

    const-string v0, "persist.rear.record.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/systemfunc/SystemEventHandler;->BACK_CAM_RECORD_DISABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mLastWakeupTimeByGsensor:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mSleeping:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/car/systemfunc/SystemEventHandler$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SystemEventHandler$1;-><init>(Lcom/car/systemfunc/SystemEventHandler;)V

    iput-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/systemfunc/SystemEventHandler$2;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SystemEventHandler$2;-><init>(Lcom/car/systemfunc/SystemEventHandler;)V

    iput-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mMyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/systemfunc/SystemEventHandler$4;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SystemEventHandler$4;-><init>(Lcom/car/systemfunc/SystemEventHandler;)V

    iput-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mHttpServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/car/systemfunc/SystemEventHandler$6;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SystemEventHandler$6;-><init>(Lcom/car/systemfunc/SystemEventHandler;)V

    iput-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/SystemEventHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerDialog:Lcom/car/systemfunc/PowerDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/car/systemfunc/SystemEventHandler;Lcom/car/systemfunc/PowerDialog;)Lcom/car/systemfunc/PowerDialog;
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerDialog:Lcom/car/systemfunc/PowerDialog;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SystemEventHandler;->NOTICE_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/SystemEventHandler;->doMasterClearSprd()V

    return-void
.end method

.method static synthetic access$500(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/SystemEventHandler;->doMasterClearMtk()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/car/systemfunc/SystemEventHandler;->BACK_CAM_RECORD_DISABLED:Z

    return v0
.end method

.method private static delete(Ljava/lang/String;)V
    .locals 6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/car/systemfunc/SystemEventHandler;->delete(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CarSvc_SystemEventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete sussess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private doMasterClearMtk()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.os.storage.ExternalStorageFormatter"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private doMasterClearSprd()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
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


# virtual methods
.method addApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 14

    iget-object v4, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "name"

    invoke-virtual {v13, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mcc"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mnc"

    move-object/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    const-string v5, "default"

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "numeric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_0
    sget-object v4, Lcom/car/systemfunc/SystemEventHandler;->APN_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    int-to-long v8, v4

    const-string v4, "CarSvc_SystemEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Inserting new APN succeeded!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v8

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method addPowerReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v1, Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {v1, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerConnectionReceiver:Lcom/car/systemfunc/PowerConnectionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.airplanemode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.workbeforesleeping"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.launcher.FORCE_SLEEP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.launcher.FORCE_REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.voiceassitant.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.voiceassitant.restart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.cloud.suspend"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.screen.request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.rmt.action.KILL_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.setprop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.fakebtn.second"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.fakebtn.longpressed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.alarm2reboot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.dnsaddress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.firewall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.forward"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.lowvoltage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_service_bind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.netrule"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.dvr.reverse.gear.popup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.voiceassitant.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.restartAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerConnectionReceiver:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method addTimeChangeReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v1, Lcom/car/systemfunc/TimeChangeReceiver;

    invoke-direct {v1}, Lcom/car/systemfunc/TimeChangeReceiver;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mTimeChangeReceiver:Lcom/car/systemfunc/TimeChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.time.set"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mTimeChangeReceiver:Lcom/car/systemfunc/TimeChangeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method getPreferredApn()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/systemfunc/SystemEventHandler;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numeric:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numeric"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mnc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "proxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "proxy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsproxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsproxy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsport"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authtype"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    const-string v0, "CarSvc_SystemEventHandler"

    aget-object v1, v8, v7

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/car/common/CarUtil;->isAliYunOS()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/SystemEventHandler;->addPowerReceiver(Landroid/content/Context;)V

    new-instance v2, Lcom/car/systemfunc/PowerSaver;

    invoke-direct {v2, p1}, Lcom/car/systemfunc/PowerSaver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerSaveDetector:Lcom/car/systemfunc/PowerSaver;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mPowerSaveDetector:Lcom/car/systemfunc/PowerSaver;

    invoke-virtual {v2}, Lcom/car/systemfunc/PowerSaver;->start()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/SystemEventHandler;->addTimeChangeReceiver(Landroid/content/Context;)V

    new-instance v2, Lcom/car/systemfunc/NaviChangeReceiver;

    invoke-direct {v2, p1}, Lcom/car/systemfunc/NaviChangeReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/car/systemfunc/SysEventReceiver;

    invoke-direct {v2, p1}, Lcom/car/systemfunc/SysEventReceiver;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/car/systemfunc/CollisionSensor;

    invoke-direct {v2, p1}, Lcom/car/systemfunc/CollisionSensor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionSensor:Lcom/car/systemfunc/CollisionSensor;

    new-instance v2, Lcom/car/systemfunc/SystemEventHandler$5;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/SystemEventHandler$5;-><init>(Lcom/car/systemfunc/SystemEventHandler;)V

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionSensor:Lcom/car/systemfunc/CollisionSensor;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    invoke-virtual {v2, v3}, Lcom/car/systemfunc/CollisionSensor;->setOnCollisionListener(Lcom/car/systemfunc/CollisionSensor$onCollisionListener;)V

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionSensor:Lcom/car/systemfunc/CollisionSensor;

    invoke-virtual {v2}, Lcom/car/systemfunc/CollisionSensor;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.car.video.capturenow"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "landsem.intent.action.RADAR_POWER_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "landsem.intent.action.RADAR_POWER_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.carservice.power.dialog"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.hud.show"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.syswakeup"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.gotosleep"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.getapn"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.setapn"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.useapn"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.tts"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.f10.pressed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.factory"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.snapshot"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.settings"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/car/common/CameraServiceImpl;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v2, "com.car.monitor"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.set.navi.app"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.getmaplist"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SILENCE_INSTALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SILENCE_UNINSTALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mMyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/car/common/util/MyWakeLock;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x1d4c0

    invoke-direct {v2, v3, v4, v5}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/car/httpserver/CarHttpService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->mHttpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method isApnExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11

    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/systemfunc/SystemEventHandler;->APN_TABLE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name"

    aput-object v3, v2, v7

    const-string v3, "apn"

    aput-object v3, v2, v10

    const-string v3, "apn=? AND mcc=? AND mnc=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    aput-object p3, v4, v7

    aput-object p4, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :goto_0
    return-wide v8

    :cond_0
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method isApnUsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/systemfunc/SystemEventHandler;->PREFERRED_APN_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "name"

    aput-object v3, v2, v7

    const-string v3, "apn"

    aput-object v3, v2, v5

    const-string v3, "apn=? AND mcc=? AND mnc=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v10

    aput-object p3, v4, v7

    aput-object p4, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move v1, v7

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0
.end method

.method public isDualCVBS()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "ro.func.flag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method monitorNow(IJIIILjava/lang/String;)V
    .locals 12

    const-string v2, "CarSvc_SystemEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monitorNow: camid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v4, v5}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/car/systemfunc/SystemEventHandler$3;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p6

    move/from16 v9, p4

    move-object/from16 v10, p7

    move/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/car/systemfunc/SystemEventHandler$3;-><init>(Lcom/car/systemfunc/SystemEventHandler;IJIILjava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCollision()V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SystemEventHandler;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    invoke-interface {v0}, Lcom/car/systemfunc/CollisionSensor$onCollisionListener;->onCollision()V

    return-void
.end method

.method progressReport(JLjava/lang/String;I)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.car.monitor.notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "operation"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "percent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendEvent(III)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/car/systemfunc/SystemEventHandler;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 14

    const/4 v0, 0x0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v4, p3, 0x8

    or-int/lit8 v12, v4, 0x40

    const/16 v13, 0x201

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setDefaultAPN(J)V
    .locals 7

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "apn_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "CarSvc_SystemEventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetDefaultAPN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v3, Lcom/car/systemfunc/SystemEventHandler;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
