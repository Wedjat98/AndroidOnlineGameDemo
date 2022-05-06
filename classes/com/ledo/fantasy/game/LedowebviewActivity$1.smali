.class Lcom/ledo/fantasy/game/LedowebviewActivity$1;
.super Ljava/lang/Object;
.source "LedowebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/LedowebviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/LedowebviewActivity;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/LedowebviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/LedowebviewActivity$1;->this$0:Lcom/ledo/fantasy/game/LedowebviewActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 90
    # getter for: Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/ledo/fantasy/game/LedowebviewActivity;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    return-void
.end method
