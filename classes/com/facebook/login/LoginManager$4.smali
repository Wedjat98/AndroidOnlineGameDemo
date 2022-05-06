.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field private final synthetic val$applicationId:Ljava/lang/String;

.field private final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field private final synthetic val$loggerRef:Ljava/lang/String;

.field private final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 19
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 671
    if-eqz p1, :cond_ab

    .line 673
    const-string v4, "com.facebook.platform.status.ERROR_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 675
    .local v12, "errorType":Ljava/lang/String;
    const-string v4, "com.facebook.platform.status.ERROR_DESCRIPTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 676
    .local v11, "errorDescription":Ljava/lang/String;
    if-eqz v12, :cond_24

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    .line 681
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    .line 682
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    .line 677
    # invokes: Lcom/facebook/login/LoginManager;->handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    invoke-static {v12, v11, v4, v7, v8}, Lcom/facebook/login/LoginManager;->access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    .line 732
    .end local v11    # "errorDescription":Ljava/lang/String;
    .end local v12    # "errorType":Ljava/lang/String;
    :goto_23
    return-void

    .line 685
    .restart local v11    # "errorDescription":Ljava/lang/String;
    .restart local v12    # "errorType":Ljava/lang/String;
    :cond_24
    const-string v4, "com.facebook.platform.extra.ACCESS_TOKEN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "token":Ljava/lang/String;
    const-string v4, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 687
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 690
    .local v14, "expires":J
    const-string v4, "com.facebook.platform.extra.PERMISSIONS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 692
    .local v6, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "signed request"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 693
    .local v16, "signedRequest":Ljava/lang/String;
    const/4 v5, 0x0

    .line 694
    .local v5, "userId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 696
    invoke-static/range {v16 .. v16}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 699
    :cond_4f
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 700
    if-eqz v6, :cond_97

    .line 701
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_97

    .line 702
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 703
    new-instance v2, Lcom/facebook/AccessToken;

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    .line 708
    const/4 v7, 0x0

    .line 709
    const/4 v8, 0x0

    .line 710
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 711
    const/4 v10, 0x0

    .line 703
    invoke-direct/range {v2 .. v10}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 712
    .local v2, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v2}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 714
    # invokes: Lcom/facebook/login/LoginManager;->getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;
    invoke-static/range {p1 .. p1}, Lcom/facebook/login/LoginManager;->access$1(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object v13

    .line 715
    .local v13, "profile":Lcom/facebook/Profile;
    if-eqz v13, :cond_93

    .line 716
    invoke-static {v13}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 721
    :goto_80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4, v2}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto :goto_23

    .line 718
    :cond_93
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    goto :goto_80

    .line 724
    .end local v2    # "accessToken":Lcom/facebook/AccessToken;
    .end local v13    # "profile":Lcom/facebook/Profile;
    :cond_97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto/16 :goto_23

    .line 729
    .end local v3    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "errorDescription":Ljava/lang/String;
    .end local v12    # "errorType":Ljava/lang/String;
    .end local v14    # "expires":J
    .end local v16    # "signedRequest":Ljava/lang/String;
    :cond_ab
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto/16 :goto_23
.end method
