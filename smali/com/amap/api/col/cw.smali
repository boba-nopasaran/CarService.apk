.class public Lcom/amap/api/col/cw;
.super Ljava/lang/Object;
.source "TaskPackage.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/col/cw;->a:I

    iput p2, p0, Lcom/amap/api/col/cw;->b:I

    iput-object p3, p0, Lcom/amap/api/col/cw;->c:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cw;->b:I

    return v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cw;->c:[B

    return-object v0
.end method
