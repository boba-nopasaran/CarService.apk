.class public Lcom/jiagu/MultipleBleService$LocalBinder;
.super Landroid/os/Binder;
.source "MultipleBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/MultipleBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiagu/MultipleBleService;


# direct methods
.method public constructor <init>(Lcom/jiagu/MultipleBleService;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/MultipleBleService$LocalBinder;->this$0:Lcom/jiagu/MultipleBleService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/MultipleBleService$LocalBinder;->this$0:Lcom/jiagu/MultipleBleService;

    return-object v0
.end method
