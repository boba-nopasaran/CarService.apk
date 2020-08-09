.class final Lcom/maploc/i$b;
.super Landroid/os/HandlerThread;
.source "MapLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maploc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/maploc/i;


# direct methods
.method public constructor <init>(Lcom/maploc/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/maploc/i$b;->a:Lcom/maploc/i;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void
.end method
