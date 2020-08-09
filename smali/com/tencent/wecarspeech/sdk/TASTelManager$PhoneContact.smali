.class public Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;
.super Ljava/lang/Object;
.source "TASTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneContact"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->mNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;->mNumber:Ljava/lang/String;

    return-object v0
.end method
