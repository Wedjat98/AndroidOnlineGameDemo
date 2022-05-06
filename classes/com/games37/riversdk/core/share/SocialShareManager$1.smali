.class Lcom/games37/riversdk/core/share/SocialShareManager$1;
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
        "Ljava/lang/String;",
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
    .line 80
    iput-object p1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v1, -0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 100
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "errorParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v1, p1, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 80
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/share/SocialShareManager$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->this$0:Lcom/games37/riversdk/core/share/SocialShareManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$activity:Landroid/app/Activity;

    sget-object v3, Lcom/games37/riversdk/core/share/SocialType;->MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    # invokes: Lcom/games37/riversdk/core/share/SocialShareManager;->reportSocialEvent(Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V
    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/core/share/SocialShareManager;->access$000(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/games37/riversdk/core/share/SocialShareManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 88
    return-void
.end method
