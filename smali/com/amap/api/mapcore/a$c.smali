.class Lcom/amap/api/mapcore/a$c;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/ck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/a;Lcom/amap/api/mapcore/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a$c;-><init>(Lcom/amap/api/mapcore/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, v1, Lcom/amap/api/col/g;->floor_indexs:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/amap/api/col/g;->activeFloorIndex:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, v1, Lcom/amap/api/col/g;->floor_names:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/amap/api/col/g;->activeFloorName:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$c;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
