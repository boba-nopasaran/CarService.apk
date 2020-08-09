.class public Lcom/car/systemfunc/WatchDogManager;
.super Landroid/content/BroadcastReceiver;
.source "WatchDogManager.java"


# static fields
.field static FEEDDOG_INTERVAL:I = 0x0

.field static final FEED_DOG_ACTION:Ljava/lang/String; = "com.car.feeddog"

.field static final TAG:Ljava/lang/String; = "CarSvc_WatchDogManager"

.field static final WATCHDOG_CODE:I = 0x3ea

.field static final WATCHDOG_NODE:Ljava/lang/String; = "/sys/power/mcu_watchdog_control"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mMyWakeLock:Lcom/car/common/util/MyWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.car.feedtime"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/car/systemfunc/WatchDogManager$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/WatchDogManager$1;-><init>(Lcom/car/systemfunc/WatchDogManager;)V

    iput-object v0, p0, Lcom/car/systemfunc/WatchDogManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method cancelAlarm(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method doFeedDog()V
    .locals 4

    const-string v2, "ro.func.flag"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    const-string v2, "sys.car.feedtime"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mcu.set"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "addr"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "value"

    sget v3, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/car/systemfunc/WatchDogManager;->resetAlarm()V

    return-void

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const-string v2, "/sys/power/mcu_watchdog_control"

    const-string v3, "feeddog"

    invoke-virtual {p0, v2, v3}, Lcom/car/systemfunc/WatchDogManager;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method enableWatchDog(Z)V
    .locals 5

    const/4 v2, 0x0

    const-string v3, "ro.func.flag"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    const-string v3, "sys.car.feedtime"

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mcu.set"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "addr"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "value"

    if-eqz p1, :cond_0

    sget v2, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x6

    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const-string v3, "/sys/power/mcu_watchdog_control"

    if-eqz p1, :cond_3

    const-string v2, "enable"

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/car/systemfunc/WatchDogManager;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "disable"

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/car/common/util/MyWakeLock;

    iget-object v2, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x2710

    invoke-direct {v1, v2, v4, v5}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.feeddog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mcu.done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/WatchDogManager;->enableWatchDog(Z)V

    invoke-virtual {p0}, Lcom/car/systemfunc/WatchDogManager;->doFeedDog()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.syswakeup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.gotosleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.feeddog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    invoke-virtual {p0}, Lcom/car/systemfunc/WatchDogManager;->doFeedDog()V

    const-string v1, "ro.func.flag"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v1, v3}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mcu.done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v1, v3}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto :goto_0
.end method

.method resetAlarm()V
    .locals 11

    const/16 v4, 0x3ea

    const-string v0, "com.car.feeddog"

    invoke-virtual {p0, v4, v0}, Lcom/car/systemfunc/WatchDogManager;->cancelAlarm(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/car/systemfunc/WatchDogManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v0, "sys.car.feedtime"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xc

    sget v1, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "CarSvc_WatchDogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feed dog alarm set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v5, "com.car.feeddog"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/car/systemfunc/WatchDogManager;->setAlarm(IJILjava/lang/String;)V

    iget-object v0, p0, Lcom/car/systemfunc/WatchDogManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/car/systemfunc/WatchDogManager;->FEEDDOG_INTERVAL:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x2710

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method setAlarm(IJILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/car/systemfunc/WatchDogManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method writeSysValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string v2, "CarSvc_WatchDogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
