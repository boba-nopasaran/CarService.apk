.class public Lcom/jinglingtec/ijiazublctor/services/IjiazuService$IjiazuServiceBinder;
.super Landroid/os/Binder;
.source "IjiazuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/services/IjiazuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IjiazuServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/services/IjiazuService;


# direct methods
.method public constructor <init>(Lcom/jinglingtec/ijiazublctor/services/IjiazuService;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService$IjiazuServiceBinder;->this$0:Lcom/jinglingtec/ijiazublctor/services/IjiazuService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/jinglingtec/ijiazublctor/services/IjiazuService;
    .locals 2

    const-string v0, "IjiazuService"

    const-string v1, "get ijiazu service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService$IjiazuServiceBinder;->this$0:Lcom/jinglingtec/ijiazublctor/services/IjiazuService;

    return-object v0
.end method
