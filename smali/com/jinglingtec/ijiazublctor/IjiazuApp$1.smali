.class Lcom/jinglingtec/ijiazublctor/IjiazuApp$1;
.super Ljava/lang/Object;
.source "IjiazuApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/IjiazuApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/IjiazuApp;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/IjiazuApp;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/IjiazuApp$1;->this$0:Lcom/jinglingtec/ijiazublctor/IjiazuApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "IjiazuApp"

    const-string v1, "ServiceConnection save log-> onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "IjiazuApp"

    const-string v1, "onServiceDisconnected savelog-> onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
