.class Lcom/car/voice/remote/NetServImpl$1;
.super Ljava/lang/Thread;
.source "NetServImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/remote/NetServImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/remote/NetServImpl;


# direct methods
.method constructor <init>(Lcom/car/voice/remote/NetServImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/remote/NetServImpl$1;->this$0:Lcom/car/voice/remote/NetServImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl$1;->this$0:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v0}, Lcom/car/voice/remote/NetServImpl;->createServerSocket()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/NetServImpl$1;->this$0:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v0}, Lcom/car/voice/remote/NetServImpl;->threadLoop()V

    :cond_0
    return-void
.end method
