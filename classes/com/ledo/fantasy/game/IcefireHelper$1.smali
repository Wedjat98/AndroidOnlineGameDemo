.class Lcom/ledo/fantasy/game/IcefireHelper$1;
.super Ljava/lang/Object;
.source "IcefireHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IcefireHelper;->setEditTextDialogResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireHelper$1;->val$pResult:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireHelper$1;->val$pResult:Ljava/lang/String;

    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->nativeSetEditTextDialogResult(Ljava/lang/String;)V

    .line 255
    return-void
.end method
