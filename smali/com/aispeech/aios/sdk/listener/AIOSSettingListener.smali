.class public interface abstract Lcom/aispeech/aios/sdk/listener/AIOSSettingListener;
.super Ljava/lang/Object;
.source "AIOSSettingListener.java"


# virtual methods
.method public abstract onDefaultMapChange(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDialogueChange(II)V
.end method

.method public abstract onTtsResChange(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
