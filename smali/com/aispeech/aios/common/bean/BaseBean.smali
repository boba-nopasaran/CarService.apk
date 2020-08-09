.class public Lcom/aispeech/aios/common/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private outPut:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutPut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/BaseBean;->outPut:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/BaseBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setOutPut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/BaseBean;->outPut:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/BaseBean;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
