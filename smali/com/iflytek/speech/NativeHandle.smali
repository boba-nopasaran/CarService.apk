.class public Lcom/iflytek/speech/NativeHandle;
.super Ljava/lang/Object;
.source "NativeHandle.java"


# instance fields
.field public err_ret:I

.field public native_point:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    return-void
.end method


# virtual methods
.method public getErr_ret()I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    return v0
.end method

.method public getNative_point()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    return-wide v0
.end method

.method public reSet()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    return-void
.end method

.method public setErr_ret(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    return-void
.end method

.method public setNative_point(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    return-void
.end method
