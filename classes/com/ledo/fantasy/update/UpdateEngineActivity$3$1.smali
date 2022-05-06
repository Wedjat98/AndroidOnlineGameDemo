.class Lcom/ledo/fantasy/update/UpdateEngineActivity$3$1;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$3;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$3;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$3;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity$3;)Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    # invokes: Lcom/ledo/fantasy/update/UpdateEngineActivity;->getGooglePlayStroeUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$17(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/SystemUIUtil;->openUrl(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 366
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 367
    return-void
.end method
