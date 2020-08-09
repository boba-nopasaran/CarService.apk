.class public interface abstract Lcom/jinglingtec/ijiazu/sdk/api/MenuView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;
    }
.end annotation


# virtual methods
.method public abstract addMenuItem([Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;)I
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setClickListener(Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;)V
.end method

.method public abstract setCurrentItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end method
