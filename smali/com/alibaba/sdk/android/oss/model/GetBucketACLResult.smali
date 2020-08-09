.class public Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "GetBucketACLResult.java"


# instance fields
.field private bucketACL:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field private bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    return-void
.end method


# virtual methods
.method public getBucketACL()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketACL:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketACL:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBucketOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketOwnerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lcom/alibaba/sdk/android/oss/model/Owner;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    return-object v0
.end method

.method public setBucketACL(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->parseACL(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketACL:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setBucketOwner(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setBucketOwnerID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->bucketOwner:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    return-void
.end method
