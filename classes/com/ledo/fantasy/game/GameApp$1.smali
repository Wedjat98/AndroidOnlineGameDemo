.class Lcom/ledo/fantasy/game/GameApp$1;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameApp;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameApp;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$1;->this$0:Lcom/ledo/fantasy/game/GameApp;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp$1;->this$0:Lcom/ledo/fantasy/game/GameApp;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 206
    const/16 v1, 0x1006

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 210
    return-void
.end method
