.class final Lcom/amap/api/col/gs$1;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/gs;->a(Lcom/amap/api/col/gr;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/gr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/gs$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/gs$1;->b:Lcom/amap/api/col/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/gs$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/amap/api/col/eu;->g:Ljava/lang/String;

    const v2, 0x4b000

    iget-object v3, p0, Lcom/amap/api/col/gs$1;->b:Lcom/amap/api/col/gr;

    invoke-virtual {v3}, Lcom/amap/api/col/gr;->a()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/gt;->a(Landroid/content/Context;Ljava/lang/String;I[B)V

    return-void
.end method
