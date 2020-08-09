.class public Lcom/jiagu/BleEventBus;
.super Ljava/lang/Object;
.source "BleEventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiagu/BleEventBus$Message;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public msg:Lcom/jiagu/BleEventBus$Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiagu/BleEventBus$Message;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiagu/BleEventBus;->msg:Lcom/jiagu/BleEventBus$Message;

    iput-object p2, p0, Lcom/jiagu/BleEventBus;->data:Ljava/lang/Object;

    return-void
.end method

.method public static post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jiagu/BleEventBus$Message;",
            "TT;)V"
        }
    .end annotation

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/jiagu/BleEventBus;

    invoke-direct {v1, p0, p1}, Lcom/jiagu/BleEventBus;-><init>(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/BleEventBus;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleEventBus;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Lcom/jiagu/BleEventBus$Message;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleEventBus;->msg:Lcom/jiagu/BleEventBus$Message;

    return-object v0
.end method
