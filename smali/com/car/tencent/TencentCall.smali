.class public Lcom/car/tencent/TencentCall;
.super Ljava/lang/Object;
.source "TencentCall.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;


# static fields
.field public static final CONTACTS_READ_ERROR:I = 0x3ed

.field public static final CONTACTS_READ_FINISHED:I = 0x3ec

.field public static final CONTACTS_READ_START:I = 0x3eb

.field public static final CONTACTS_SYNC_FINISHED:I = 0x3ea

.field public static final CONTACTS_SYNC_ING:I = 0x3e9

.field public static final CONTACTS_SYNC_NONE:I = 0x3e7

.field public static final CONTACTS_SYNC_START:I = 0x3e8

.field public static final DEV_CONTACTS_NOFITY:Ljava/lang/String; = "com.car.bthpone.contacts.notify"

.field static sInstance:Lcom/car/tencent/TencentCall;


# instance fields
.field TAG:Ljava/lang/String;

.field mBTConnected:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mIsCharging:Z

.field mIsIncomingCall:Z

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/tencent/TencentCall;->sInstance:Lcom/car/tencent/TencentCall;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CarSvc_TencentCall"

    iput-object v1, p0, Lcom/car/tencent/TencentCall;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/car/tencent/TencentCall;->mIsCharging:Z

    iput-boolean v2, p0, Lcom/car/tencent/TencentCall;->mIsIncomingCall:Z

    iput-boolean v2, p0, Lcom/car/tencent/TencentCall;->mBTConnected:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/car/tencent/TencentCall;->mStatus:I

    new-instance v1, Lcom/car/tencent/TencentCall$1;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentCall$1;-><init>(Lcom/car/tencent/TencentCall;)V

    iput-object v1, p0, Lcom/car/tencent/TencentCall;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.btphone.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.bthpone.contacts.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/tencent/TencentCall;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/tencent/TencentCall;->init()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/tencent/TencentCall;
    .locals 1

    sget-object v0, Lcom/car/tencent/TencentCall;->sInstance:Lcom/car/tencent/TencentCall;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/tencent/TencentCall;

    invoke-direct {v0, p0}, Lcom/car/tencent/TencentCall;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/tencent/TencentCall;->sInstance:Lcom/car/tencent/TencentCall;

    :cond_0
    sget-object v0, Lcom/car/tencent/TencentCall;->sInstance:Lcom/car/tencent/TencentCall;

    return-object v0
.end method


# virtual methods
.method acceptCall()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.useraction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public answerInComingCall()V
    .locals 0

    invoke-virtual {p0}, Lcom/car/tencent/TencentCall;->acceptCall()V

    return-void
.end method

.method public call(Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)V
    .locals 6

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/tencent/TencentCall;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.call.voip"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, v2}, Lcom/car/tencent/TencentCall;->voipMakeCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTelManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->notifyTelCallStatus(ILcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "callnum"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method doReportBTState(Z)V
    .locals 2

    const-string v0, "persist.call.voip"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/car/tencent/TencentCall;->mBTConnected:Z

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTelManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/car/tencent/TencentCall;->mBTConnected:Z

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->notifyBluetoothStatus(Z)V

    return-void
.end method

.method public getTelCallStatus()I
    .locals 1

    iget v0, p0, Lcom/car/tencent/TencentCall;->mStatus:I

    return v0
.end method

.method hangupCall()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.useraction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accept"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public ignoreInComingCall()V
    .locals 0

    invoke-virtual {p0}, Lcom/car/tencent/TencentCall;->hangupCall()V

    return-void
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->setTelClient(Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;)V

    invoke-virtual {p0}, Lcom/car/tencent/TencentCall;->reportBTState()V

    return-void
.end method

.method readContactsFromDatabase(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "has_phone_number"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "((display_name NOT NULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-string v1, "sort_key"

    aput-object v1, v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "has_phone_number"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_4

    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v14

    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    new-instance v10, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;

    const-string v0, "display_name"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data1"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public refuseInComingCall()V
    .locals 0

    invoke-virtual {p0}, Lcom/car/tencent/TencentCall;->hangupCall()V

    return-void
.end method

.method reportBTState()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/tencent/TencentCall$2;

    invoke-direct {v0, p0}, Lcom/car/tencent/TencentCall$2;-><init>(Lcom/car/tencent/TencentCall;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/car/tencent/TencentCall;->doReportBTState(Z)V

    iget-object v4, p0, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public viewCallRecord(I)V
    .locals 0

    return-void
.end method

.method public viewPhonebook()V
    .locals 0

    return-void
.end method

.method public voipMakeCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ecar.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ecarSendKey"

    const-string v2, "VoipMakeCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmdType"

    const-string v2, "standCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "keySet"

    const-string v2, "name,number"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
