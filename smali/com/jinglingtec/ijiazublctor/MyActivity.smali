.class public Lcom/jinglingtec/ijiazublctor/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MyActivity"


# instance fields
.field private ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/MyActivity$1;-><init>(Lcom/jinglingtec/ijiazublctor/MyActivity;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->showInfomation(Ljava/lang/String;)V

    return-void
.end method

.method private showInfomation(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/MyActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/jinglingtec/ijiazublctor/MyActivity$2;-><init>(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->setContentView(I)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdkFactory;->createIjiazuSDK()Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;

    move-result-object v0

    const-string v1, "120700003"

    const-string v2, "testAppKey"

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/MyActivity;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
