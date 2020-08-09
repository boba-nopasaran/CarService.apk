.class Lcom/amap/api/col/cy$7;
.super Ljava/lang/Object;
.source "AMapNaviViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cy;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cy;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy$7;->a:Lcom/amap/api/col/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
