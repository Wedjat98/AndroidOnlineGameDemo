.class Lcom/ledo/fantasy/game/qiniumanager$2$1;
.super Ljava/lang/Object;
.source "qiniumanager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/qiniumanager$2;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/qiniumanager$2;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/qiniumanager$2;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/qiniumanager$2$1;->this$1:Lcom/ledo/fantasy/game/qiniumanager$2;

    iput-object p2, p0, Lcom/ledo/fantasy/game/qiniumanager$2$1;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/ledo/fantasy/game/qiniumanager$2$1;->val$statusCode:I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ledo/fantasy/game/qiniumanager$2$1;->val$key:Ljava/lang/String;

    iget v1, p0, Lcom/ledo/fantasy/game/qiniumanager$2$1;->val$statusCode:I

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->OnQiniuDownloadSeccess(Ljava/lang/String;I)V

    .line 91
    return-void
.end method
