.class public Lorg/java_websocket/framing/FramedataImpl1;
.super Ljava/lang/Object;
.source "FramedataImpl1.java"

# interfaces
.implements Lorg/java_websocket/framing/FrameBuilder;


# static fields
.field protected static emptyarray:[B


# instance fields
.field protected fin:Z

.field protected optcode:Lorg/java_websocket/framing/Framedata$Opcode;

.field protected transferemasked:Z

.field private unmaskedpayload:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/java_websocket/framing/FramedataImpl1;->emptyarray:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/framing/Framedata$Opcode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/framing/Framedata$Opcode;

    sget-object v0, Lorg/java_websocket/framing/FramedataImpl1;->emptyarray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/framing/Framedata;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v0

    iput-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getTransfereMasked()Z

    move-result v0

    iput-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    return-void
.end method


# virtual methods
.method public append(Lorg/java_websocket/framing/Framedata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :goto_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    iput-boolean v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/framing/Framedata$Opcode;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTransfereMasked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    return v0
.end method

.method public isFin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    return v0
.end method

.method public setFin(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    return-void
.end method

.method public setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V
    .locals 0

    iput-object p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    iput-object p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setTransferemasked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Framedata{ optcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->isFin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payloadlength:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
