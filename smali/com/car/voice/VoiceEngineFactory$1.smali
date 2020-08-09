.class Lcom/car/voice/VoiceEngineFactory$1;
.super Ljava/lang/Object;
.source "VoiceEngineFactory.java"

# interfaces
.implements Lcom/car/voice/VoiceEngineFactory$VoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/VoiceEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/VoiceEngineFactory;


# direct methods
.method constructor <init>(Lcom/car/voice/VoiceEngineFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/car/common/voice/VoiceHelp;->muteTTS(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onSpeech(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/car/common/voice/VoiceHelp;->muteTTS(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    :cond_0
    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onSpeech(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/car/voice/VoiceUI;->setProcess(Z)V

    return-void
.end method

.method public onResult(IILjava/lang/String;Z)Z
    .locals 15

    const/high16 v11, 0xff0000

    and-int v3, p1, v11

    const v11, 0xffff

    and-int p1, p1, v11

    const-string v11, "CarSvc_VoiceEngineFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onResult from engineType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/car/common/VoiceRecConst;->getEngineTypeString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": reqId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",text = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",isLast = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "CarSvc_VoiceEngineFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mCurrentReqID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v13}, Lcom/car/voice/VoiceEngineFactory;->access$100(Lcom/car/voice/VoiceEngineFactory;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/car/common/voice/PinyinVoiceGrammar;->parseSpeech(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v11, v8, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v12, "exit"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v11}, Lcom/car/voice/VoiceEngineFactory;->stopRecognize()V

    const/4 v9, 0x1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v11, v8, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v12, "restart"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->onClear()V

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v14}, Lcom/car/voice/VoiceEngineFactory;->access$200(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$300(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v12}, Lcom/car/voice/VoiceEngineFactory;->access$200(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v12

    if-ne v11, v12, :cond_4

    const/high16 v11, 0x80000

    if-eq v3, v11, :cond_3

    const/high16 v11, 0x200000

    if-eq v3, v11, :cond_3

    const/high16 v11, 0x10000

    if-ne v3, v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    const/4 v12, 0x6

    iget-object v13, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v13}, Lcom/car/voice/VoiceEngineFactory;->access$200(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/car/voice/VoiceUI;->setProcess(Z)V

    if-eqz p4, :cond_5

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/car/utils/TipPlayer;->setRecognizingStatus(Z)V

    :cond_5
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$300(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$100(Lcom/car/voice/VoiceEngineFactory;)I

    move-result v11

    move/from16 v0, p1

    if-ne v11, v0, :cond_f

    if-eqz v8, :cond_a

    iget-object v11, v8, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v12, "answer"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v8, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v12, "webview"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v8, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v12, "webmusic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_6
    :goto_1
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz p4, :cond_b

    if-nez p2, :cond_b

    const/4 v11, 0x4

    invoke-static {v11}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    :cond_7
    :goto_2
    if-eqz p4, :cond_8

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v11}, Lcom/car/voice/VoiceEngineFactory;->doStop()V

    :cond_8
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$400(Lcom/car/voice/VoiceEngineFactory;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->getSuggestionResult()Ljava/util/List;

    move-result-object v6

    const/4 v5, -0x1

    if-eqz v6, :cond_d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_c

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/car/common/voice/SuggestItem;

    iget-object v11, v11, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/car/common/voice/PinyinVoiceGrammar;->isWordHitting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v5, v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    if-nez p2, :cond_6

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, v0}, Lcom/car/voice/VoiceUI;->onRecognizeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    if-eqz p4, :cond_7

    if-nez p2, :cond_7

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto :goto_2

    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    invoke-static {v5}, Lcom/car/common/voice/VoiceHelp;->indexToString(I)Ljava/lang/String;

    move-result-object p3

    :cond_d
    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$300(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v11

    or-int v12, p1, v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v11, v12, v0, v1, v2}, Lcom/car/common/VoiceRecognizerCallback;->onRecognizeResult(IILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$100(Lcom/car/voice/VoiceEngineFactory;)I

    move-result v11

    move/from16 v0, p1

    if-ne v11, v0, :cond_0

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v11}, Lcom/car/voice/VoiceEngineFactory;->doStop()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u67e5\u627e\u5230"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u4e2a\u5339\u914d\u9009\u9879"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", \u8bf7\u9009\u62e9"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v11}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    iget-object v11, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    const/4 v12, 0x2

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v14}, Lcom/car/voice/VoiceEngineFactory;->access$300(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public onVolumeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory$1;->this$0:Lcom/car/voice/VoiceEngineFactory;

    invoke-static {v0}, Lcom/car/voice/VoiceEngineFactory;->access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/car/voice/VoiceUI;->onVolumeUpdate(I)V

    return-void
.end method
