.class Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->dispatchTimeChanged()V

    .line 343
    return-void
.end method