.class Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2$1;
.super Ljava/lang/Object;
.source "GameResLoadErrorHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2$1;->this$1:Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 41
    # invokes: Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->terminateProcess()V
    invoke-static {}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->access$0()V

    .line 42
    return-void
.end method
