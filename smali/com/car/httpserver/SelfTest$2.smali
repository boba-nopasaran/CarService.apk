.class Lcom/car/httpserver/SelfTest$2;
.super Ljava/lang/Object;
.source "SelfTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/SelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/SelfTest;


# direct methods
.method constructor <init>(Lcom/car/httpserver/SelfTest;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/SelfTest$2;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/httpserver/SelfTest$2;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v0}, Lcom/car/httpserver/SelfTest;->access$100(Lcom/car/httpserver/SelfTest;)V

    iget-object v0, p0, Lcom/car/httpserver/SelfTest$2;->this$0:Lcom/car/httpserver/SelfTest;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest$2;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v1}, Lcom/car/httpserver/SelfTest;->access$200(Lcom/car/httpserver/SelfTest;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/httpserver/SelfTest;->access$300(Lcom/car/httpserver/SelfTest;Ljava/io/File;)V

    return-void
.end method
