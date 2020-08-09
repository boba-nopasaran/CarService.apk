.class public Lcom/car/jiazu/Remote$ConnPara;
.super Ljava/lang/Object;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnPara"
.end annotation


# instance fields
.field public interval:F

.field public latency:I

.field final synthetic this$0:Lcom/car/jiazu/Remote;

.field public timeout:I


# direct methods
.method public constructor <init>(Lcom/car/jiazu/Remote;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/car/jiazu/Remote$ConnPara;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    iput v1, p0, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    iput v1, p0, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    return-void
.end method
