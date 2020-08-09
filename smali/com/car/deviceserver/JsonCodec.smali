.class public final Lcom/car/deviceserver/JsonCodec;
.super Ljava/lang/Object;
.source "JsonCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/deviceserver/JsonCodec$RegMsg;,
        Lcom/car/deviceserver/JsonCodec$TextMsg;,
        Lcom/car/deviceserver/JsonCodec$BaseMsg;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)Lcom/car/deviceserver/JsonCodec$BaseMsg;
    .locals 2

    new-instance v0, Lcom/car/deviceserver/JsonCodec$TextMsg;

    invoke-direct {v0}, Lcom/car/deviceserver/JsonCodec$TextMsg;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/car/deviceserver/JsonCodec$TextMsg;->error:I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/car/deviceserver/JsonCodec$TextMsg;->f_sendTime:Ljava/util/Date;

    const-string v1, "hello"

    iput-object v1, v0, Lcom/car/deviceserver/JsonCodec$TextMsg;->f_userId:Ljava/lang/String;

    const-string v1, "speech text"

    iput-object v1, v0, Lcom/car/deviceserver/JsonCodec$TextMsg;->f_text:Ljava/lang/String;

    return-object v0
.end method
