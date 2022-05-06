.class Lcom/gm99/fzzj/GameAppImpl$2;
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
    iput-object p1, p0, Lcom/gm99/fzzj/GameAppImpl$2;->this$0:Lcom/gm99/fzzj/GameAppImpl;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl$2;->this$0:Lcom/gm99/fzzj/GameAppImpl;

    invoke-virtual {v0}, Lcom/gm99/fzzj/GameAppImpl;->CheckAndShowNetworkDialog()V

    .line 47
    return-void
.end method
