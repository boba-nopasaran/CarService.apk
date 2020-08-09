.class public Lcom/amap/api/navi/view/AmapCameraOverlay;
.super Ljava/lang/Object;
.source "AmapCameraOverlay.java"


# instance fields
.field private mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mContext:Landroid/content/Context;

.field private mLastFlag:Z

.field private mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private markerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020008

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702000f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object p1, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "CameraOverlay"

    const-string v2, "CameraOverlay()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->removeAllCamera()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_8
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public draw(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviCameraInfo;I)V
    .locals 12

    const v0, 0x3f333333    # 0.7f

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v3, 0x41d00000    # 26.0f

    const/16 v4, 0x4b

    if-le p3, v4, :cond_2

    const/16 v4, 0x87

    if-ge p3, v4, :cond_2

    mul-int/lit16 v3, p3, 0x3e8

    :try_start_0
    div-int/lit16 v3, v3, 0xe10

    int-to-double v4, v3

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    double-to-float v3, v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "CameraOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key \u5305\u542b\u5728 map \u4e2d,\u8ddd\u79bb\u6444\u50cf\u5934:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraDistance()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u7c73\uff0cflag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraDistance()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->removeAllCamera()V

    iget-boolean v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z

    if-nez v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "CameraOverlay"

    const-string v2, "draw(AMap aMap, LatLng latLng)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraDistance()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z

    move v3, v1

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v6}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraType()I

    move-result v6

    if-eqz v3, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    move v1, v0

    :goto_3
    const-string v0, "CameraOverlay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key \u4e0d\u5305\u542b\u5728 map \u4e2d,\u6444\u50cf\u5934\u7c7b\u578b="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\u8ddd\u79bb:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraDistance()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v6, :pswitch_data_0

    :goto_4
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mLastFlag:Z

    move v3, v2

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    goto :goto_3

    :pswitch_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x10000

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x31

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getCameraSpeed()I

    move-result v0

    const/16 v7, 0x63

    if-le v0, v7, :cond_7

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_8

    const v0, 0x47020010    # 33280.062f

    :goto_6
    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v3, v7, :cond_9

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    invoke-static {v6}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    new-instance v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v6}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    :cond_8
    const v0, 0x47020011

    goto :goto_6

    :cond_9
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :pswitch_1
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_8
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    goto :goto_8

    :pswitch_2
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_9
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    goto :goto_9

    :pswitch_3
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_a
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    goto :goto_a

    :pswitch_4
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getY()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->getX()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_b
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllCamera()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->remove()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->markerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method public setBusBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mBusRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    return-void
.end method

.method public setCameraBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    return-void
.end method

.method public setCameraMoniterBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mCameraRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    return-void
.end method

.method public setEmergencyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mYingjiRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    return-void
.end method

.method public setRedLightBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedLeftIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AmapCameraOverlay;->mRedRightIcon:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    return-void
.end method
