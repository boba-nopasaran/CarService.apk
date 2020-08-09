.class public Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/bean/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    return-void
.end method
