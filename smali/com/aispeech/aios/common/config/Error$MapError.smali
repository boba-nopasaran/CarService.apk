.class public final Lcom/aispeech/aios/common/config/Error$MapError;
.super Ljava/lang/Object;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/config/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapError"
.end annotation


# static fields
.field public static final LOCATED_ERROR_ID:I = 0x2

.field public static final LOCATED_ERROR_INFO:Ljava/lang/String; = "located failed"

.field public static final NETWORK_ABNORMAL_ID:I = 0x3

.field public static final NETWORK_ABNORMAL_INFO:Ljava/lang/String; = "network abnormal"

.field public static final NO_ERROR:I = 0x0

.field public static final NO_POI_ERROR_ID:I = 0x1

.field public static final NO_POI_ERROR_INFO:Ljava/lang/String; = "poi not found"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
