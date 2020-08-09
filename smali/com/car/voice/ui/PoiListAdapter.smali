.class public Lcom/car/voice/ui/PoiListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PoiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/ui/PoiListAdapter$1;,
        Lcom/car/voice/ui/PoiListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/car/voice/ui/PoiListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/voice/ui/PoiListAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/car/voice/ui/PoiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/ui/PoiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/PoiListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/PoiListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/car/voice/ui/PoiListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/common/voice/SuggestItem;

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/car/voice/ui/PoiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030006

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;-><init>(Lcom/car/voice/ui/PoiListAdapter;Lcom/car/voice/ui/PoiListAdapter$1;)V

    const v3, 0x7f0b000a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->id:Landroid/widget/TextView;

    const v3, 0x7f0b000b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0b000c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const v3, 0x7f0b000d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->id:Landroid/widget/TextView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v2}, Lcom/car/common/voice/SuggestItem;->getDistanceString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/car/voice/ui/PoiListAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
