.class Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;
.super Ljava/lang/Object;
.source "InviteFriendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/Friend;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

.field final synthetic val$inviteCheck:Landroid/widget/CheckBox;

.field final synthetic val$inviteCheckId:I


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;ILandroid/widget/CheckBox;)V
    .registers 4
    .param p1, "this$1"    # Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    iput p2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->val$inviteCheckId:I

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->val$inviteCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 99
    .local v0, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    iget v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->val$inviteCheckId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    .local v1, "position":I
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->val$inviteCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 102
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    iget-object v2, v2, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getToken()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateInvitableFriendsList(ZLjava/lang/String;)V
    invoke-static {v2, v5, v3}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$100(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;ZLjava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    invoke-virtual {v2, v1, v5}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->setIsSelected(IZ)V

    .line 109
    :goto_2c
    return-void

    .line 106
    :cond_2d
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    iget-object v2, v2, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getToken()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateInvitableFriendsList(ZLjava/lang/String;)V
    invoke-static {v2, v4, v3}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$100(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;ZLjava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;->this$1:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    invoke-virtual {v2, v1, v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->setIsSelected(IZ)V

    goto :goto_2c
.end method
