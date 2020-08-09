.class final Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$1;
.super Ljava/lang/Object;
.source "SdkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$1;->val$context:Landroid/content/Context;

    const-string v1, "ijiazu_keysound_updown.mp3"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
