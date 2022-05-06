.class Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler$1;->this$0:Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler$1;->this$0:Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method
