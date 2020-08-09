.class Lcom/car/voice/ui/PoiListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PoiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/ui/PoiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field distance:Landroid/widget/TextView;

.field id:Landroid/widget/TextView;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/car/voice/ui/PoiListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/car/voice/ui/PoiListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->this$0:Lcom/car/voice/ui/PoiListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/voice/ui/PoiListAdapter;Lcom/car/voice/ui/PoiListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;-><init>(Lcom/car/voice/ui/PoiListAdapter;)V

    return-void
.end method
