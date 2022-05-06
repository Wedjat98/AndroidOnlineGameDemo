.class Lcom/ledo/fantasy/update/UpdateProgressReciever$2;
.super Ljava/lang/Object;
.source "UpdateProgressReciever.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateProgressReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateProgressReciever;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateProgressReciever;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateProgressReciever$2;->this$0:Lcom/ledo/fantasy/update/UpdateProgressReciever;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 96
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->ShutDown()V

    .line 97
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 98
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 101
    return-void
.end method
