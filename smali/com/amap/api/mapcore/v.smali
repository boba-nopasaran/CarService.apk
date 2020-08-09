.class Lcom/amap/api/mapcore/v;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/n;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Lcom/amap/api/mapcore/k;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/k;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/v;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->i:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/v;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->k:Z

    iput v1, p0, Lcom/amap/api/mapcore/v;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/v;->m:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/v;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/v;->o:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/v;->p:Z

    new-instance v0, Lcom/amap/api/mapcore/v$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/v$1;-><init>(Lcom/amap/api/mapcore/v;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/v;)Lcom/amap/api/mapcore/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->k:Z

    return v0
.end method


# virtual methods
.method public getLogoMarginRate(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/k;->l(I)F

    move-result v0

    return v0
.end method

.method public getLogoPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/v;->l:I

    return v0
.end method

.method public getZoomPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/v;->m:I

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->i:Z

    return v0
.end method

.method public isGestureScaleByMapCenter()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->p:Z

    return v0
.end method

.method public isIndoorSwitchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->n:Z

    return v0
.end method

.method public isLogoEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->k:Z

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->f:Z

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->c:Z

    return v0
.end method

.method public isScaleControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->j:Z

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->d:Z

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->e:Z

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->h:Z

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->g:Z

    return v0
.end method

.method public isZoomInByScreenCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/v;->o:Z

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/v;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/v;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/v;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/v;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->i:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setGestureScaleByMapCenter(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->p:Z

    return-void
.end method

.method public setIndoorSwitchEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->n:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLogoBottomMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/k;->j(I)V

    return-void
.end method

.method public setLogoEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->k:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLogoLeftMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/k;->k(I)V

    return-void
.end method

.method public setLogoMarginRate(IF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/k;->a(IF)V

    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/v;->l:I

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/k;->i(I)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->c:Z

    return-void
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->j:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->d:Z

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->e:Z

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->h:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->g:Z

    return-void
.end method

.method public setZoomInByScreenCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/v;->o:Z

    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/v;->m:I

    iget-object v0, p0, Lcom/amap/api/mapcore/v;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/k;->f(I)V

    return-void
.end method
