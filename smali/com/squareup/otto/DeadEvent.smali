.class public Lcom/squareup/otto/DeadEvent;
.super Ljava/lang/Object;
.source "DeadEvent.java"


# instance fields
.field public final event:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/otto/DeadEvent;->source:Ljava/lang/Object;

    iput-object p2, p0, Lcom/squareup/otto/DeadEvent;->event:Ljava/lang/Object;

    return-void
.end method
