.class Lcom/car/speech/MiniSpeech$2;
.super Ljava/lang/Object;
.source "MiniSpeech.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/MiniSpeech;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/MiniSpeech;


# direct methods
.method constructor <init>(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/MiniSpeech$2;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$2;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-static {v0}, Lcom/car/speech/MiniSpeech;->access$000(Lcom/car/speech/MiniSpeech;)Lcom/aispeech/speech/AIAuthEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/AIAuthEngine;->doAuth()Z

    return-void
.end method
