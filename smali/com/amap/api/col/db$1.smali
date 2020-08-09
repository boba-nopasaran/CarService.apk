.class Lcom/amap/api/col/db$1;
.super Ljava/lang/Object;
.source "GPSManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/db;


# direct methods
.method constructor <init>(Lcom/amap/api/col/db;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/db$1;->a:Lcom/amap/api/col/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/db$1;->a:Lcom/amap/api/col/db;

    invoke-static {v1}, Lcom/amap/api/col/db;->a(Lcom/amap/api/col/db;)Lcom/amap/api/navi/IGpsCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/db$1;->a:Lcom/amap/api/col/db;

    invoke-static {v1}, Lcom/amap/api/col/db;->a(Lcom/amap/api/col/db;)Lcom/amap/api/navi/IGpsCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/amap/api/navi/IGpsCallback;->onLocationChanged(ILandroid/location/Location;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
