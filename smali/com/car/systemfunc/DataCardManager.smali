.class public Lcom/car/systemfunc/DataCardManager;
.super Landroid/content/BroadcastReceiver;
.source "DataCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;
    }
.end annotation


# static fields
.field private static final DATA_CARD_QUERY_URL:Ljava/lang/String;

.field private static final DEVICE_ID:Ljava/lang/String;

.field private static IS_MULTI_CARD_PROVIDER:Z = false

.field private static final KEY_LAST_CARD_PROVIDER:Ljava/lang/String; = "last_card_provider"

.field private static final KEY_LAST_ICCID:Ljava/lang/String; = "last_iccid"

.field private static final KEY_LAST_NOTIFIED:Ljava/lang/String; = "last_notified"

.field private static final MAPGOO_INFO_ACTION:Ljava/lang/String; = "intent.action.mapgoo.simtool.info.triffic.v2"

.field private static final MAPGOO_INFO_EXTRA:Ljava/lang/String; = "card_type"

.field private static final MAPGOO_LIMIT:Z

.field private static final MSG_CHECK_DATA_CARD:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CarSvc_DataCardManager"

.field private static final TIP_DATA_USAGE_LIMIT1:Ljava/lang/String; = "\u6570\u636e\u6d41\u91cf\u5373\u5c06\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

.field private static final TIP_DATA_USAGE_LIMIT2:Ljava/lang/String; = "\u6570\u636e\u6d41\u91cf\u5df2\u7ecf\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

.field private static final TIP_DATA_USAGE_LIMIT3:Ljava/lang/String; = "\u6570\u636e\u6d41\u91cf\u5361\u670d\u52a1\u5373\u5c06\u5230\u671f\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

.field private static final TIP_NETWORK_DISCONNECTED:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u53ef\u80fd\u662f\u6570\u636e\u6d41\u91cf\u5df2\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

.field private static final TIP_REAL_NAME:Ljava/lang/String; = "\u4f9d\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\uff0c\u60a8\u7684\u6d41\u91cf\u5361\u5fc5\u987b\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1\uff0c\u5426\u5219\u5c06\u4f9d\u6cd5\u505c\u6b62\u901a\u4fe1\u670d\u52a1\u3002\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\uff0c\u4ee5\u4fbf\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1"

.field private static final TIP_RECHARGE:Ljava/lang/String; = "\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

.field private static sIns:Lcom/car/systemfunc/DataCardManager;


# instance fields
.field mAlreadyPrompt:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentIccid:Ljava/lang/String;

.field private mDataCardDialog:Landroid/app/Dialog;

.field private mDisconnectedTimes:I

.field private mHandler:Landroid/os/Handler;

.field mLastUpdateTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mWaitingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sys.datacard.limit"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapgoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/car/systemfunc/DataCardManager;->MAPGOO_LIMIT:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datacard.query.url"

    const-string v2, "http://api.carassist.cn/datacard/query?"

    invoke-static {v1, v2}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_id=%s&iccid=%s&imei=%s&platform=%s&fw=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/DataCardManager;->DATA_CARD_QUERY_URL:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/DataCardManager;->DEVICE_ID:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/systemfunc/DataCardManager;->IS_MULTI_CARD_PROVIDER:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/car/systemfunc/DataCardManager;->mLastUpdateTime:J

    iput-boolean v4, p0, Lcom/car/systemfunc/DataCardManager;->mAlreadyPrompt:Z

    iput v4, p0, Lcom/car/systemfunc/DataCardManager;->mWaitingCount:I

    new-instance v1, Lcom/car/systemfunc/DataCardManager$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/DataCardManager$1;-><init>(Lcom/car/systemfunc/DataCardManager;)V

    iput-object v1, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/car/systemfunc/DataCardManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput v4, p0, Lcom/car/systemfunc/DataCardManager;->mDisconnectedTimes:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/car/systemfunc/DataCardManager;->MAPGOO_LIMIT:Z

    if-eqz v1, :cond_0

    const-string v1, "CarSvc_DataCardManager"

    const-string v2, "mapgoo sim card limited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "intent.action.mapgoo.simtool.info.triffic.v2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/car/utils/HttpRequestManager;->create()V

    invoke-direct {p0}, Lcom/car/systemfunc/DataCardManager;->isMultiCardProvider()Z

    move-result v1

    sput-boolean v1, Lcom/car/systemfunc/DataCardManager;->IS_MULTI_CARD_PROVIDER:Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/DataCardManager;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/DataCardManager;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/DataCardManager;->mDisconnectedTimes:I

    return v0
.end method

.method static synthetic access$302(Lcom/car/systemfunc/DataCardManager;I)I
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/DataCardManager;->mDisconnectedTimes:I

    return p1
.end method

.method static synthetic access$308(Lcom/car/systemfunc/DataCardManager;)I
    .locals 2

    iget v0, p0, Lcom/car/systemfunc/DataCardManager;->mDisconnectedTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/car/systemfunc/DataCardManager;->mDisconnectedTimes:I

    return v0
.end method

.method static synthetic access$400(Lcom/car/systemfunc/DataCardManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/DataCardManager;->notifyToRechargeIfNetworkDisconnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/car/systemfunc/DataCardManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/DataCardManager;->checkDataUsage(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/car/systemfunc/DataCardManager;->IS_MULTI_CARD_PROVIDER:Z

    return v0
.end method

.method static synthetic access$700(Lcom/car/systemfunc/DataCardManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/DataCardManager;->blockit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/car/systemfunc/DataCardManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/DataCardManager;->blockit()V

    return-void
.end method

.method static synthetic access$900(Lcom/car/systemfunc/DataCardManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private blockit()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/systemfunc/DataCardManager;->blockit(Ljava/lang/String;)V

    return-void
.end method

.method private blockit(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.car.firewall"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object v1, p1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v4, "sim_alert"

    const v5, 0x7f090049

    invoke-static {v3, v4, v5}, Lcom/car/common/OEM;->getStringByID(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/car/systemfunc/DataCardManager;->initDataCardDialog(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICCID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkDataUsage(Z)V
    .locals 14

    const-string v1, ""

    iget-object v10, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v10, "ro.hardware"

    const-string v11, "unknown"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ro.product.fw_ver"

    const-string v11, "0.0.1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/car/systemfunc/DataCardManager;->DATA_CARD_QUERY_URL:Ljava/lang/String;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/car/systemfunc/DataCardManager;->DEVICE_ID:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    const/4 v12, 0x4

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "persist.device.flag"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const-string v10, "E:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v2, 0x8

    :goto_0
    if-ltz v2, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "&flag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v10, "ro.ota.typeid"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "&model="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v10, "sys.datacard.params"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CarSvc_DataCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkDataUsage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/utils/HttpRequestManager;->instance()Lcom/car/utils/HttpRequestManager;

    move-result-object v10

    new-instance v11, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;

    invoke-direct {v11, p0, p1}, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;-><init>(Lcom/car/systemfunc/DataCardManager;Z)V

    invoke-virtual {v10, v9, v11}, Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V

    iget-object v10, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xc8

    const-wide/32 v12, 0x493e0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method public static create(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/car/systemfunc/DataCardManager;->DATA_CARD_QUERY_URL:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CarSvc_DataCardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created, invalid DATA_CARD_QUERY_URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/systemfunc/DataCardManager;->DATA_CARD_QUERY_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/car/systemfunc/DataCardManager;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/DataCardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/systemfunc/DataCardManager;->sIns:Lcom/car/systemfunc/DataCardManager;

    sget-object v0, Lcom/car/systemfunc/DataCardManager;->sIns:Lcom/car/systemfunc/DataCardManager;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/DataCardManager;->checkDataUsageDelayed(I)V

    const-string v0, "CarSvc_DataCardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created, IS_MULTI_CARD_PROVIDER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/car/systemfunc/DataCardManager;->IS_MULTI_CARD_PROVIDER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDataCardDialog(Ljava/lang/String;)V
    .locals 5

    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mDataCardDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(I)V

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICCID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/car/systemfunc/DataCardManager$2;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/DataCardManager$2;-><init>(Lcom/car/systemfunc/DataCardManager;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static instance()Lcom/car/systemfunc/DataCardManager;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/DataCardManager;->sIns:Lcom/car/systemfunc/DataCardManager;

    return-object v0
.end method

.method private isMultiCardProvider()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.share.android"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.coagent.ecar"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.ecar.assistantnew"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v0, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyToRechargeIfNetworkDisconnected()V
    .locals 7

    iget-object v4, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_iccid"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "last_card_provider"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/car/systemfunc/DataCardManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "ecar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tian_an"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u53ef\u80fd\u662f\u6570\u636e\u6d41\u91cf\u5df2\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_1
    return-void
.end method


# virtual methods
.method public checkDataUsageDelayed(I)V
    .locals 4

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method eCar2Init(Z)V
    .locals 5

    const-string v2, "CarSvc_DataCardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eCar2Init:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.ecar.assistantnew"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.ecar.assistantnew"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-static {}, Lcom/car/ecar/ECarManager;->getInstance()Lcom/car/ecar/ECarManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/ecar/ECarManager;->getInstance()Lcom/car/ecar/ECarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/ecar/ECarManager;->deinit()V

    :cond_0
    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v4, "com.ecar.assistantnew"

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ecar.assistantnew"

    const-string v3, "com.ecar.assistantnew.service.BootService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v2, Lcom/car/ecar/ECarManager;

    invoke-direct {v2}, Lcom/car/ecar/ECarManager;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/car/ecar/ECarManager;->init(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method eCarInit(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "CarSvc_DataCardManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eCarInit:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v5, "com.coagent.ecar"

    invoke-static {v2, v5}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v5, "com.coagent.ecar"

    invoke-static {v2, v5}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-static {}, Lcom/car/ecar/ECarManager;->getInstance()Lcom/car/ecar/ECarManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/ecar/ECarManager;->getInstance()Lcom/car/ecar/ECarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/ecar/ECarManager;->deinit()V

    :cond_0
    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v6, "com.coagent.ecar"

    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v6, "com.coagent.voip"

    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v5, "com.ecar.AppManager"

    if-nez p1, :cond_4

    :goto_2
    invoke-static {v2, v5, v3}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.coagent.ecar"

    const-string v3, "com.coagent.ecarnet.car.service.BootService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v2, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v2, Lcom/car/ecar/ECarManager;

    invoke-direct {v2}, Lcom/car/ecar/ECarManager;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/car/ecar/ECarManager;->init(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method hiCarInit(Z)V
    .locals 3

    const-string v0, "CarSvc_DataCardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hiCarInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v1, "com.share.android"

    invoke-static {v0, v1}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v1, "com.share.android"

    invoke-static {v0, v1}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "ctl.stop"

    const-string v1, "tianetd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    const-string v2, "com.share.android"

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string v0, "ctl.start"

    const-string v1, "tianetd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0xc8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/car/systemfunc/DataCardManager;->mLastUpdateTime:J

    sub-long v4, v2, v6

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    const-wide/16 v8, 0xe10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    const-string v6, "intent.action.mapgoo.simtool.info.triffic.v2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "card_type"

    const/16 v7, -0x6e

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "CarSvc_DataCardManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapgoo cardType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/car/systemfunc/DataCardManager;->blockit()V

    goto :goto_0
.end method
