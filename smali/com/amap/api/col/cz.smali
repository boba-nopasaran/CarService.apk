.class public Lcom/amap/api/col/cz;
.super Ljava/lang/Object;
.source "FrameForRTBT.java"

# interfaces
.implements Lcom/autonavi/rtbt/IFrameForRTBT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/cz$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/navi/model/NaviInfo;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Lcom/amap/api/navi/model/AMapNaviLocation;

.field g:Lcom/amap/api/navi/model/AmapCarLocation;

.field h:I

.field i:[B

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:I

.field n:I

.field private o:I

.field private p:I

.field private q:Lcom/amap/api/col/dj;

.field private r:Landroid/content/Context;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/AMapNaviListener;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/amap/api/col/cz$a;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/dj;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/col/cz;->b:I

    iput-object v0, p0, Lcom/amap/api/col/cz;->c:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/cz;->d:I

    iput v1, p0, Lcom/amap/api/col/cz;->e:I

    iput v1, p0, Lcom/amap/api/col/cz;->h:I

    iput-object v0, p0, Lcom/amap/api/col/cz;->i:[B

    iput-object v0, p0, Lcom/amap/api/col/cz;->j:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/cz;->k:I

    iput v1, p0, Lcom/amap/api/col/cz;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/cz;->p:I

    iput v1, p0, Lcom/amap/api/col/cz;->m:I

    iput v1, p0, Lcom/amap/api/col/cz;->n:I

    new-instance v0, Lcom/amap/api/col/cz$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cz$a;-><init>(Lcom/amap/api/col/cz;)V

    iput-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    iput-object p2, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    iput-object p1, p0, Lcom/amap/api/col/cz;->r:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/cz;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cz;->p:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/cz;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cz;->u:Z

    return v0
.end method


# virtual methods
.method public GetDialect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public PlayVoiceType(I)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->a:Lcom/amap/api/navi/model/NaviInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->g:Lcom/amap/api/navi/model/AmapCarLocation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cz;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/cz;->p:I

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "onStartNavi(int flag)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "addAMapNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/cz;->u:Z

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "onGpsOpenStatus(boolean enabled)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public arriveWay(I)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/cz;->d:I

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "arriveWay(int wayId)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xf

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/cz$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "initSuccess()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "removeNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "initFailure()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public carLocationChange(Lcom/autonavi/rtbt/CarLocation;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_Speed:I

    iput v0, p0, Lcom/amap/api/col/cz;->o:I

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-direct {v0}, Lcom/amap/api/navi/model/AMapNaviLocation;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    iget-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    iget v1, p1, Lcom/autonavi/rtbt/CarLocation;->m_CarDir:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviLocation;->setBearing(F)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    iget v1, p1, Lcom/autonavi/rtbt/CarLocation;->m_Speed:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    iget v1, p1, Lcom/autonavi/rtbt/CarLocation;->m_MatchStatus:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviLocation;->setMatchStatus(I)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    new-instance v1, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v2, p1, Lcom/autonavi/rtbt/CarLocation;->m_Latitude:D

    iget-wide v4, p1, Lcom/autonavi/rtbt/CarLocation;->m_Longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviLocation;->setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/navi/model/AMapNaviLocation;->setTime(J)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameForWTBT carLocationChange(rtbt\u4f4d\u7f6e\u56de\u8c03),Latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/autonavi/rtbt/CarLocation;->m_Latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/autonavi/rtbt/CarLocation;->m_Longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "carLocationChange(CarLocation carLocation)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public carProjectionChange(Lcom/autonavi/rtbt/CarLocation;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/navi/model/AmapCarLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/model/AmapCarLocation;-><init>(Lcom/autonavi/rtbt/CarLocation;)V

    iput-object v0, p0, Lcom/amap/api/col/cz;->g:Lcom/amap/api/navi/model/AmapCarLocation;

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "carProjectionChange(CarLocation carLocation)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Lcom/amap/api/navi/model/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cz;->a:Lcom/amap/api/navi/model/NaviInfo;

    return-object v0
.end method

.method public endEmulatorNavi()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "endEmulatorNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPlayState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockScreenNaviTips(Ljava/lang/String;II)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/cz;->j:Ljava/lang/String;

    iput p2, p0, Lcom/amap/api/col/cz;->k:I

    iput p3, p0, Lcom/amap/api/col/cz;->l:I

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "lockScreenNaviTips(String soundStr, int iTurnIcon,\n                                   int iSegRemainLen)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public offRoute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/dj;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "offRoute()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playNaviSound(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/cz;->b:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const-string v0, "\u884c\u8fdb\u65b9\u5411\u6709\u8bef"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/amap/api/col/cz;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "playNaviSound(int soundType, String soundStr)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestHttp(IIILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://s.amap.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/dp;

    iget-object v1, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    iget-object v2, p0, Lcom/amap/api/col/cz;->r:Landroid/content/Context;

    move v4, p3

    move-object v5, p5

    move v6, p1

    move v7, p2

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/col/dp;-><init>(Lcom/amap/api/col/dj;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;II[B)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/amap/api/col/gu;->a(I)Lcom/amap/api/col/gu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/gu;->a(Lcom/amap/api/col/gv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "requestHttp(int moduleID, int connectID, int type, String url,\n                            String head, byte[] data, int dataLength)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public routeDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "routeDestroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRouteRequestState(I)V
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/cz;->h:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cz;->q:Lcom/amap/api/col/dj;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/col/dj;->c(I)I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/amap/api/col/cz;->s:Ljava/util/List;

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "setRouteRequestState(int requestRouteState)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateNaviInfo(Lcom/autonavi/rtbt/DGNaviInfo;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/navi/model/NaviInfo;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/model/NaviInfo;-><init>(Lcom/autonavi/rtbt/DGNaviInfo;)V

    iput-object v0, p0, Lcom/amap/api/col/cz;->a:Lcom/amap/api/navi/model/NaviInfo;

    iget-object v0, p0, Lcom/amap/api/col/cz;->a:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p0, Lcom/amap/api/col/cz;->o:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/NaviInfo;->setCurrentSpeed(I)V

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "updateNaviInfo(DGNaviInfo dgNaviInfo)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public vibratePhoneTips(II)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/cz;->m:I

    iput p2, p0, Lcom/amap/api/col/cz;->n:I

    iget-object v0, p0, Lcom/amap/api/col/cz;->t:Lcom/amap/api/col/cz$a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cz$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "FrameForWTBT"

    const-string v2, "vibratePhoneTips(int iStrength, int iTime)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
