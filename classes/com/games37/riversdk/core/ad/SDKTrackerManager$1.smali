.class final Lcom/games37/riversdk/core/ad/SDKTrackerManager$1;
.super Landroid/os/Handler;
.source "SDKTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/ad/SDKTrackerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_14

    .line 50
    :goto_5
    return-void

    .line 43
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 44
    .local v0, "count":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 45
    .local v1, "requestBundle":Landroid/os/Bundle;
    # getter for: Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->access$000()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/ad/SDKTrackerManager;->report(Landroid/app/Activity;Landroid/os/Bundle;I)V
    invoke-static {v2, v1, v0}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->access$100(Landroid/app/Activity;Landroid/os/Bundle;I)V

    goto :goto_5

    .line 41
    :pswitch_data_14
    .packed-switch 0x2710
        :pswitch_6
    .end packed-switch
.end method
