.class Lcom/car/voice/cmd/Music$DownLoadItem;
.super Ljava/lang/Object;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/cmd/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownLoadItem"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/voice/cmd/Music;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Music;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Music$DownLoadItem;->this$0:Lcom/car/voice/cmd/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/car/voice/cmd/Music$DownLoadItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/voice/cmd/Music$DownLoadItem;->name:Ljava/lang/String;

    return-void
.end method
