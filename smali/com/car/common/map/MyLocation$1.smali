.class Lcom/car/common/map/MyLocation$1;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/common/map/MyLocation;->registerListener(Lcom/amap/api/location/AMapLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/map/MyLocation;


# direct methods
.method constructor <init>(Lcom/car/common/map/MyLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/map/MyLocation$1;->this$0:Lcom/car/common/map/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/common/map/MyLocation$1;->this$0:Lcom/car/common/map/MyLocation;

    invoke-static {v0}, Lcom/car/common/map/MyLocation;->access$000(Lcom/car/common/map/MyLocation;)V

    return-void
.end method
