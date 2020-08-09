.class Lcom/car/speech/LocalMusic$5;
.super Ljava/lang/Object;
.source "LocalMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/LocalMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/LocalMusic;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/LocalMusic$5;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/speech/LocalMusic$5;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v1, p0, Lcom/car/speech/LocalMusic$5;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v1, v1, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/car/speech/LocalMusic;->access$300(Lcom/car/speech/LocalMusic;Landroid/content/Context;)V

    return-void
.end method
