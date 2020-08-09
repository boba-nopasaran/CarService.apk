.class public final Lcom/aispeech/aios/sdk/AIOSForCarSDK;
.super Ljava/lang/Object;
.source "AIOSForCarSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOSForCarSDK"

.field private static mAdapterReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bootAIOS(I)V
    .locals 4

    const-string v0, "AIOSForCarSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSForCarSDK#bootAIOS()] with: delay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK$1;

    invoke-direct {v1}, Lcom/aispeech/aios/sdk/AIOSForCarSDK$1;-><init>()V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static disableAIOS()V
    .locals 3

    const-string v1, "AIOSForCarSDK"

    const-string v2, "[AIOSForCarSDK#disableAIOS()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "aios_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->stop()Z

    return-void
.end method

.method public static enableAIOS()V
    .locals 3

    const-string v1, "AIOSForCarSDK"

    const-string v2, "[AIOSForCarSDK#enableAIOS()]"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "aios.intent.action.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "aios_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->start()Z

    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->rebootAIOS(I)V

    return-void
.end method

.method public static getAIOSState()Ljava/lang/String;
    .locals 2

    const-string v0, "AIOSForCarSDK"

    const-string v1, "[AIOSForCarSDK#getAIOSState()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/SDKNode;->getAIOSState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdapterReadyListener()Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "AIOSForCarSDK"

    const-string v1, "[AIOSForCarSDK#getAdapterReadyListener()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mAdapterReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :try_start_0
    sget-object v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "AIOS SDK must be initialized via AIOSForCarSDK.initializeBridge() or AIOSForCarSDK.initializeBridge()!!!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadyListener()Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "AIOSForCarSDK"

    const-string v1, "[AIOSForCarSDK#getReadyListener()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;

    return-object v0
.end method

.method public static getSimplePackageName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 3
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSForCarSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSForCarSDK#initialize()] with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/SDKNode;->start()Z

    return-void
.end method

.method public static initialize(Landroid/app/Application;Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;)V
    .locals 3
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSForCarSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSForCarSDK#initialize()] with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], aiosReadyListener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/SDKNode;->start()Z

    return-void
.end method

.method public static initialize(Landroid/app/Application;Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;)V
    .locals 3
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "AIOSForCarSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSForCarSDK#initialize()] with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], aiosReadyListener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], adapterReadyListener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;

    sput-object p2, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mAdapterReadyListener:Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/SDKNode;->start()Z

    return-void
.end method

.method public static monotonicTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static onAIOSInitialize()V
    .locals 6

    const-string v3, "AIOSForCarSDK"

    const-string v4, "[AIOSForCarSDK#onAIOSInitialize()]"

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->onInitialize()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->onInitialize()V

    const-string v2, "configs/configs.xml"

    sget-object v3, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/aispeech/aios/sdk/utils/AssetsXmlUtil;->readXmlFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AIOSForCarSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic configs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "aios.intent.action.CUSTOMIZE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "customize_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static rebootAIOS(I)V
    .locals 4

    const-string v0, "AIOSForCarSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSForCarSDK#rebootAIOS()] with: delay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/aispeech/aios/sdk/AIOSForCarSDK$2;

    invoke-direct {v1}, Lcom/aispeech/aios/sdk/AIOSForCarSDK$2;-><init>()V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
