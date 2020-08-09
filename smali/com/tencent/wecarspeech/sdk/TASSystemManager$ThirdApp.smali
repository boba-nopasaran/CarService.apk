.class public Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;
.super Ljava/lang/Object;
.source "TASSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdApp"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->mPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASSystemManager$ThirdApp;->mPkgName:Ljava/lang/String;

    return-object v0
.end method
