.class Lcom/kaolafm/sdk/client/KLClientAPI$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->search(Lcom/kaolafm/sdk/client/SoundQuality;Lcom/kaolafm/sdk/client/Scenes;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$audioName:Ljava/lang/String;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$credibility:Z

.field final synthetic val$field:Lcom/kaolafm/sdk/client/Scenes;

.field final synthetic val$keywords:Ljava/util/List;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/SearchResult;

.field final synthetic val$qualityType:Lcom/kaolafm/sdk/client/SoundQuality;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/util/List;Lcom/kaolafm/sdk/client/SearchResult;Lcom/kaolafm/sdk/client/SoundQuality;Lcom/kaolafm/sdk/client/Scenes;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$keywords:Ljava/util/List;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$listener:Lcom/kaolafm/sdk/client/SearchResult;

    iput-object p4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$qualityType:Lcom/kaolafm/sdk/client/SoundQuality;

    iput-object p5, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$field:Lcom/kaolafm/sdk/client/Scenes;

    iput-boolean p6, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$credibility:Z

    iput-object p7, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$artist:Ljava/lang/String;

    iput-object p8, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$audioName:Ljava/lang/String;

    iput-object p9, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$albumName:Ljava/lang/String;

    iput-object p10, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$category:Ljava/lang/String;

    iput-object p11, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 11

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$keywords:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$keywords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$listener:Lcom/kaolafm/sdk/client/SearchResult;

    new-instance v1, Lcom/kaolafm/sdk/client/ErrorInfo;

    const v2, 0x9c40

    invoke-direct {v1, v2}, Lcom/kaolafm/sdk/client/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/SearchResult;->onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$keywords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$keywords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_2

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$qualityType:Lcom/kaolafm/sdk/client/SoundQuality;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SoundQuality;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$field:Lcom/kaolafm/sdk/client/Scenes;

    invoke-virtual {v2}, Lcom/kaolafm/sdk/client/Scenes;->value()I

    move-result v2

    iget-boolean v4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$credibility:Z

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    iget-object v4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$artist:Ljava/lang/String;

    iget-object v5, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$audioName:Ljava/lang/String;

    iget-object v6, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$albumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$category:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$text:Ljava/lang/String;

    iget-object v10, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$listener:Lcom/kaolafm/sdk/client/SearchResult;

    invoke-interface/range {v0 .. v10}, Lcom/kaolafm/sdk/client/IClientAPI;->search2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
