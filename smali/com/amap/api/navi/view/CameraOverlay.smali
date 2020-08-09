.class public Lcom/amap/api/navi/view/CameraOverlay;
.super Ljava/lang/Object;
.source "CameraOverlay.java"


# instance fields
.field private mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mCameraMarker:Lcom/amap/api/maps/model/Marker;

.field private mLastLatLng:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mLastLatLng:Lcom/amap/api/maps/model/LatLng;

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;
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

.method public constructor <init>(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mLastLatLng:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public draw(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLng;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    :goto_1
    iput-object p2, p0, Lcom/amap/api/navi/view/CameraOverlay;->mLastLatLng:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "CameraOverlay"

    const-string v2, "draw(AMap aMap, LatLng latLng)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mLastLatLng:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2, v0}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setCameraBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/CameraOverlay;->mCameraMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_0
    return-void
.end method
