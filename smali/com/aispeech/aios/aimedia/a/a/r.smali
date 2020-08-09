.class Lcom/aispeech/aios/aimedia/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IServiceDeathListener;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/r;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDeath()V
    .locals 2

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "\u670d\u52a1\u6302\u4e86\uff01\u8bf7\u91cd\u65b0\u521d\u59cb\u5316\uff0c\u5e76\u8fde\u63a5\uff01"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
