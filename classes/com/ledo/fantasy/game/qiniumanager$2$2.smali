.class Lcom/ledo/fantasy/game/qiniumanager$2$2;
.super Ljava/lang/Object;
.source "qiniumanager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/qiniumanager$2;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/qiniumanager$2;

.field private final synthetic val$error:Ljava/lang/Throwable;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/qiniumanager$2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/qiniumanager$2$2;->this$1:Lcom/ledo/fantasy/game/qiniumanager$2;

    iput-object p2, p0, Lcom/ledo/fantasy/game/qiniumanager$2$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/ledo/fantasy/game/qiniumanager$2$2;->val$error:Ljava/lang/Throwable;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ledo/fantasy/game/qiniumanager$2$2;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/ledo/fantasy/game/qiniumanager$2$2;->val$error:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->OnQiniuDownloadFail(Ljava/lang/String;I)V

    .line 132
    return-void
.end method
