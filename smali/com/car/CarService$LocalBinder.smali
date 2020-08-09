.class public Lcom/car/CarService$LocalBinder;
.super Landroid/os/Binder;
.source "CarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/CarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/CarService;


# direct methods
.method public constructor <init>(Lcom/car/CarService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/CarService$LocalBinder;->this$0:Lcom/car/CarService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/CarService;
    .locals 1

    iget-object v0, p0, Lcom/car/CarService$LocalBinder;->this$0:Lcom/car/CarService;

    return-object v0
.end method
