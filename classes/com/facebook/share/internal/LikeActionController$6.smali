.class Lcom/facebook/share/internal/LikeActionController$6;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "$anonymous0"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    .line 881
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 958
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController$6;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 959
    return-void
.end method

.method public onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 9
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 937
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 938
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$0()Ljava/lang/String;

    move-result-object v2

    .line 939
    const-string v3, "Like Dialog failed with error : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 940
    aput-object p2, v4, v5

    .line 936
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v1, :cond_3a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v0, "logParams":Landroid/os/Bundle;
    :goto_1a
    const-string v1, "call_id"

    .line 945
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "present_dialog"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/LikeActionController;->access$19(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 951
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 952
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 953
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v3

    .line 950
    # invokes: Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->access$20(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 954
    return-void

    .line 942
    .end local v0    # "logParams":Landroid/os/Bundle;
    :cond_3a
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_1a
.end method

.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 884
    if-eqz p2, :cond_a

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 932
    :cond_a
    :goto_a
    return-void

    .line 889
    :cond_b
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 893
    .local v1, "isObjectLiked":Z
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$3(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "likeCountStringWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$4(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "likeCountStringWithoutLike":Ljava/lang/String;
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 898
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    move-object v3, v2

    .line 902
    :cond_2c
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$5(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$6(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    .line 905
    .local v5, "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 907
    const-string v0, "social_sentence"

    .line 906
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 908
    move-object v5, v4

    .line 911
    :cond_47
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 912
    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_55
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_84

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 918
    .local v7, "logParams":Landroid/os/Bundle;
    :goto_5e
    const-string v0, "call_id"

    .line 919
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 917
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$17(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 921
    const-string v8, "fb_like_control_dialog_did_succeed"

    .line 922
    const/4 v9, 0x0

    .line 920
    invoke-virtual {v0, v8, v9, v7}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 925
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$18(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 913
    .end local v6    # "unlikeToken":Ljava/lang/String;
    .end local v7    # "logParams":Landroid/os/Bundle;
    :cond_7d
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$16(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    .line 916
    .restart local v6    # "unlikeToken":Ljava/lang/String;
    :cond_84
    iget-object v7, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_5e
.end method
