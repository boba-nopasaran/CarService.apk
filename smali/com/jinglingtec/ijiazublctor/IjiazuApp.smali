.class public Lcom/jinglingtec/ijiazublctor/IjiazuApp;
.super Landroid/app/Application;
.source "IjiazuApp.java"


# static fields
.field private static instance:Lcom/jinglingtec/ijiazublctor/IjiazuApp;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public connSaveLog:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->instance:Lcom/jinglingtec/ijiazublctor/IjiazuApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "IjiazuApp"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/IjiazuApp$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/IjiazuApp$1;-><init>(Lcom/jinglingtec/ijiazublctor/IjiazuApp;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->connSaveLog:Landroid/content/ServiceConnection;

    const-string v0, "IjiazuApp"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->instance:Lcom/jinglingtec/ijiazublctor/IjiazuApp;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->instance:Lcom/jinglingtec/ijiazublctor/IjiazuApp;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    const-string v0, "IjiazuApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/IjiazuApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
