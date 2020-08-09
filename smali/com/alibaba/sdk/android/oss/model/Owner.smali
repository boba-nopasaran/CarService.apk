.class public Lcom/alibaba/sdk/android/oss/model/Owner;
.super Ljava/lang/Object;
.source "Owner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1af6110a0c683242L


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/alibaba/sdk/android/oss/model/Owner;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Owner [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
