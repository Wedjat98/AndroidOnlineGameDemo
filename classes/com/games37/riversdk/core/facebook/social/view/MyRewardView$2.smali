.class Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;
.super Ljava/lang/Object;
.source "MyRewardView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;->this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;->this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;

    .line 82
    .local v0, "item":Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getRewardType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 84
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getStateDisplay()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "serial":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;->this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->access$100(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/games37/riversdk/common/utils/CommonUtils;->copy2Clipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;->this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->access$100(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "i1_sdk_fb_social_copy_serial_num_success"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .end local v1    # "serial":Ljava/lang/String;
    :cond_2b
    return-void
.end method
