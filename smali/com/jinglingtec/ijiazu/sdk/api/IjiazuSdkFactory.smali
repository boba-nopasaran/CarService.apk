.class public Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdkFactory;
.super Ljava/lang/Object;
.source "IjiazuSdkFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIjiazuSDK()Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    move-result-object v0

    return-object v0
.end method
