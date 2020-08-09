.class public final Lcom/aispeech/aios/common/property/SystemProperty$VolumeProperty;
.super Ljava/lang/Object;
.source "SystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/property/SystemProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolumeProperty"
.end annotation


# static fields
.field public static final VOLUME_LOWER:Ljava/lang/String; = "lower"

.field public static final VOLUME_MAX:Ljava/lang/String; = "max"

.field public static final VOLUME_MIN:Ljava/lang/String; = "min"

.field public static final VOLUME_MUTE:Ljava/lang/String; = "mute"

.field public static final VOLUME_RAISE:Ljava/lang/String; = "raise"

.field public static final VOLUME_UNMUTE:Ljava/lang/String; = "unmute"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
