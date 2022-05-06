.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetTimestamp(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onSuccess(ILjava/lang/Long;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "serverTimeMillis"    # Ljava/lang/Long;

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 321
    .local v0, "currentTimeMillis":J
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 323
    .local v2, "diff":J
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mDifferenceTime:J
    invoke-static {v4, v2, v3}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$202(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;J)J

    .line 325
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "difference"

    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mDifferenceTime:J
    invoke-static {v6}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$200(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 326
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 315
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;->onSuccess(ILjava/lang/Long;)V

    return-void
.end method
