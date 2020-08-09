.class public Lcom/tencent/wecarspeech/sdk/TASLifecycleManager$PowerEvent;
.super Ljava/lang/Object;
.source "TASLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerEvent"
.end annotation


# static fields
.field public static final POWER_EVENT_OFF:I = 0x1

.field public static final POWER_EVENT_ON:I = 0x0

.field public static final POWER_EVENT_SLEEP:I = 0x3

.field public static final POWER_EVENT_WAKEUP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
