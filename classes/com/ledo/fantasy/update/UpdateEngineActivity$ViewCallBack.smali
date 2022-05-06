.class Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;


# direct methods
.method private constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 2

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)V
    .registers 3

    .prologue
    .line 1206
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)Lcom/ledo/fantasy/update/UpdateEngineActivity;
    .registers 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    return-object v0
.end method


# virtual methods
.method public onVideoEvent(II)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "event"    # I

    .prologue
    .line 1210
    const/4 v0, 0x3

    if-ne p2, v0, :cond_c

    .line 1212
    new-instance v0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)V

    .line 1226
    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->start()V

    .line 1233
    :cond_b
    :goto_b
    return-void

    .line 1228
    :cond_c
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    .line 1230
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onVideoPlayEnd()V

    goto :goto_b
.end method
