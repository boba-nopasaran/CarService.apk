.class Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;
.super Ljava/lang/Object;
.source "NaviChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/NaviChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortCutNavi"
.end annotation


# instance fields
.field mDir:Landroid/widget/TextView;

.field mDirection:Landroid/widget/ImageView;

.field mDistanceRemain:Landroid/widget/TextView;

.field mRoadName:Landroid/widget/TextView;

.field mTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/car/systemfunc/NaviChangeReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/NaviChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
