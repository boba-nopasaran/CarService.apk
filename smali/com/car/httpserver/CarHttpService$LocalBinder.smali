.class public Lcom/car/httpserver/CarHttpService$LocalBinder;
.super Landroid/os/Binder;
.source "CarHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/CarHttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/CarHttpService;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/CarHttpService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/CarHttpService$LocalBinder;->this$0:Lcom/car/httpserver/CarHttpService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/httpserver/CarHttpService;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService$LocalBinder;->this$0:Lcom/car/httpserver/CarHttpService;

    return-object v0
.end method
