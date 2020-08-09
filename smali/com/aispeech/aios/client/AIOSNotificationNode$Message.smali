.class public Lcom/aispeech/aios/client/AIOSNotificationNode$Message;
.super Ljava/lang/Object;
.source "AIOSNotificationNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/client/AIOSNotificationNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$Message;->topic:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$Message;->args:[Ljava/lang/String;

    return-void
.end method
