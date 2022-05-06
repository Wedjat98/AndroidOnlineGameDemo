.class Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$3;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$3;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1120
    const-string v0, "EVENT_UPDATEENGINEACTIVITY_DOWNLOADLARGE_CONFIRM"

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1121
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->nativeContinueResourceUpdate()V

    .line 1122
    return-void
.end method
