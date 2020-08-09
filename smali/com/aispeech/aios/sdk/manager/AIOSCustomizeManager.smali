.class public final Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;
.super Lcom/aispeech/aios/common/manage/AIOSManager;
.source "AIOSCustomizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;
    }
.end annotation


# static fields
.field private static final COMMANDS_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AIOSCustomizeManager"

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;


# instance fields
.field private customizeCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;"
        }
    .end annotation
.end field

.field private customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

.field mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/common/manage/AIOSManager;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;)Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-class v1, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mInstance:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized registerCommands(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCommands prepare !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;-><init>(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    if-nez v0, :cond_1

    const-string p1, "sdk.abandon.no.listener"

    :cond_0
    return-object p1

    :cond_1
    array-length v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->isNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t handle nonnull message or call when parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanCommands()V
    .locals 3

    const-string v0, "AIOSCustomizeManager"

    const-string v1, "[AIOSCustomizeManager#cleanCommands()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.command.clean"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public customizeRecorder(ZZZ)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#customizeRecorder()] with: aecEnable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], interruptEnable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], reversedChannelEnable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.recorder.customize"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public customizeTTSData(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#customizeTTSData()] with: ttsData = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AIOSCustomizeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ customizeTTSData ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/ailog/AILog;->json(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.tips.common"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public disableNativeShortcutWakeup([Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const-string v6, "AIOSCustomizeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AIOSCustomizeManager#disableNativeShortcutWakeup()] with: pinyins = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/aispeech/aios/sdk/utils/StringUtil;->isLegalPinyin(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pinyin is illegal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v6

    const-string v7, "sdk.customize.native.shortcut.single.disable"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public getCustomizeListener()Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    return-object v0
.end method

.method public handleCall(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->checkState(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AIOSCustomizeManager"

    invoke-static {v1, p1, p2}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "AIOSCustomizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ttimestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk.customize.command.effect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p2, v6

    const-string v2, "/customize/sdk"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    invoke-interface {v1, v0}, Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;->onCommandEffect(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "AIOSCustomizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback done\ttimestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->monotonicTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "sdk.customize.shortcut.wakeup.effect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    aget-object v2, p2, v6

    invoke-interface {v1, v2}, Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;->onShortcutWakeUp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNonNull(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInitialize()V
    .locals 18

    const-string v14, "AIOSCustomizeManager"

    const-string v15, "[AIOSCustomizeManager#onInitialize()]"

    invoke-static {v14, v15}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    if-nez v14, :cond_0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setNativeShortcutWakeupsEnabled(Z)V

    new-instance v14, Lcom/aispeech/aios/common/bean/CustomizeTTSData;

    invoke-direct {v14}, Lcom/aispeech/aios/common/bean/CustomizeTTSData;-><init>()V

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/aispeech/aios/common/bean/CustomizeTTSData;->getCustomizeTTS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeTTSData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v16, "custom_cmd.xml"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/aispeech/aios/sdk/utils/PropertyUtil;->getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v14, "url"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v6, 0x0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_3

    invoke-interface {v12, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string v14, "name"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_2

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    const-string v14, "name"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/aispeech/aios/sdk/bean/Command;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v14}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->registerCommands(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v15

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14
.end method

.method public onSubscribe()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.customize.command.effect"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.customize.shortcut.wakeup.effect"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnsubscribe()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.customize.command.effect"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.customize.shortcut.wakeup.effect"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public regCommands(Ljava/util/List;)V
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;)V"
        }
    .end annotation

    const-string v14, "AIOSCustomizeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[AIOSCustomizeManager#regCommands()] with: commands = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    if-eqz p1, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    if-nez v14, :cond_0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_2

    :cond_1
    monitor-exit v15

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v16, "custom_cmd.xml"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/aispeech/aios/sdk/utils/PropertyUtil;->getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v14, "url"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v6, 0x0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    :goto_1
    if-ge v6, v9, :cond_5

    invoke-interface {v12, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string v14, "name"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_4

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    const-string v14, "name"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/aispeech/aios/sdk/bean/Command;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v14}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeCommandList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->registerCommands(Ljava/util/List;)V

    :cond_6
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14
.end method

.method public regCommands(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#regCommands()] with: commands = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], isClearCache = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->regCommands(Ljava/util/List;)V

    return-void
.end method

.method public registerCustomizeListener(Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;)V
    .locals 5
    .param p1    # Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#registerCustomizeListener()] with: listener = ["

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

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.app.binding"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getSimplePackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "customize"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->onSubscribe()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    return-void
.end method

.method public registerShortcutWakeups(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;",
            ">;)V"
        }
    .end annotation

    const-string v8, "AIOSCustomizeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AIOSCustomizeManager#registerShortcutWakeups()] with: shortcutWakeups = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->getThreshold()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AIOSCustomizeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5b9a\u5236\u7684\u5feb\u6377\u5524\u9192\u8bcdparams, name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-pinyin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-threshold:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "name"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pinyin"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "threshold"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "AIOSCustomizeManager"

    const-string v9, "set wakeup major error"

    invoke-static {v8, v9}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v8

    const-string v9, "sdk.customize.shortcut.wakeup.customize"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setAECEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setAECEnabled()] with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.aec.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setInterruptEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setInterruptEnabled()] with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.interrupt.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setLaunchTips(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setLaunchTips()] with: launchTips = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.launch.tips.customize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMajorWakeup(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0E-6
            to = 0.999999
        .end annotation
    .end param

    const-string v1, "AIOSCustomizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AIOSCustomizeManager#setMajorWakeup()] with: wakeup = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], pinyin = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], confidence = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    invoke-static {p2}, Lcom/aispeech/aios/sdk/utils/StringUtil;->isLegalPinyin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinyin is illegal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aispeech/aios/common/bean/MajorWakeup;

    invoke-direct {v1, p1, p2, p3}, Lcom/aispeech/aios/common/bean/MajorWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    const-string v2, "sdk.customize.major.wakeup.customize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/aispeech/aios/common/bean/MajorWakeup;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMajorWakeup(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/common/bean/MajorWakeup;",
            ">;)V"
        }
    .end annotation

    const-string v2, "AIOSCustomizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AIOSCustomizeManager#setMajorWakeup()] with: wakeupList = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/common/bean/MajorWakeup;

    iget-object v2, v1, Lcom/aispeech/aios/common/bean/MajorWakeup;->majorWakeupPinyin:Ljava/lang/String;

    invoke-static {v2}, Lcom/aispeech/aios/sdk/utils/StringUtil;->isLegalPinyin(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinyin is illegal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/aispeech/aios/common/bean/MajorWakeup;->majorWakeupPinyin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v2

    const-string v3, "sdk.customize.major.wakeup.customize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/aispeech/aios/common/bean/MajorWakeup;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setNativeShortcutWakeupsEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setNativeShortcutWakeupsEnabled()] with: enabled = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.native.shortcut.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setOneshotEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setOneshotEnabled()] with: enabled = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.oneshot_switch.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setReversedChannelEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setReversedChannelEnabled()] with: reversedChannelEnable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.reversed.channel.enable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setScanAppEnabled(Z)V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setScanAppEnabled()] with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v1

    const-string v2, "sdk.customize.app.scan.enable"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setSpeechRate(F)V
    .locals 5
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.5
            to = 2.0
        .end annotation
    .end param

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setSpeechRate()] with: rate = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.speech.rate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupThreshPercent(F)V
    .locals 4

    const-string v0, "AIOSCustomizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AIOSCustomizeManager#setWakeupThreshPercent()] with: threshPercent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setVoiceWakeupEnabled(Z)V

    const-string v0, "AIOSCustomizeManager"

    const-string v1, "[AIOSCustomizeManager#setWakeupThreshPercent()], close voice wakeup."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    const-string v0, "AIOSCustomizeManager"

    const-string v1, "[AIOSCustomizeManager#setWakeupThreshPercent()], range [0.5~2.0]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setVoiceWakeupEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;-><init>(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;F)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unregisterCustomizeListener()V
    .locals 5

    const-string v0, "AIOSCustomizeManager"

    const-string v1, "[AIOSCustomizeManager#unregisterCustomizeListener()]"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.system.app.unbinding"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getSimplePackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "customize"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->onUnsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeListener:Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    return-void
.end method
