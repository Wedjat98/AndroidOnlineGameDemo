.class Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->doGraphRequestForGetFriends(Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

.field final synthetic val$type:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    iput-object p3, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->val$type:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 598
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 599
    .local v0, "graphObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_32

    .line 600
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGraphRequestForGetFriends graphObject.toString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 601
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    iget-object v3, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iget-object v4, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->val$type:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    # invokes: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getFriendsInfoFromJson(Lorg/json/JSONObject;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)[Landroid/os/Bundle;
    invoke-static {v3, v0, v4}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$200(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lorg/json/JSONObject;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 608
    :goto_31
    return-void

    .line 604
    :cond_32
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-nez v2, :cond_60

    const-string v1, "error"

    .line 605
    .local v1, "msg":Ljava/lang/String;
    :goto_3a
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGraphRequestForGetFriends onCompleted error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v3, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_31

    .line 604
    .end local v1    # "msg":Ljava/lang/String;
    :cond_60
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method
