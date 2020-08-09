.class public Lcom/car/voice/RecDefaultProcess;
.super Ljava/lang/Object;
.source "RecDefaultProcess.java"

# interfaces
.implements Lcom/car/common/VoiceRecognizerCallback;


# static fields
.field public static final NORMAL_FROM_VOICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_DefaultProc"


# instance fields
.field private mDial:Lcom/car/voice/cmd/Dial;

.field private mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field mHandler:Landroid/os/Handler;

.field private mMusic:Lcom/car/voice/cmd/Music;

.field private mMyHelp:Lcom/car/voice/cmd/MyVoiceHelp;

.field private mNavi:Lcom/car/voice/cmd/Navi;

.field private mRepeatFailCount:I

.field private mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    new-instance v0, Lcom/car/voice/RecDefaultProcess$1;

    invoke-direct {v0, p0}, Lcom/car/voice/RecDefaultProcess$1;-><init>(Lcom/car/voice/RecDefaultProcess;)V

    iput-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/RecDefaultProcess;)Lcom/car/voice/VoiceEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V
    .locals 3

    iput-object p1, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iput-object p2, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iget-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0, p0}, Lcom/car/voice/VoiceEngineFactory;->setDefaultCallback(Lcom/car/common/VoiceRecognizerCallback;)V

    new-instance v0, Lcom/car/voice/cmd/Navi;

    iget-object v1, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iget-object v2, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-direct {v0, p0, v1, v2}, Lcom/car/voice/cmd/Navi;-><init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceEngineFactory;Lcom/car/voice/VoiceUI;)V

    iput-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    new-instance v0, Lcom/car/voice/cmd/Dial;

    iget-object v1, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v2, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-direct {v0, p0, v1, v2}, Lcom/car/voice/cmd/Dial;-><init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V

    iput-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mDial:Lcom/car/voice/cmd/Dial;

    new-instance v0, Lcom/car/voice/cmd/Music;

    iget-object v1, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v2, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-direct {v0, p0, v1, v2}, Lcom/car/voice/cmd/Music;-><init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V

    iput-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    new-instance v0, Lcom/car/voice/cmd/MyVoiceHelp;

    iget-object v1, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v2, p0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-direct {v0, v1, v2}, Lcom/car/voice/cmd/MyVoiceHelp;-><init>(Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V

    iput-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mMyHelp:Lcom/car/voice/cmd/MyVoiceHelp;

    iget-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/car/common/voice/VoiceGrammar;->loadGrammer(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/car/common/voice/PinyinVoiceGrammar;->loadGrammer(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method findAndStartApp(Ljava/lang/String;)V
    .locals 14

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v4, v11, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x30200000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6b63\u5728\u6253\u5f00"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :goto_2
    return-void

    :cond_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_3
    const/4 v11, 0x2

    if-ge v4, v11, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_5

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_4
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x30200000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v11}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6b63\u5728\u6253\u5f00"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_2

    :cond_5
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v11

    const-string v12, "\u6ca1\u6709\u627e\u5230\u76f8\u5173\u5e94\u7528"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2
.end method

.method public handleDefaultProcess(IILjava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/car/common/voice/VoiceGrammar;->parseSpeech(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/car/voice/RecDefaultProcess;->onRecognizeResult(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 38

    const/high16 v35, 0xff0000

    and-int v11, p1, v35

    const v35, 0xffff

    and-int p1, p1, v35

    const-string v35, "CarSvc_DefaultProc"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "onRecognizeResult from engineType = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {v11}, Lcom/car/common/VoiceRecConst;->getEngineTypeString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", reqId="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",value="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",text="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",isLast="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_45

    if-eqz p3, :cond_45

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_45

    invoke-static/range {p3 .. p3}, Lcom/car/common/voice/PinyinVoiceGrammar;->parseSpeech(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    move-result-object v13

    if-nez v13, :cond_2

    if-eqz p4, :cond_1

    if-lez p1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move/from16 v35, v0

    add-int/lit8 v36, v35, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->showUnknownAction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/16 v35, 0x0

    :goto_1
    return v35

    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u518d\u89c1"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_0

    :cond_1
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto :goto_0

    :cond_2
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    iget-object v4, v13, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const-string v35, "answer"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    const-string v35, "content"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v8, v1}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v8}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_2
    const/16 v35, 0x1

    goto :goto_1

    :cond_4
    const-string v35, "webview"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    const-string v35, "url"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v35, ":"

    const/16 v36, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const/16 v35, 0x0

    aget-object v35, v19, v35

    const-string v36, "http"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v36, v19, v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v36, v19, v36

    invoke-interface/range {v35 .. v36}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u4e3a\u60a8\u67e5\u8be2"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    const-string v35, "http"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v35, "webjump"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    const-string v35, "url"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, "http"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u4e3a\u60a8\u6253\u5f00\u7f51\u9875"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    new-instance v17, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v35, 0x30000000

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    const/16 v36, 0x4

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v33

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_9
    const-string v35, "webmusic"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    :try_start_0
    new-instance v31, Lorg/json/JSONTokener;

    const-string v35, "json"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const-string v35, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v35

    if-eqz v35, :cond_b

    :try_start_1
    const-string v35, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    const/4 v15, 0x0

    :goto_3
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-ge v15, v0, :cond_a

    new-instance v29, Lcom/car/common/voice/SuggestItem;

    invoke-direct/range {v29 .. v29}, Lcom/car/common/voice/SuggestItem;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v35, "singer"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v35, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    const-string v35, "downloadUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/voice/cmd/Music;->setItemList(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :cond_b
    :try_start_3
    const-string v35, "musicinfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v35

    if-eqz v35, :cond_a

    :try_start_4
    const-string v35, "musicinfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-ge v15, v0, :cond_a

    new-instance v29, Lcom/car/common/voice/SuggestItem;

    invoke-direct/range {v29 .. v29}, Lcom/car/common/voice/SuggestItem;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v35, "artist"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    const-string v35, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    const-string v35, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "http"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :catch_2
    move-exception v9

    :try_start_5
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :cond_d
    const-string v35, "voicehelp"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMyHelp:Lcom/car/voice/cmd/MyVoiceHelp;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/MyVoiceHelp;->showHelp()V

    goto/16 :goto_2

    :cond_e
    const-string v35, "navi"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    const-string v35, "location"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Navi;->waitLocation()V

    goto/16 :goto_2

    :cond_10
    const-string v35, "navimylocation"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    const-string v35, "homechange"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Navi;->homeChange()V

    goto/16 :goto_2

    :cond_11
    const-string v35, "companychange"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Navi;->companyChange()V

    goto/16 :goto_2

    :cond_12
    const-string v35, "navihome"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Navi;->naviHome()V

    goto/16 :goto_2

    :cond_13
    const-string v35, "navicompany"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mNavi:Lcom/car/voice/cmd/Navi;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Navi;->naviCompany()V

    goto/16 :goto_2

    :cond_14
    const-string v35, "wifion"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    const-string v36, "wifi"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    const/4 v10, 0x1

    :goto_6
    if-nez v10, :cond_16

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u6253\u5f00wifi"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_15
    const/4 v10, 0x0

    goto :goto_6

    :cond_16
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "wifi\u5df2\u7ecf\u6253\u5f00"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_17
    const-string v35, "wifioff"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    const-string v36, "wifi"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_18

    const/4 v10, 0x1

    :goto_7
    if-eqz v10, :cond_19

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u5173\u95edwifi"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_18
    const/4 v10, 0x0

    goto :goto_7

    :cond_19
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "wifi\u5df2\u7ecf\u5173\u95ed"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_1a
    const-string v35, "bton"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_1b
    const-string v35, "btoff"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_1c
    const-string v35, "fmon"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_1d
    const-string v35, "fmoff"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_1e
    const-string v35, "fmfreq"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    const-string v35, "freq"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_3

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v0, v12}, Lcom/car/common/SystemCtrl;->fmFreq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_1f
    const-string v35, "calldial"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    if-nez p4, :cond_20

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    const-string v35, "name"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mDial:Lcom/car/voice/cmd/Dial;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/car/voice/cmd/Dial;->dial(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_21
    const-string v35, "appopen"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognize()V

    const-string v35, "app"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/car/voice/RecDefaultProcess;->findAndStartApp(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_22
    const-string v35, "apphome"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognize()V

    new-instance v14, Landroid/content/Intent;

    const-string v35, "android.intent.action.MAIN"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v35, "android.intent.category.HOME"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v35, 0x10200000

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u56de\u5230\u4e3b\u9875"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_23
    const-string v35, "musicopen"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->play()V

    new-instance v17, Landroid/content/Intent;

    const-string v35, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v35, Landroid/content/ComponentName;

    const-string v36, "com.android.music"

    const-string v37, "com.android.music.MediaPlaybackActivity"

    invoke-direct/range {v35 .. v37}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v35, 0x30000000

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_24
    const-string v35, "musicplayall"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->playAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_25
    const-string v35, "musicplay"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->play()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_26
    const-string v35, "musicstop"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->stop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_27
    const-string v35, "musicprev"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->prev()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_28
    const-string v35, "musicnext"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->next()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_29
    const-string v35, "musicsong"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2b

    const-string v35, "song"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const/high16 v35, 0x20000

    move/from16 v0, v35

    if-eq v11, v0, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/car/voice/cmd/Music;->playSong(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/car/voice/cmd/Music;->playSongAgain(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_2b
    const-string v35, "musicone"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->loopOne()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_2c
    const-string v35, "musicall"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->loopAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_2d
    const-string v35, "musicshuffle"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->shuffle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_2e
    const-string v35, "musicorder"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mMusic:Lcom/car/voice/cmd/Music;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/cmd/Music;->orderly()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_2f
    const-string v35, "callaccept"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u63a5\u542c\u6765\u7535"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    new-instance v17, Landroid/content/Intent;

    const-string v35, "com.car.btphone.useraction"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "accept"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_30
    const-string v35, "callreject"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    new-instance v17, Landroid/content/Intent;

    const-string v35, "com.car.btphone.useraction"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "accept"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u5df2\u7ecf\u62d2\u7edd\u6765\u7535"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_31
    const-string v35, "navireal"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_32

    new-instance v17, Landroid/content/Intent;

    const-string v35, "com.car.navi.useraction"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "navi_action"

    const/16 v36, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u5df2\u7ecf\u5207\u6362\u5230\u5b9e\u666f\u5bfc\u822a"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_32
    const-string v35, "navimap"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_33

    new-instance v17, Landroid/content/Intent;

    const-string v35, "com.car.navi.useraction"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v35, "navi_action"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u5df2\u7ecf\u5207\u6362\u5230\u5730\u56fe\u5bfc\u822a"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_33
    const-string v35, "naviquit"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_34

    const-string v35, "sys.default.map"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    const-string v36, "activity"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u5bfc\u822a\u5df2\u9000\u51fa"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_34
    const-string v35, "cameraopen"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_35

    new-instance v17, Landroid/content/Intent;

    const-string v35, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v35, Landroid/content/ComponentName;

    const-string v36, "com.car.dvr"

    const-string v37, "com.car.dvr.CameraActivity"

    invoke-direct/range {v35 .. v37}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v35, 0x30000000

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_35
    const-string v35, "volumeup"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->volumeUp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_36
    const-string v35, "volumedown"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->volumeDown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_37
    const-string v35, "volumemute"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_38

    const-string v35, "musicmute"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_39

    :cond_38
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->volumeOff(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_39
    const-string v35, "volumenormal"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3a

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->volumeOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_3a
    const-string v35, "musicmax"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->volumeMax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_3b
    const-string v35, "naviopen"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3d

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v35, "android.intent.action.LAUNCHGPS"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const/high16 v35, 0x10000

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_3c

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v35

    if-eqz v35, :cond_3c

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const/16 v35, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v27

    invoke-direct {v7, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v35, 0x10200000

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u6b63\u5728\u6253\u5f00\u5bfc\u822a\u8f6f\u4ef6"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_3c
    const-string v35, "geo:0,0"

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    new-instance v17, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v35, 0x30000000

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_8

    :cond_3d
    const-string v35, "navinear"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3f

    const-string v35, "location"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    goto/16 :goto_2

    :cond_3e
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u518d\u89c1"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_2

    :cond_3f
    const-string v35, "backlightup"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->backlightUp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_40
    const-string v35, "backligthdown"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/car/common/SystemCtrl;->backlightDown(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_41
    const-string v35, "radarclose"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_2

    :cond_42
    if-eqz p4, :cond_44

    if-lez p1, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move/from16 v35, v0

    add-int/lit8 v36, v35, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_43

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->showUnknownAction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_9
    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_43
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u518d\u89c1"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_9

    :cond_44
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto :goto_9

    :cond_45
    if-eqz p2, :cond_47

    if-eqz p3, :cond_47

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move/from16 v35, v0

    add-int/lit8 v36, v35, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_46

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_a
    const/16 v35, 0x1

    goto/16 :goto_1

    :cond_46
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",\u518d\u89c1"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",\u518d\u89c1"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_a

    :cond_47
    if-eqz p4, :cond_49

    if-lez p1, :cond_49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move/from16 v35, v0

    add-int/lit8 v36, v35, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_48

    const-string v35, "CarSvc_DefaultProc"

    const-string v36, "You Don\'t Speech"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v35

    const-string v36, "\u60a8\u597d\u50cf\u6ca1\u6709\u8bf4\u8bdd\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->showUnSpeech()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_48
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/voice/RecDefaultProcess;->mRepeatFailCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/RecDefaultProcess;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto/16 :goto_a

    :cond_49
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto/16 :goto_a
.end method
