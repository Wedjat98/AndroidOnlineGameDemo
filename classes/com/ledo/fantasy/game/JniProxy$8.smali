.class Lcom/ledo/fantasy/game/JniProxy$8;
.super Ljava/lang/Object;
.source "JniProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$st:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/ledo/fantasy/game/JniProxy$8;->val$st:I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Lcom/ledo/fantasy/game/JniProxy$8;->val$st:I

    # invokes: Lcom/ledo/fantasy/game/JniProxy;->nativeOnLogined(I)V
    invoke-static {v0}, Lcom/ledo/fantasy/game/JniProxy;->access$1(I)V

    .line 227
    return-void
.end method
