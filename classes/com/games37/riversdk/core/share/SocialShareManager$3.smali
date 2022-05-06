.class Lcom/games37/riversdk/core/share/SocialShareManager$3;
.super Ljava/lang/Object;
.source "SocialShareManager.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/share/SocialShareManager;->shareToSocialApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/share/SocialShareManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "errorParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 159
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "errorParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v1, p1, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 152
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iget-object v3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/games37/riversdk/core/share/SocialType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    # invokes: Lcom/games37/riversdk/core/share/SocialShareManager;->reportSocialEvent(Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/share/SocialShareManager;->access$000(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v1, "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$activity:Landroid/app/Activity;

    const-string v4, "r1_social_share_success"

    .line 142
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 141
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "msg"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 135
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/share/SocialShareManager$3;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
