.class Lcom/car/gpsservice/CarGPSService$2;
.super Lcom/car/gpsservice/ICarGPSService$Stub;
.source "CarGPSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/gpsservice/CarGPSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/gpsservice/CarGPSService;


# direct methods
.method constructor <init>(Lcom/car/gpsservice/CarGPSService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/gpsservice/CarGPSService$2;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-direct {p0}, Lcom/car/gpsservice/ICarGPSService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentGPSFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService$2;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v0}, Lcom/car/gpsservice/CarGPSService;->access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/gpsservice/CarGPSThread;->getCurrentGPSFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGPSInfo()[I
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService$2;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v0}, Lcom/car/gpsservice/CarGPSService;->access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/gpsservice/CarGPSThread;->getCurrentGPSInfo()[I

    move-result-object v0

    return-object v0
.end method

.method public getHistoryGPSZipFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService$2;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-static {v0}, Lcom/car/gpsservice/CarGPSService;->access$100(Lcom/car/gpsservice/CarGPSService;)Lcom/car/gpsservice/CarGPSThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/gpsservice/CarGPSThread;->getOldestGPSZipFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
