.class Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;
.super Ljava/lang/Object;
.source "FloatViewManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->applyPermission(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    const/4 v1, 0x0

    # setter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$202(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Z)Z

    .line 185
    return-void
.end method

.method public onConfirm()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    const/4 v1, 0x0

    # setter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->isApplying:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$202(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Z)Z

    .line 178
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$2;->val$activity:Landroid/app/Activity;

    .line 179
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->doApplyPermission(Landroid/content/Context;)V

    .line 180
    return-void
.end method
