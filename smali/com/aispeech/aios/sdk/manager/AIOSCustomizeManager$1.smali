.class Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;
.super Ljava/lang/Object;
.source "AIOSCustomizeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setWakeupThreshPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

.field final synthetic val$threshPercent:F


# direct methods
.method constructor <init>(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;F)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;->this$0:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    iput p2, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;->val$threshPercent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v0

    const-string v1, "sdk.customize.major.wakeup.customize.thresh"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$1;->val$threshPercent:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
