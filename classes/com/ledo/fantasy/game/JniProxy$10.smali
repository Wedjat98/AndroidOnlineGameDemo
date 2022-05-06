.class Lcom/ledo/fantasy/game/JniProxy$10;
.super Ljava/lang/Object;
.source "JniProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/JniProxy;->onServerChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$paramsWithJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/JniProxy$10;->val$paramsWithJson:Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ledo/fantasy/game/JniProxy$10;->val$paramsWithJson:Ljava/lang/String;

    # invokes: Lcom/ledo/fantasy/game/JniProxy;->nativeOnServerChanged(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ledo/fantasy/game/JniProxy;->access$3(Ljava/lang/String;)V

    .line 339
    return-void
.end method
