.class public Lcom/car/speech/SpeechWakeupWord;
.super Ljava/lang/Object;
.source "SpeechWakeupWord.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;


# static fields
.field private static final ACTION_YPSAFE:Ljava/lang/String; = "com.action.ypsafe"

.field private static final ACT_CLOSE:Ljava/lang/String; = "ACT_CLOSE"

.field private static final ACT_PROTECT:Ljava/lang/String; = "ACT_PROTECT"

.field private static final ACT_TEST:Ljava/lang/String; = "ACT_TEST"

.field private static final ACT_WARM:Ljava/lang/String; = "ACT_WARM"

.field private static final PARA_YPSAFE:Ljava/lang/String; = "YPSAFE_PARA"

.field static sInstance:Lcom/car/speech/SpeechWakeupWord;


# instance fields
.field CAPTURE:Ljava/lang/String;

.field CAPTURE2:Ljava/lang/String;

.field CAPTURE3:Ljava/lang/String;

.field CAPTURE4:Ljava/lang/String;

.field CAPTURE_PIC:Ljava/lang/String;

.field CAPTURE_PIC2:Ljava/lang/String;

.field CAPTURE_PIC3:Ljava/lang/String;

.field CAPTURE_QUZHENG:Ljava/lang/String;

.field CAPTURING:Ljava/lang/String;

.field DLBCLOSE:Ljava/lang/String;

.field DLBOPEN:Ljava/lang/String;

.field DVR:Ljava/lang/String;

.field DVRCLOSE:Ljava/lang/String;

.field ECARDIAL:Ljava/lang/String;

.field ECAROPEN:Ljava/lang/String;

.field ECARRENEW:Ljava/lang/String;

.field ECARRESCUE:Ljava/lang/String;

.field ECARVOIP:Ljava/lang/String;

.field FMOFF:Ljava/lang/String;

.field FMON:Ljava/lang/String;

.field HOMEBACK:Ljava/lang/String;

.field HOMEBACK2:Ljava/lang/String;

.field KKBCLOSE:Ljava/lang/String;

.field KKBOPEN:Ljava/lang/String;

.field NAVIQUIT:Ljava/lang/String;

.field PANDORACLOSE:Ljava/lang/String;

.field PANDORAOPEN:Ljava/lang/String;

.field SCREENSHOT:Ljava/lang/String;

.field SCREENSHOT2:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field VIDEO_QUZHENG:Ljava/lang/String;

.field VOLDOWM:Ljava/lang/String;

.field VOLUP:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDevs:[Ljava/lang/String;

.field mNums:[Ljava/lang/String;

.field mRooms:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/speech/SpeechWakeupWord;->sInstance:Lcom/car/speech/SpeechWakeupWord;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarSvc_SpeechWakeupWord"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->TAG:Ljava/lang/String;

    const-string v0, "PandoraClose"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORACLOSE:Ljava/lang/String;

    const-string v0, "PandoraOpen"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORAOPEN:Ljava/lang/String;

    const-string v0, "EcarOpen"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->ECAROPEN:Ljava/lang/String;

    const-string v0, "EcarRescue"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRESCUE:Ljava/lang/String;

    const-string v0, "EcarDial"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->ECARDIAL:Ljava/lang/String;

    const-string v0, "EcarRenew"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRENEW:Ljava/lang/String;

    const-string v0, "EcarVoip"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->ECARVOIP:Ljava/lang/String;

    const-string v0, "HomeBack"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK:Ljava/lang/String;

    const-string v0, "NaviQuit"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->NAVIQUIT:Ljava/lang/String;

    const-string v0, "FmOn"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->FMON:Ljava/lang/String;

    const-string v0, "FmOff"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->FMOFF:Ljava/lang/String;

    const-string v0, "Capture"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURING:Ljava/lang/String;

    const-string v0, "DVR"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->DVR:Ljava/lang/String;

    const-string v0, "DVRClose"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->DVRCLOSE:Ljava/lang/String;

    const-string v0, "VolDown"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->VOLDOWM:Ljava/lang/String;

    const-string v0, "VolUp"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->VOLUP:Ljava/lang/String;

    const-string v0, "KkbOpen"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->KKBOPEN:Ljava/lang/String;

    const-string v0, "KkbClose"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->KKBCLOSE:Ljava/lang/String;

    const-string v0, "DlbOpen"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->DLBOPEN:Ljava/lang/String;

    const-string v0, "DlbClose"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->DLBCLOSE:Ljava/lang/String;

    const-string v0, "zhua pai tu pian"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC:Ljava/lang/String;

    const-string v0, "tu pian zhua pai"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC2:Ljava/lang/String;

    const-string v0, "zhua pai yi zhang"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE:Ljava/lang/String;

    const-string v0, "shi pin zhua pai"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE2:Ljava/lang/String;

    const-string v0, "zhua pai shi pin"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE3:Ljava/lang/String;

    const-string v0, "wei zhang zhua pai"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE4:Ljava/lang/String;

    const-string v0, "pai zhao pai zhao"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC3:Ljava/lang/String;

    const-string v0, "qv zheng zhua pai"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_QUZHENG:Ljava/lang/String;

    const-string v0, "lu xiang qu zheng"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->VIDEO_QUZHENG:Ljava/lang/String;

    const-string v0, "wo yao jie pin"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT:Ljava/lang/String;

    const-string v0, "wo yao jie tu"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT2:Ljava/lang/String;

    const-string v0, "hui dao zhu ye"

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK2:Ljava/lang/String;

    const-string v0, "ro.room.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    const-string v0, "ro.dev.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    const-string v0, "ro.num.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    iput-object p1, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechWakeupWord;
    .locals 1

    sget-object v0, Lcom/car/speech/SpeechWakeupWord;->sInstance:Lcom/car/speech/SpeechWakeupWord;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/speech/SpeechWakeupWord;

    invoke-direct {v0, p0}, Lcom/car/speech/SpeechWakeupWord;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/speech/SpeechWakeupWord;->sInstance:Lcom/car/speech/SpeechWakeupWord;

    :cond_0
    sget-object v0, Lcom/car/speech/SpeechWakeupWord;->sInstance:Lcom/car/speech/SpeechWakeupWord;

    return-object v0
.end method


# virtual methods
.method addCommands()Z
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "1%02d%02d%02d0"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5173\u95ed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5173\u95ed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "1%02d%02d%02d1"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6253\u5f00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6253\u5f00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mRooms:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mNums:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/speech/SpeechWakeupWord;->mDevs:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "openSafeAssist"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u5b89\u5168\u5c0f\u52a9\u624b"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "openCloseMode"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u5173\u95ed\u6a21\u5f0f"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "openSaveMode"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u4fdd\u62a4\u6a21\u5f0f"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "openAlertMode"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u9884\u8b66\u6a21\u5f0f"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "openTestMode"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u8bd5\u8f66\u6a21\u5f0f"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "ECARSOS"

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u884c\u8f66SOS"

    aput-object v7, v6, v10

    const-string v7, "\u884c\u8f66SOS"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRESCUE:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "\u6211\u8981\u6551\u63f4"

    aput-object v7, v6, v10

    const-string v7, "\u6551\u63f4"

    aput-object v7, v6, v9

    const-string v7, "\u6551\u547d"

    aput-object v7, v6, v11

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "ECARTIRE"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "\u6211\u8981\u966a\u804a"

    aput-object v7, v6, v10

    const-string v7, "\u597d\u56f0\u554a"

    aput-object v7, v6, v9

    const-string v7, "\u966a\u804a"

    aput-object v7, v6, v11

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->ECAROPEN:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u7ffc\u5361\u5728\u7ebf"

    aput-object v7, v6, v10

    const-string v7, "\u6253\u5f00\u7ffc\u5361"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->ECARDIAL:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "\u62e8\u6253\u4e00\u952e\u901a"

    aput-object v7, v6, v10

    const-string v7, "\u4e00\u952e\u901a"

    aput-object v7, v6, v9

    const-string v7, "\u4eba\u5de5\u5ba2\u670d"

    aput-object v7, v6, v11

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRENEW:Ljava/lang/String;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u7ffc\u5361\u7eed\u8d39"

    aput-object v7, v6, v10

    const-string v7, "\u7ffc\u5361\u7eed\u8d39"

    aput-object v7, v6, v9

    const-string v7, "\u6211\u8981\u7eed\u8d39"

    aput-object v7, v6, v11

    const-string v7, "\u7eed\u8d39"

    aput-object v7, v6, v12

    const-string v7, "\u6211\u8981\u5145\u503c"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "\u5145\u503c"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "\u4f1a\u5458\u7eed\u8d39"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "\u7eed\u8d39\u5347\u7ea7"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->ECARVOIP:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u7ffc\u4e91\u7535\u8bdd"

    aput-object v7, v6, v10

    const-string v7, "\u7ffc\u4e91\u7535\u8bdd"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK:Ljava/lang/String;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u56de\u5230\u684c\u9762"

    aput-object v7, v6, v10

    const-string v7, "\u56de\u5230\u4e3b\u9875"

    aput-object v7, v6, v9

    const-string v7, "\u663e\u793a\u684c\u9762"

    aput-object v7, v6, v11

    const-string v7, "\u663e\u793a\u4e3b\u9875"

    aput-object v7, v6, v12

    const-string v7, "\u9000\u56de\u684c\u9762"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "\u9000\u56de\u4e3b\u9875"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "\u9000\u5230\u684c\u9762"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "\u9000\u5230\u4e3b\u9875"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "\u9000\u51fa\u5f53\u524d\u5e94\u7528"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->NAVIQUIT:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u9000\u51fa\u5bfc\u822a"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u95ed\u5bfc\u822a"

    aput-object v7, v6, v9

    const-string v7, "\u7ed3\u675f\u5bfc\u822a"

    aput-object v7, v6, v11

    const-string v7, "\u7ec8\u6b62\u5bfc\u822a"

    aput-object v7, v6, v12

    const-string v7, "\u505c\u6b62\u5bfc\u822a"

    aput-object v7, v6, v13

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->FMON:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00FM"

    aput-object v7, v6, v10

    const-string v7, "\u6253\u5f00FM\u53d1\u5c04"

    aput-object v7, v6, v9

    const-string v7, "\u6253\u5f00\u8c03\u9891\u53d1\u5c04"

    aput-object v7, v6, v11

    const-string v7, "\u6253\u5f00\u6536\u97f3\u673a"

    aput-object v7, v6, v12

    const-string v7, "\u542f\u52a8\u6536\u97f3\u673a"

    aput-object v7, v6, v13

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->FMOFF:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u5173\u95edFM"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u6389FM"

    aput-object v7, v6, v9

    const-string v7, "\u5173\u95edFM\u53d1\u5c04"

    aput-object v7, v6, v11

    const-string v7, "\u5173\u95ed\u8c03\u9891\u53d1\u5c04"

    aput-object v7, v6, v12

    const-string v7, "\u5173\u95ed\u6536\u97f3\u673a"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "\u5173\u6389\u6536\u97f3\u673a"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURING:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "\u6293\u62cd"

    aput-object v7, v6, v10

    const-string v7, "\u6293\u62cd\u89c6\u9891"

    aput-object v7, v6, v9

    const-string v7, "\u89c6\u9891\u6293\u62cd"

    aput-object v7, v6, v11

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->DVR:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u6444\u50cf\u5934"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->DVRCLOSE:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u5173\u6389\u6444\u50cf\u5934"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u95ed\u6444\u50cf\u5934"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->VOLDOWM:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u51cf\u5c0f\u97f3\u91cf"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->VOLUP:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u589e\u5927\u97f3\u91cf"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->KKBOPEN:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u884c\u8f66"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->KKBCLOSE:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u5173\u95ed\u884c\u8f66"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u6389\u884c\u8f66"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORAOPEN:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u7535\u53f0"

    aput-object v7, v6, v10

    const-string v7, "\u6253\u5f00\u7f51\u7edc\u7535\u53f0"

    aput-object v7, v6, v9

    const-string v7, "\u542f\u52a8\u7535\u53f0"

    aput-object v7, v6, v11

    const-string v7, "\u542f\u52a8\u7535\u53f0\u5e7f\u64ad"

    aput-object v7, v6, v12

    const-string v7, "\u6253\u5f00\u7535\u53f0\u5e7f\u64ad"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "\u6253\u5f00\u559c\u9a6c\u62c9\u96c5"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORACLOSE:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, " \u5173\u6389\u7535\u53f0"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u95ed\u7f51\u7edc\u7535\u53f0"

    aput-object v7, v6, v9

    const-string v7, "\u5173\u6389\u7f51\u7edc\u7535\u53f0"

    aput-object v7, v6, v11

    const-string v7, "\u5173\u95ed\u7535\u53f0"

    aput-object v7, v6, v12

    const-string v7, "\u5173\u6389\u7535\u53f0\u5e7f\u64ad"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "\u5173\u95ed\u7535\u53f0\u5e7f\u64ad"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "\u5173\u95ed\u559c\u9a6c\u62c9\u96c5"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->DLBOPEN:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u5fb7\u8def\u90a6"

    aput-object v7, v6, v10

    const-string v7, "\u6253\u5f00AEB"

    aput-object v7, v6, v9

    const-string v7, "\u6253\u5f00\u5fb7\u8def\u90a6AEB"

    aput-object v7, v6, v11

    const-string v7, "\u6253\u5f00\u5fb7\u8def\u90a6\u5b89\u5168\u7cfb\u7edf"

    aput-object v7, v6, v12

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    iget-object v5, p0, Lcom/car/speech/SpeechWakeupWord;->DLBCLOSE:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "\u5173\u6389\u5fb7\u8def\u90a6"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u95edAEB"

    aput-object v7, v6, v9

    const-string v7, "\u5173\u95ed\u5fb7\u8def\u90a6AEB"

    aput-object v7, v6, v11

    const-string v7, "\u5173\u95ed\u5fb7\u8def\u90a6\u5b89\u5168\u7cfb\u7edf"

    aput-object v7, v6, v12

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "taiyaopen"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u80ce\u538b"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "taiyaclose"

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u5173\u6389\u80ce\u538b"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u95ed\u80ce\u538b"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "settingclose"

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u5173\u95ed\u8bbe\u7f6e"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u6389\u8bbe\u7f6e"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "settingopen"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u8bbe\u7f6e"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "xiaoshanopen"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "\u6253\u5f00\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "xiaoshanclose"

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u5173\u95ed\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v10

    const-string v7, "\u5173\u6389\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v5, "xiaoshancall"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "\u547c\u53eb\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v10

    const-string v7, "\u6253\u7ed9\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v9

    const-string v7, "\u6253\u7535\u8bdd\u7ed9\u5c0f\u5584\u79d8\u4e66"

    aput-object v7, v6, v11

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/sdk/bean/Command;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->regCommands(Ljava/util/List;)V

    return v9
.end method

.method public init()Z
    .locals 9

    const v8, 0x3ccccccd    # 0.025f

    const v7, 0x3d23d70a    # 0.04f

    const v4, 0x3dcccccd    # 0.1f

    const v6, 0x3d4ccccd    # 0.05f

    const v5, 0x3cf5c28f    # 0.03f

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->registerCustomizeListener(Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6293\u62cd\u56fe\u7247"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u56fe\u7247\u6293\u62cd"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC2:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6293\u62cd\u4e00\u5f20"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u89c6\u9891\u6293\u62cd"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE2:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6293\u62cd\u89c6\u9891"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE3:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v8}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u8fdd\u7ae0\u6293\u62cd"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE4:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6211\u8981\u622a\u5c4f"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6211\u8981\u622a\u56fe"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT2:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u56de\u5230\u4e3b\u9875"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK2:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ro.voicecap.redirect"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u62cd\u7167\u62cd\u7167"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC3:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u53d6\u8bc1\u6293\u62cd"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_QUZHENG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v8}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u5f55\u50cf\u53d6\u8bc1"

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->VIDEO_QUZHENG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v7}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "ro.voicewakeup.more"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6253\u5f00\u6444\u50cf\u5934"

    const-string v3, "da kai she xiang tou"

    invoke-direct {v1, v2, v3, v7}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u524d\u9762"

    const-string v3, "kan qian mian"

    const v4, 0x3d75c28f    # 0.06f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u540e\u9762"

    const-string v3, "kan hou mian"

    invoke-direct {v1, v2, v3, v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u540e\u8fb9"

    const-string v3, "kan hou bian"

    invoke-direct {v1, v2, v3, v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u5de6\u8fb9"

    const-string v3, "kan zuo bian"

    invoke-direct {v1, v2, v3, v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u5de6\u9762"

    const-string v3, "kan zuo mian"

    invoke-direct {v1, v2, v3, v6}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u53f3\u8fb9"

    const-string v3, "kan you bian"

    const v4, 0x3d8f5c29    # 0.07f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u53f3\u9762"

    const-string v3, "kan you mian"

    const v4, 0x3d8f5c29    # 0.07f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u770b\u5168\u90e8"

    const-string v3, "kan quan bu"

    const v4, 0x3da3d70a    # 0.08f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6253\u5f00\u7535\u5b50\u72d7"

    const-string v3, "da kai dian zi gou"

    const v4, 0x3d99999a    # 0.075f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u6253\u5f00\u84dd\u7259"

    const-string v3, "da kai lan ya"

    const v4, 0x3d99999a    # 0.075f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u8fd4\u56de\u4e3b\u754c\u9762"

    const-string v3, "fan hui zhu jie mian"

    const v4, 0x3ca3d70a    # 0.02f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u5bfc\u822a\u5168\u5c4f"

    const-string v3, "dao hang quan ping"

    const v4, 0x3d75c28f    # 0.06f

    invoke-direct {v1, v2, v3, v4}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u5730\u56fe\u5168\u5c4f"

    const-string v3, "di tu quan ping"

    invoke-direct {v1, v2, v3, v7}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;

    const-string v2, "\u9000\u51fa\u5168\u5c4f"

    const-string v3, "tui chu quan ping"

    invoke-direct {v1, v2, v3, v5}, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->registerShortcutWakeups(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/car/speech/SpeechWakeupWord;->addCommands()Z

    move-result v1

    return v1
.end method

.method public onCommandEffect(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCommandEffect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->DLBOPEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.dlb.aeb"

    const-string v6, "com.dlb.aeb.LoadingActivity"

    invoke-static {v4, v5, v6}, Lcom/car/common/SystemCtrl;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->DLBCLOSE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.dlb.aeb"

    invoke-static {v4, v5}, Lcom/car/common/SystemCtrl;->closeApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORAOPEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->pandoraOpen(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->PANDORACLOSE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->pandoraClose(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->KKBOPEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->kkbOpen(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->KKBCLOSE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->kkbClose(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->ECAROPEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->ecarOpen(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRESCUE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Rescue"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v4, "ECARSOS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "StartECar"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "ECARTIRE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Chat"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->ECARDIAL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->ecarCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->ECARRENEW:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Renew"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->ecarRenew(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->ECARVOIP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->ecarVoip(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->NAVIQUIT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v1, Landroid/content/Intent;

    const-string v4, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "KEY_TYPE"

    const/16 v5, 0x2725

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "KEY_TPYE"

    const/16 v5, 0x3ea

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "EXTRA_OPERA"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->FMON:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->FMOFF:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.car.video.capturenow"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->DVR:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->dvrOpen(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->DVRCLOSE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->VOLDOWM:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/speech/StreamMuteManager;->isMute()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    :cond_14
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->volumeDown(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->VOLUP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/speech/StreamMuteManager;->isMute()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    :cond_16
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->volumeUp(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const-string v4, "xiaoshancall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.hdsc.call.cloud.center"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    const-string v4, "xiaoshanopen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.hdsc.monitor.heart.monitorvoice"

    const-string v6, "com.hdsc.monitor.heart.monitorvoice.CloudCenterActivity"

    invoke-static {v4, v5, v6}, Lcom/car/common/SystemCtrl;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v4, "xiaoshanclose"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1a
    const-string v4, "settingopen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.car.carsetting"

    const-string v6, "com.car.carsetting.MainActivity"

    invoke-static {v4, v5, v6}, Lcom/car/common/SystemCtrl;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v4, "settingclose"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    const-string v4, "taiyaopen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.wjb.bluletoothtirepressure"

    const-string v6, "com.wjb.tirepressureactivity.StartActivity"

    invoke-static {v4, v5, v6}, Lcom/car/common/SystemCtrl;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v4, "taiyaclose"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.wjb.bluletoothtirepressure"

    invoke-static {v4, v5}, Lcom/car/common/SystemCtrl;->closeApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v4, "openSafeAssist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    const-string v5, "com.txsoft.auto_hmb"

    const-string v6, "com.txsoft.autosecure.MainActivity"

    invoke-static {v4, v5, v6}, Lcom/car/common/SystemCtrl;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "openCloseMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.action.ypsafe"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "YPSAFE_PARA"

    const-string v5, "ACT_CLOSE"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_20
    const-string v4, "openSaveMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.action.ypsafe"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "YPSAFE_PARA"

    const-string v5, "ACT_PROTECT"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_21
    const-string v4, "openAlertMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.action.ypsafe"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "YPSAFE_PARA"

    const-string v5, "ACT_WARM"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_22
    const-string v4, "openTestMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.action.ypsafe"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "YPSAFE_PARA"

    const-string v5, "ACT_TEST"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_23
    const/16 v4, 0x10

    :try_start_0
    invoke-static {p1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x100000

    if-lt v3, v4, :cond_24

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_24
    iget-object v4, p0, Lcom/car/speech/SpeechWakeupWord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voice cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/car/speech/SpeechWakeupWord;->sendVoiceCmd(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onShortcutWakeUp(Ljava/lang/String;)V
    .locals 9

    const/high16 v8, 0x30200000

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuickWakeUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE2:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE3:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE4:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.video.capturenow"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "ro.voice.remind"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u6293\u62cd\u89c6\u9891"

    invoke-virtual {v3, v4, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_QUZHENG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->VIDEO_QUZHENG:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC2:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->CAPTURE_PIC3:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.takepicture"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.monitor"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "operation"

    const-string v4, "image"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "cam"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "nosound"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "path"

    const-string v4, "ro.monitor.picture.path"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "ro.voice.remind"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u6293\u62cd\u56fe\u7247"

    invoke-virtual {v3, v4, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->SCREENSHOT2:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-static {}, Lcom/car/common/SystemCtrl;->snapShot()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->HOMEBACK2:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v3, "da kai she xiang tou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "da kai qian she xiang tou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "kan qian mian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "front"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "da kai hou she xiang tou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "kan hou mian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "kan hou bian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "rear"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "da kai zuo she xiang tou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "kan zuo bian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "kan zuo mian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "left"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "da kai you she xiang tou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "kan you bian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "kan you mian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "right"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    const-string v3, "kan quan bu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "all"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    const-string v3, "da kai dian zi gou"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    const-string v3, "da kai lan ya"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const-string v3, "fan hui zhu jie mian"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    const-string v3, "dao hang quan ping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=com.autonavi.amapautolite"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_19
    const-string v3, "di tu quan ping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=com.autonavi.amapautolite"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1a
    const-string v3, "she xiang tou quan ping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=com.car.dvr"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1b
    const-string v3, "tui chu quan ping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=xx"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.off=xx"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method sendVoiceCmd(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.voicecmd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/speech/SpeechWakeupWord;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
