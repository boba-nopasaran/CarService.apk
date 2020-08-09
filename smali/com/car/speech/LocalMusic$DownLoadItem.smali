.class Lcom/car/speech/LocalMusic$DownLoadItem;
.super Ljava/lang/Object;
.source "LocalMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/LocalMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownLoadItem"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/speech/LocalMusic;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/LocalMusic$DownLoadItem;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/car/speech/LocalMusic$DownLoadItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/speech/LocalMusic$DownLoadItem;->name:Ljava/lang/String;

    return-void
.end method
