.class Lcom/aispeech/aios/BusClient$2;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/BusClient;

.field final synthetic val$multipart:Lcom/aispeech/aios/BusClient$Multipart;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$2;->this$0:Lcom/aispeech/aios/BusClient;

    iput-object p2, p0, Lcom/aispeech/aios/BusClient$2;->val$multipart:Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$2;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$2;->val$multipart:Lcom/aispeech/aios/BusClient$Multipart;

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V

    return-void
.end method
