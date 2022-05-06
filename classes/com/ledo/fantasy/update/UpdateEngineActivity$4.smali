.class Lcom/ledo/fantasy/update/UpdateEngineActivity$4;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyUrlDownloadSuc(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 906
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadSucURLKey:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 907
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadSucURLKey:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 908
    .local v0, "strCurSucURLKey":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->OnDownloadURLSuc(Ljava/lang/String;I)V

    .line 909
    sget-object v1, Lcom/ledo/fantasy/update/UpdateEngineActivity;->s_stackStrDownLoadSucURLKey:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 911
    .end local v0    # "strCurSucURLKey":Ljava/lang/String;
    :cond_19
    return-void
.end method
