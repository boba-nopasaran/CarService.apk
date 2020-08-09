.class Lcom/car/ServiceApplication$6;
.super Ljava/lang/Object;
.source "ServiceApplication.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ServiceApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ServiceApplication;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$6;->this$0:Lcom/car/ServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIOSReady()V
    .locals 2

    const-string v0, "CarSvc_ServiceApplication"

    const-string v1, "On aios ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/ServiceApplication$6$1;

    invoke-direct {v1, p0}, Lcom/car/ServiceApplication$6$1;-><init>(Lcom/car/ServiceApplication$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAIOSRebooted()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/ServiceApplication$6$2;

    invoke-direct {v1, p0}, Lcom/car/ServiceApplication$6$2;-><init>(Lcom/car/ServiceApplication$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
