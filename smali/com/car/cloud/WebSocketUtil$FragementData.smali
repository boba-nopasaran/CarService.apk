.class final Lcom/car/cloud/WebSocketUtil$FragementData;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/WebSocketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragementData"
.end annotation


# instance fields
.field private data:Lorg/java_websocket/framing/Framedata;

.field jso:Lorg/json/JSONObject;

.field public msgType:Lorg/java_websocket/framing/Framedata$Opcode;


# direct methods
.method public constructor <init>(Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/framing/Framedata$Opcode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$FragementData;->data:Lorg/java_websocket/framing/Framedata;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$FragementData;->msgType:Lorg/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method static synthetic access$1900(Lcom/car/cloud/WebSocketUtil$FragementData;)Lorg/java_websocket/framing/Framedata;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$FragementData;->data:Lorg/java_websocket/framing/Framedata;

    return-object v0
.end method
