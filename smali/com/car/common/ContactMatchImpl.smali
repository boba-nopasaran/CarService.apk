.class public Lcom/car/common/ContactMatchImpl;
.super Lcom/car/common/ContactMatcher;
.source "ContactMatchImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/ContactMatchImpl$1;,
        Lcom/car/common/ContactMatchImpl$MyServiceConnection;,
        Lcom/car/common/ContactMatchImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field static final TAG:Ljava/lang/String; = "CarSvc_ContactMatchImpl"


# instance fields
.field final mConnection:Lcom/car/common/ContactMatchImpl$MyServiceConnection;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mService:Lcom/car/common/IContactMatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/car/common/ContactMatcher;-><init>()V

    new-instance v3, Lcom/car/common/ContactMatchImpl$MyServiceConnection;

    invoke-direct {v3, p0, v4}, Lcom/car/common/ContactMatchImpl$MyServiceConnection;-><init>(Lcom/car/common/ContactMatchImpl;Lcom/car/common/ContactMatchImpl$1;)V

    iput-object v3, p0, Lcom/car/common/ContactMatchImpl;->mConnection:Lcom/car/common/ContactMatchImpl$MyServiceConnection;

    new-instance v3, Lcom/car/common/ContactMatchImpl$MyHandler;

    invoke-direct {v3, p0, v4}, Lcom/car/common/ContactMatchImpl$MyHandler;-><init>(Lcom/car/common/ContactMatchImpl;Lcom/car/common/ContactMatchImpl$1;)V

    iput-object v3, p0, Lcom/car/common/ContactMatchImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/common/ContactMatchImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.intent.action.start.btphone"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/car/common/ContactMatchImpl;->bindService()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "CarSvc_ContactMatchImpl"

    const-string v4, "No BT phone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method bindService()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/car/common/ContactMatchImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/car/common/IContactMatch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/common/ContactMatchImpl;->mConnection:Lcom/car/common/ContactMatchImpl$MyServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "CarSvc_ContactMatchImpl"

    const-string v2, "Bind IContactMatch failed, try later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/ContactMatchImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "CarSvc_ContactMatchImpl"

    const-string v2, "Bind IContactMatch OK, wait connection..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/ContactMatchImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getMatchedContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/car/common/ContactMatchImpl;->mService:Lcom/car/common/IContactMatch;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_ContactMatchImpl"

    const-string v3, "requestRecognize null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/common/ContactMatchImpl;->mService:Lcom/car/common/IContactMatch;

    invoke-interface {v2, p1}, Lcom/car/common/IContactMatch;->getMatchedContacts(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_ContactMatchImpl"

    const-string v3, "requestRecognize Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
