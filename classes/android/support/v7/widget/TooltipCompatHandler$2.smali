.class Landroid/support/v7/widget/TooltipCompatHandler$2;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TooltipCompatHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/TooltipCompatHandler;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/TooltipCompatHandler;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler$2;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler$2;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    # invokes: Landroid/support/v7/widget/TooltipCompatHandler;->hide()V
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompatHandler;->access$100(Landroid/support/v7/widget/TooltipCompatHandler;)V

    .line 60
    return-void
.end method
