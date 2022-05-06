.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerRewardRecord(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 696
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->onSuccess(ILjava/util/List;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .registers 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1300(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->updateData(Ljava/util/List;)V

    .line 701
    return-void
.end method
