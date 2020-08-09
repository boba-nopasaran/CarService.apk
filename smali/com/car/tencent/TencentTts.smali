.class public Lcom/car/tencent/TencentTts;
.super Landroid/content/BroadcastReceiver;
.source "TencentTts.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;


# static fields
.field static final TYPE_NAME:[Ljava/lang/String;

.field static sInstance:Lcom/car/tencent/TencentTts;


# instance fields
.field isSpeaking:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mId:J

.field mLastPlayId:Ljava/lang/String;

.field mLock:Ljava/lang/Object;

.field mQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTtsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/tencent/TencentTts;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/car/tencent/TencentTts;->mId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mLastPlayId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mTtsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/tencent/TencentTts;->isSpeaking:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/tencent/TencentTts$1;

    invoke-direct {v0, p0}, Lcom/car/tencent/TencentTts$1;-><init>(Lcom/car/tencent/TencentTts;)V

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/car/tencent/TencentTts;
    .locals 1

    sget-object v0, Lcom/car/tencent/TencentTts;->sInstance:Lcom/car/tencent/TencentTts;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/tencent/TencentTts;

    invoke-direct {v0}, Lcom/car/tencent/TencentTts;-><init>()V

    sput-object v0, Lcom/car/tencent/TencentTts;->sInstance:Lcom/car/tencent/TencentTts;

    :cond_0
    sget-object v0, Lcom/car/tencent/TencentTts;->sInstance:Lcom/car/tencent/TencentTts;

    return-object v0
.end method

.method private playTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/car/tencent/TencentTts;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/car/tencent/TencentTts;->mId:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/car/tencent/TencentTts;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/car/tencent/TencentTts;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentTts;->playNext(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/car/tencent/TencentTts;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tencent.tts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/tencent/TencentTts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/car/tencent/TencentTts;->mContext:Landroid/content/Context;

    const-string v3, "persist.tts.type"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->initTTS(Landroid/content/Context;I)V

    return-void
.end method

.method public onPlayBegin()V
    .locals 0

    return-void
.end method

.method public onPlayCompleted()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/tencent/TencentTts;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentTts;->playNext(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayInterrupted()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/car/tencent/TencentTts;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/tencent/TencentTts;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentTts;->playNext(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/car/tencent/TencentTts;->TYPE_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/car/tencent/TencentTts;->playTTS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method playNext(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/tencent/TencentTts;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-string v8, ""

    const/4 v10, -0x1

    const-string v9, ""

    const/4 v11, -0x1

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v12, "_"

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    const-string v12, "_N"

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v9, v4

    move v11, v5

    goto :goto_0

    :cond_1
    const/4 v12, -0x1

    if-ne v10, v12, :cond_2

    move v10, v5

    move-object v8, v4

    goto :goto_0

    :cond_2
    const-string v12, "_N"

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-gt v5, v11, :cond_0

    move v11, v5

    move-object v9, v4

    goto :goto_0

    :cond_3
    if-lt v5, v10, :cond_0

    move v10, v5

    move-object v8, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    move-object v8, v9

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_6

    monitor-exit v13

    :goto_1
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mLastPlayId:Ljava/lang/String;

    const-string v14, "_N"

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    monitor-exit v13

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->stopSpeak()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTtsManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v2, v0}, Lcom/tencent/wecarspeech/sdk/TASTtsManager;->speak(Ljava/lang/String;Lcom/tencent/wecarspeech/sdk/TASTtsManager$ITASTtsListener;)V

    const-string v12, "_N"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x66

    invoke-virtual {v12, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/tencent/TencentTts;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x66

    const-wide/32 v16, 0xea60

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public playTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/tencent/TencentTts;->playTTS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
