.class public Lcom/iflytek/cata/CataNativeHandle;
.super Ljava/lang/Object;
.source "CataNativeHandle.java"


# instance fields
.field public err_ret:I

.field public native_point:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErr_ret()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method

.method public getNative_point()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cata/CataNativeHandle;->native_point:I

    return v0
.end method

.method public reSet()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    iput v0, p0, Lcom/iflytek/cata/CataNativeHandle;->native_point:I

    return-void
.end method

.method public setErr_ret(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return-void
.end method

.method public setNative_point(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/cata/CataNativeHandle;->native_point:I

    return-void
.end method
