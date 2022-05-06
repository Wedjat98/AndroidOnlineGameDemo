.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initPresentView(Landroid/app/Activity;)V
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
    .line 723
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresent(Ljava/util/List;)V
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
    .line 733
    .local p1, "fbids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestPresentGift(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1500(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 734
    return-void
.end method

.method public onReceive(Ljava/util/List;)V
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
    .line 727
    .local p1, "tokenids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestReceiveGift(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1400(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 728
    return-void
.end method
