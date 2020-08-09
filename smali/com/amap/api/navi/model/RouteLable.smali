.class public Lcom/amap/api/navi/model/RouteLable;
.super Ljava/lang/Object;
.source "RouteLable.java"


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/route/model/LabelInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/autonavi/ae/route/model/LabelInfo;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteLable;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteLable;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteLable;->label:Ljava/lang/String;

    return-void
.end method
