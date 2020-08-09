.class public Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;
.super Ljava/lang/Object;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TASInitParam"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appToken:Ljava/lang/String;

.field private customWakeWordThreshold:Ljava/lang/Integer;

.field private deviceUniqueId:Ljava/lang/String;

.field private floatBtnEnabled:Z

.field private storageRootPath:Ljava/lang/String;

.field private wakeupKeywords:Ljava/util/ArrayList;
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->appToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->deviceUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->storageRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->floatBtnEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->customWakeWordThreshold:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public setCustomWakeWordThreshold(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->customWakeWordThreshold:Ljava/lang/Integer;

    return-void
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->deviceUniqueId:Ljava/lang/String;

    return-void
.end method

.method public setFloatBtnEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->floatBtnEnabled:Z

    return-void
.end method

.method public setStorageRootPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->storageRootPath:Ljava/lang/String;

    return-void
.end method

.method public setWakeupKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    return-void
.end method
