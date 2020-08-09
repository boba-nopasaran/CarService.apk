.class Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2$1;
.super Ljava/lang/Object;
.source "SdkUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
