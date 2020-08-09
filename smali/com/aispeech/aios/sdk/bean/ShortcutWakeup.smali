.class public Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;
.super Ljava/lang/Object;
.source "ShortcutWakeup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutWakeup"


# instance fields
.field private name:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private threshold:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->pinyin:Ljava/lang/String;

    iput p3, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->threshold:F

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()F
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->threshold:F

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->name:Ljava/lang/String;

    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public setThreshold(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0E-6
            to = 0.999999
        .end annotation
    .end param

    iput p1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->threshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutWakeup{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/sdk/bean/ShortcutWakeup;->threshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
