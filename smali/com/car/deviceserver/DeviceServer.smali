.class public final Lcom/car/deviceserver/DeviceServer;
.super Ljava/lang/Object;
.source "DeviceServer.java"

# interfaces
.implements Lcom/car/deviceserver/NativeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/deviceserver/DeviceServer$Listener;
    }
.end annotation


# static fields
.field public static final STATUS_CONNECT_ERROR:I = -0x1

.field public static final STATUS_CONNECT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSvc_DeviceServer"

.field private static sInstance:Lcom/car/deviceserver/DeviceServer;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/deviceserver/DeviceServer$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/car/deviceserver/DeviceServer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static instance()Lcom/car/deviceserver/DeviceServer;
    .locals 1

    sget-object v0, Lcom/car/deviceserver/DeviceServer;->sInstance:Lcom/car/deviceserver/DeviceServer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/deviceserver/DeviceServer;

    invoke-direct {v0}, Lcom/car/deviceserver/DeviceServer;-><init>()V

    sput-object v0, Lcom/car/deviceserver/DeviceServer;->sInstance:Lcom/car/deviceserver/DeviceServer;

    :cond_0
    sget-object v0, Lcom/car/deviceserver/DeviceServer;->sInstance:Lcom/car/deviceserver/DeviceServer;

    return-object v0
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;[B)V
    .locals 4

    invoke-static {p1}, Lcom/car/deviceserver/JsonCodec;->decode(Ljava/lang/String;)Lcom/car/deviceserver/JsonCodec$BaseMsg;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CarSvc_DeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), onReceived "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/car/deviceserver/JsonCodec$BaseMsg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/deviceserver/DeviceServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/deviceserver/DeviceServer$1;

    invoke-direct {v2, p0, v0}, Lcom/car/deviceserver/DeviceServer$1;-><init>(Lcom/car/deviceserver/DeviceServer;Lcom/car/deviceserver/JsonCodec$BaseMsg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStatus(I)V
    .locals 3

    const-string v0, "CarSvc_DeviceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), onStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/deviceserver/DeviceServer$2;

    invoke-direct {v1, p0, p1}, Lcom/car/deviceserver/DeviceServer$2;-><init>(Lcom/car/deviceserver/DeviceServer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/car/deviceserver/DeviceServer$Listener;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/car/utils/Util;->assertResult(Z)V

    iget-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/car/deviceserver/Native;->send(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p0}, Lcom/car/deviceserver/Native;->start(Ljava/lang/String;ILjava/lang/String;Lcom/car/deviceserver/NativeListener;)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/car/deviceserver/DeviceServer$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/car/utils/Util;->assertResult(Z)V

    iget-object v0, p0, Lcom/car/deviceserver/DeviceServer;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
