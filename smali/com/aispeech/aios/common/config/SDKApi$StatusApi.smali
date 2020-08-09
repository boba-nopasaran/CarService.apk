.class public final Lcom/aispeech/aios/common/config/SDKApi$StatusApi;
.super Ljava/lang/Object;
.source "SDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/config/SDKApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusApi"
.end annotation


# static fields
.field public static final CONTEXT_INPUT:Ljava/lang/String; = "sdk.status.context.input.text"

.field public static final CONTEXT_OUTPUT:Ljava/lang/String; = "sdk.status.context.output.text"

.field public static final LISTENING_CHANGE:Ljava/lang/String; = "sdk.status.listen.change"

.field public static final RECOGNITION_CHANGE:Ljava/lang/String; = "sdk.status.recognition.change"

.field public static final STATUS_PREFIX:Ljava/lang/String; = "sdk.status"

.field public static final VOLUME_CHANGE:Ljava/lang/String; = "sdk.status.vad.volume.change"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
