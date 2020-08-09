.class public Lcom/car/gpsservice/CarGPSService$LocalBinder;
.super Landroid/os/Binder;
.source "CarGPSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/gpsservice/CarGPSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/gpsservice/CarGPSService;


# direct methods
.method public constructor <init>(Lcom/car/gpsservice/CarGPSService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/gpsservice/CarGPSService$LocalBinder;->this$0:Lcom/car/gpsservice/CarGPSService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/gpsservice/CarGPSService;
    .locals 1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSService$LocalBinder;->this$0:Lcom/car/gpsservice/CarGPSService;

    return-object v0
.end method
