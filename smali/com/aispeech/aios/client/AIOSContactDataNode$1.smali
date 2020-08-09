.class Lcom/aispeech/aios/client/AIOSContactDataNode$1;
.super Lcom/aispeech/aios/BaseNode;
.source "AIOSContactDataNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/client/AIOSContactDataNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/client/AIOSContactDataNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/client/AIOSContactDataNode;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSContactDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSContactDataNode;

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "phone.contacts"

    return-object v0
.end method

.method public varargs onCall(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
