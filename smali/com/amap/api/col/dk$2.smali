.class Lcom/amap/api/col/dk$2;
.super Ljava/lang/Object;
.source "SDKLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/dk;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/dk;


# direct methods
.method constructor <init>(Lcom/amap/api/col/dk;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/dk$2;->a:Lcom/amap/api/col/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dk$2;->a:Lcom/amap/api/col/dk;

    invoke-static {v0, p1}, Lcom/amap/api/col/dk;->a(Lcom/amap/api/col/dk;Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method
