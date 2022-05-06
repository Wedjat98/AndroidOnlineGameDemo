.class final Lcom/games37/riversdk/core/util/UpdatePlugin$3;
.super Ljava/lang/Object;
.source "UpdatePlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/UpdatePlugin;->showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 184
    iput-object p1, p0, Lcom/games37/riversdk/core/util/UpdatePlugin$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/games37/riversdk/core/util/UpdatePlugin$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/games37/riversdk/core/util/UpdatePlugin$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/core/util/UpdatePlugin$3;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/util/UpdatePlugin;->goUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/util/UpdatePlugin;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    .line 189
    return-void
.end method
