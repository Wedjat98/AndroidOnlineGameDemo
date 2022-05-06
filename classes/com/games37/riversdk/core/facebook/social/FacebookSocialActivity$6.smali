.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initInviteView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvite(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "inviteFriendsToken":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFBInvite(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$900(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 538
    return-void
.end method
