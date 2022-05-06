.class Lcom/games37/riversdk/core/share/SocialShareManager$2;
.super Ljava/lang/Object;
.source "SocialShareManager.java"

# interfaces
.implements Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;


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
        "Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 105
    iput-object p1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 128
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "errorParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v1, p1, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 123
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iget-object v3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/games37/riversdk/core/share/SocialType;->LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    # invokes: Lcom/games37/riversdk/core/share/SocialShareManager;->reportSocialEvent(Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/share/SocialShareManager;->access$000(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v1, "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$activity:Landroid/app/Activity;

    const-string v4, "r1_social_share_success"

    .line 112
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "msg"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$2;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 116
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/share/SocialShareManager$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
