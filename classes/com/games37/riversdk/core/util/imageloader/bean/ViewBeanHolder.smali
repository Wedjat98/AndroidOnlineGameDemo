.class public Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;
.super Ljava/lang/Object;
.source "ViewBeanHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public path:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    .local p0, "this":Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;, "Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
