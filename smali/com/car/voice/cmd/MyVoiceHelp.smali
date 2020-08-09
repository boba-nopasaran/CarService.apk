.class public Lcom/car/voice/cmd/MyVoiceHelp;
.super Ljava/lang/Object;
.source "MyVoiceHelp.java"

# interfaces
.implements Lcom/car/common/VoiceRecognizerCallback;


# static fields
.field public static final ANSWER_FROM_VOICE:I = 0x2

.field public static final FIRST_MENU:I = 0xa

.field public static final INDEX_FROM_VOICE:I = 0x1

.field public static final SECOND_MENU:I = 0xb

.field private static final TAG:Ljava/lang/String; = "CarSvc_MyHelp"


# instance fields
.field mContactMatchImpl:Lcom/car/common/ContactMatchImpl;

.field private mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field mMsgId:I

.field mState:I

.field mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method public constructor <init>(Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    new-instance v0, Lcom/car/voice/cmd/MyVoiceHelp$1;

    invoke-direct {v0, p0}, Lcom/car/voice/cmd/MyVoiceHelp$1;-><init>(Lcom/car/voice/cmd/MyVoiceHelp;)V

    iput-object v0, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iput-object p2, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/cmd/MyVoiceHelp;)Lcom/car/voice/VoiceEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-object v0
.end method


# virtual methods
.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 9

    const-string v5, "CarSvc_MyHelp"

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

    if-eqz p2, :cond_0

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

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v5}, Lcom/car/voice/VoiceUI;->dismissUI()V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mMsgId:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    iget-object v6, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u8d85\u51fa\u53ef\u9009\u8303\u56f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mState:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v5}, Lcom/car/voice/VoiceUI;->onClear()V

    iget-object v6, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    iget v8, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/car/common/voice/SuggestItem;

    iget-object v5, v5, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\uff0c\u60a8\u53ef\u4ee5\u8fd9\u6837\u8bf4\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    sget-object v6, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    iget v7, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/car/common/voice/SuggestItem;

    iget-object v5, v5, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/VoiceHelp$MyHelp;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v4, Lcom/car/common/voice/VoiceHelp$MyHelp;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v1}, Lcom/car/common/voice/SuggestItem;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v1}, Lcom/car/common/voice/SuggestItem;-><init>()V

    const-string v5, "\u8fd4\u56de\u4e0a\u4e00\u7ea7\u83dc\u5355"

    iput-object v5, v1, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 v5, 0xb

    iput v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mState:I

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v5, v3}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mState:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_6

    iget v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mIndex:I

    if-nez v5, :cond_5

    const/16 v5, 0xa

    iput v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mState:I

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v5}, Lcom/car/voice/VoiceUI;->onClear()V

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v6, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    invoke-interface {v5, v6}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u8bf7\u5728\u70b9\u51fb\u9ea6\u514b\u98ce\u56fe\u6807\u540e\uff0c\u5c1d\u8bd5\u8bf4\u51fa\u8be5\u6761\u6307\u4ee4"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public showHelp()V
    .locals 7

    sget-object v3, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v1, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v1}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v2, v1, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/VoiceHelp$MyHelp;

    iget-object v4, v4, Lcom/car/common/voice/VoiceHelp$MyHelp;->category:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u76f8\u5173\u8bed\u97f3\u6307\u4ee4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    iput v4, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mState:I

    iget-object v4, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v5, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mItemList:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u8bf7\u70b9\u51fb\u5176\u4e2d\u4e00\u9879\u8fdb\u884c\u4e86\u89e3\uff0c\u90e8\u5206\u6307\u4ee4\u9700\u8981\u5728\u76f8\u5e94\u529f\u80fd\u5f00\u542f\u540e\u624d\u80fd\u5de5\u4f5c"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/car/voice/cmd/MyVoiceHelp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
