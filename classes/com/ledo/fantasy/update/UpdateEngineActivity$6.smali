.class Lcom/ledo/fantasy/update/UpdateEngineActivity$6;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v3, 0x1

    .line 1262
    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-static {v1, v3}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$18(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    .line 1264
    :try_start_6
    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    invoke-static {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$19(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->stop()V

    .line 1265
    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$20(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoView:Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$19(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_31

    .line 1269
    :goto_1e
    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$21(Lcom/ledo/fantasy/update/UpdateEngineActivity;Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    .line 1270
    iget-object v1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$6;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # invokes: Lcom/ledo/fantasy/update/UpdateEngineActivity;->updateEngineRunEnd()V
    invoke-static {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$3(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    .line 1271
    const-string v1, "UpdateEngine"

    const-string v2, "CG Play Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return v3

    .line 1266
    :catch_31
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
