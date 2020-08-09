.class public Lcom/car/voice/cmd/Dial;
.super Ljava/lang/Object;
.source "Dial.java"

# interfaces
.implements Lcom/car/common/VoiceRecognizerCallback;


# static fields
.field public static final ANSWER_FROM_VOICE:I = 0x2

.field public static final BT_CALL_NUM_KEY:Ljava/lang/String; = "callnum"

.field public static final BT_CALL_OUTGOING:Ljava/lang/String; = "com.car.btphone.CALL_OUTGOING"

.field public static final INDEX_FROM_VOICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_Dial"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContactMatchImpl:Lcom/car/common/ContactMatchImpl;

.field private mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

.field private mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mIsBTConnected:Z

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMsgId:I

.field mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method public constructor <init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/voice/cmd/Dial;->mIsBTConnected:Z

    new-instance v2, Lcom/car/voice/cmd/Dial$1;

    invoke-direct {v2, p0}, Lcom/car/voice/cmd/Dial$1;-><init>(Lcom/car/voice/cmd/Dial;)V

    iput-object v2, p0, Lcom/car/voice/cmd/Dial;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/voice/cmd/Dial$2;

    invoke-direct {v2, p0}, Lcom/car/voice/cmd/Dial$2;-><init>(Lcom/car/voice/cmd/Dial;)V

    iput-object v2, p0, Lcom/car/voice/cmd/Dial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/voice/cmd/Dial;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    iput-object p2, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iput-object p3, p0, Lcom/car/voice/cmd/Dial;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    new-instance v2, Lcom/car/common/ContactMatchImpl;

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/car/common/ContactMatchImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/voice/cmd/Dial;->mContactMatchImpl:Lcom/car/common/ContactMatchImpl;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/car/voice/cmd/Dial;->getBTStatus(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/cmd/Dial;)Lcom/car/voice/VoiceEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Dial;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-object v0
.end method

.method static isDigits(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-char v1, v0, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x2a

    if-eq v1, v7, :cond_0

    const/16 v7, 0x23

    if-ne v1, v7, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    return v6
.end method


# virtual methods
.method public dial(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/voice/cmd/Dial;->mIsBTConnected:Z

    if-nez v13, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v13

    const-string v14, "\u8bf7\u5148\u5c06\u84dd\u7259\u4e0e\u624b\u673a\u8fde\u63a5"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13}, Lcom/car/voice/VoiceUI;->dismissUI()V

    new-instance v1, Landroid/content/Intent;

    const-string v13, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "callnum"

    move-object/from16 v0, p1

    invoke-virtual {v1, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mContactMatchImpl:Lcom/car/common/ContactMatchImpl;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/car/common/ContactMatchImpl;->getMatchedContacts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_2

    :cond_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v13

    const-string v14, "\u8bf7\u786e\u8ba4\u624b\u673a\u8054\u7cfb\u4eba\u662f\u5426\u5df2\u7ecf\u5bfc\u5165\u84dd\u7259\u7535\u8bdd\u7c3f"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, "CarSvc_Dial"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get contacts: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v3, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v3}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v5, v3, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6253\u7535\u8bdd\u7ed9"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\uff0c\u8bf7\u786e\u5b9a\u6216\u8005\u53d6\u6d88"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13, v12}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v3}, Lcom/car/common/voice/SuggestItem;-><init>()V

    const-string v13, "\u786e\u5b9a"

    iput-object v13, v3, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v3}, Lcom/car/common/voice/SuggestItem;-><init>()V

    const-string v13, "\u53d6\u6d88"

    iput-object v13, v3, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13, v4}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/voice/cmd/Dial;->mIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13, v6}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    const-string v12, "\u53ef\u80fd\u5339\u914d\u7684\u8054\u7cfb\u4eba\u6709 "

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v13, v12}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u8bf7\u9009\u62e9\u7b2c\u51e0\u6761\u6216\u8005\u53d6\u6d88"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/voice/cmd/Dial;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method getBTStatus(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "connected"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/voice/cmd/Dial;->mIsBTConnected:Z

    iget-boolean v1, p0, Lcom/car/voice/cmd/Dial;->mIsBTConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "CarSvc_Dial"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRecognizeResult reqId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isLast="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u8bf7\u91cd\u65b0\u64cd\u4f5c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v5, p0, Lcom/car/voice/cmd/Dial;->mMsgId:I

    if-ne v5, v4, :cond_7

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    iget-object v5, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    iget-object v6, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v3, " "

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarSvc_Dial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "callnum"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    :cond_3
    :goto_1
    move v3, v4

    goto/16 :goto_0

    :cond_4
    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->isCancel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/car/voice/cmd/Dial;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/car/voice/RecDefaultProcess;->handleDefaultProcess(IILjava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p4, :cond_6

    iget-object v5, p0, Lcom/car/voice/cmd/Dial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u6ca1\u6709\u542c\u6e05\u695a\uff0c\u8bf7\u9009\u62e9\u7b2c\u51e0\u4e2a\u6216\u8005\u53d6\u6d88"

    invoke-virtual {v5, v6, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_1

    :cond_6
    invoke-static {v8}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto/16 :goto_0

    :cond_7
    iget v5, p0, Lcom/car/voice/cmd/Dial;->mMsgId:I

    if-ne v5, v8, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->isOk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mList:Ljava/util/List;

    iget v5, p0, Lcom/car/voice/cmd/Dial;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    const-string v3, "CarSvc_Dial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "callnum"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    :cond_a
    :goto_2
    move v3, v4

    goto/16 :goto_0

    :cond_b
    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->isCancel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_2

    :cond_d
    iget-object v5, p0, Lcom/car/voice/cmd/Dial;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/car/voice/RecDefaultProcess;->handleDefaultProcess(IILjava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz p4, :cond_e

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u6ca1\u6709\u542c\u6e05\u695a\uff0c\u8bf7\u786e\u5b9a\u6216\u8005\u53d6\u6d88"

    invoke-virtual {v5, v6, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/voice/cmd/Dial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_e
    invoke-static {v8}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto/16 :goto_0
.end method
