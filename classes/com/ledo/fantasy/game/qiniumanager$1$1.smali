.class Lcom/ledo/fantasy/game/qiniumanager$1$1;
.super Ljava/lang/Object;
.source "qiniumanager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/qiniumanager$1;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/qiniumanager$1;

.field private final synthetic val$info:Lcom/qiniu/android/http/ResponseInfo;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/qiniumanager$1;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/qiniumanager$1$1;->this$1:Lcom/ledo/fantasy/game/qiniumanager$1;

    iput-object p2, p0, Lcom/ledo/fantasy/game/qiniumanager$1$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/ledo/fantasy/game/qiniumanager$1$1;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ledo/fantasy/game/qiniumanager$1$1;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/ledo/fantasy/game/qiniumanager$1$1;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    invoke-virtual {v1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/GameJNILib;->OnQiniuUploadResult(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
