.class final Lcom/aispeech/a/f$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/a/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/a/f;


# direct methods
.method constructor <init>(Lcom/aispeech/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a/f$1;->a:Lcom/aispeech/a/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/aispeech/a/f$1;->a:Lcom/aispeech/a/f;

    invoke-static {v0}, Lcom/aispeech/a/f;->a(Lcom/aispeech/a/f;)V

    return-void
.end method
