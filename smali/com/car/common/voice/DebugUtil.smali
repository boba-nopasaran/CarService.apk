.class public final Lcom/car/common/voice/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field public static final isSystemUser:Z = true

.field public static sContext:Landroid/content/Context;

.field static sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideToast()V
    .locals 1

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/car/common/voice/DebugUtil;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
