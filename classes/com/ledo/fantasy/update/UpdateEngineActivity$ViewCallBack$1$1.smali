.class Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1$1;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1$1;->this$2:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1$1;->this$2:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;)Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;

    move-result-object v0

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onVideoPlayEnd()V

    .line 1223
    return-void
.end method
