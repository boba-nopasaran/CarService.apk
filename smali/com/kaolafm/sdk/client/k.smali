.class Lcom/kaolafm/sdk/client/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/SearchType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/kaolafm/sdk/client/an;

.field final synthetic f:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/an;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/k;->f:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/k;->a:Lcom/kaolafm/sdk/client/SearchType;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/k;->b:Ljava/lang/String;

    iput p4, p0, Lcom/kaolafm/sdk/client/k;->c:I

    iput p5, p0, Lcom/kaolafm/sdk/client/k;->d:I

    iput-object p6, p0, Lcom/kaolafm/sdk/client/k;->e:Lcom/kaolafm/sdk/client/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/kaolafm/sdk/client/k;->f:Lcom/kaolafm/sdk/client/i;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/k;->a:Lcom/kaolafm/sdk/client/SearchType;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SearchType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/k;->b:Ljava/lang/String;

    iget v3, p0, Lcom/kaolafm/sdk/client/k;->c:I

    iget v4, p0, Lcom/kaolafm/sdk/client/k;->d:I

    iget-object v5, p0, Lcom/kaolafm/sdk/client/k;->e:Lcom/kaolafm/sdk/client/an;

    invoke-static/range {v0 .. v5}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i;ILjava/lang/String;IILcom/kaolafm/sdk/client/an;)V

    return-void
.end method
