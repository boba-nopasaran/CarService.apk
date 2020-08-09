.class public Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;
.super Ljava/lang/Object;
.source "IjiazuAPIImplementation.java"

# interfaces
.implements Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    return-object v0
.end method


# virtual methods
.method public clearRestart(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->setReLaunch(Z)V

    return-void
.end method

.method public getPermission(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForeground(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRestart(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->setReLaunch(Z)V

    return-void
.end method
