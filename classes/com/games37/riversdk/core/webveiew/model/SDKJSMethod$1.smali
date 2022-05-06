.class Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;
.super Ljava/lang/Object;
.source "SDKJSMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->callSDKMethodWithParameters(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->this$0:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->this$0:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
