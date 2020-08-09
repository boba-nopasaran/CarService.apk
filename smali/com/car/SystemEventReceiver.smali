.class public Lcom/car/SystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventReceiver.java"


# static fields
.field public static sBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/SystemEventReceiver;->sBootCompleted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/SystemEventReceiver;->sBootCompleted:Z

    :cond_0
    return-void
.end method
