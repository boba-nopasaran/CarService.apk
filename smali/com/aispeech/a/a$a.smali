.class final Lcom/aispeech/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private synthetic b:Lcom/aispeech/a/a;


# direct methods
.method public constructor <init>(Lcom/aispeech/a/a;J)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/a/a$a;->b:Lcom/aispeech/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aispeech/a/a$a;->a:J

    iput-wide p2, p0, Lcom/aispeech/a/a$a;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "AIAudioRecorder"

    const-string v1, "Read Buffer Task run..."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a$a;->b:Lcom/aispeech/a/a;

    iget-wide v2, p0, Lcom/aispeech/a/a$a;->a:J

    invoke-static {v0, v2, v3}, Lcom/aispeech/a/a;->a(Lcom/aispeech/a/a;J)V

    const-string v0, "AIAudioRecorder"

    const-string v1, "Read Buffer Task end..."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
