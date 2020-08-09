.class public final Lcom/aispeech/aios/common/config/SDKApi$SystemApi;
.super Ljava/lang/Object;
.source "SDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/config/SDKApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemApi"
.end annotation


# static fields
.field public static final ADAPTER_READY:Ljava/lang/String; = "/system/adapter/ready"

.field public static final APP_CLOSE:Ljava/lang/String; = "sdk.system.app.close"

.field public static final APP_OPEN:Ljava/lang/String; = "sdk.system.app.open"

.field public static final BINDING:Ljava/lang/String; = "sdk.system.app.binding"

.field public static final BRIGHTNESS_CONTROL:Ljava/lang/String; = "sdk.system.brightness"

.field public static final COMMON_CLOSE:Ljava/lang/String; = "sdk.system.common.close"

.field public static final COMMON_OPEN:Ljava/lang/String; = "sdk.system.common.open"

.field public static final DAEMON_THREAD:Ljava/lang/String; = "sdk.system.daemon.thread.enable"

.field public static final PLAYER_STOP:Ljava/lang/String; = "/player/stop"

.field public static final SNAPSHOT:Ljava/lang/String; = "sdk.system.snapshot"

.field public static final SYSTEM_PREFIX:Ljava/lang/String; = "sdk.system"

.field public static final UNBINDING:Ljava/lang/String; = "sdk.system.app.unbinding"

.field public static final VOICE_WAKEUP_ENABLE:Ljava/lang/String; = "sdk.system.voice.wakeup.enable"

.field public static final VOLUME_CONTROL:Ljava/lang/String; = "sdk.system.volume"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
