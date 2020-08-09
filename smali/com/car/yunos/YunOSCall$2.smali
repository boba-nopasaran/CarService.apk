.class Lcom/car/yunos/YunOSCall$2;
.super Landroid/content/BroadcastReceiver;
.source "YunOSCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/yunos/YunOSCall;->reportBTState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/yunos/YunOSCall;


# direct methods
.method constructor <init>(Lcom/car/yunos/YunOSCall;)V
    .locals 0

    iput-object p1, p0, Lcom/car/yunos/YunOSCall$2;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
