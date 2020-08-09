.class public Lcom/aispeech/aios/bean/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private final phoneInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo;->phoneInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPhoneInfo(Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo;->phoneInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo;->phoneInfos:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/bean/ContactInfo;->name:Ljava/lang/String;

    return-void
.end method
