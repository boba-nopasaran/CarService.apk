.class public Lcom/amap/api/col/fh;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/amap/api/col/fb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/col/fb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/amap/api/col/fh;->a:Lcom/amap/api/col/fb;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/fh;->a:Lcom/amap/api/col/fb;

    invoke-interface {v0, p1}, Lcom/amap/api/col/fb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/fh;->a:Lcom/amap/api/col/fb;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/col/fb;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
