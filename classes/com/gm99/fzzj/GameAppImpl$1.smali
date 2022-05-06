.class Lcom/gm99/fzzj/GameAppImpl$1;
.super Ljava/lang/Object;
.source "GameAppImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gm99/fzzj/GameAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gm99/fzzj/GameAppImpl;


# direct methods
.method constructor <init>(Lcom/gm99/fzzj/GameAppImpl;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gm99/fzzj/GameAppImpl$1;->this$0:Lcom/gm99/fzzj/GameAppImpl;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 36
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 38
    return-void
.end method
