.class Lcom/ledo/fantasy/game/IcefireHandler$1;
.super Ljava/lang/Object;
.source "IcefireHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IcefireHandler;->showDialog(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/IcefireHandler;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/IcefireHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireHandler$1;->this$0:Lcom/ledo/fantasy/game/IcefireHandler;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    return-void
.end method
